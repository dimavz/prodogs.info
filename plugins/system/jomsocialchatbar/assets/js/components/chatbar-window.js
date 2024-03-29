let $ = require( 'jquery' ),
    Vue = require( 'joms' ).Vue,
    ChatbarWindowSearch = require( './chatbar-window-search' ),
    ChatbarWindowInput = require( './chatbar-window-input' ),
    user_id = String( window.joms_my_id || '' ),
    settings = window.joms_plg_jomsocialchatbar || {},
    templates = settings.templates || {},
    moment = require( 'joms' ).moment;;

module.exports = Vue.component( 'chatbar-window', {
    template: templates.chatbar_window,

    components: {
        ChatbarWindowSearch: ChatbarWindowSearch,
        ChatbarWindowInput: ChatbarWindowInput,
    },

    props: [ 'chat' ],

    data: function() {
        let participants = JSON.parse( JSON.stringify( this.chat.users ) );
        return {
            setting: false,
            adding: false,
            loading: false,
            myId: user_id,
            participants: participants,
            scrollTop: 0,
            currentHeight: 0,
            initData: false,
            fetchDone: false,
            scrollPosition: 'bottom'
        };
    },

    mounted: function() {
        this.initializeData();
    },

    computed: {
        active : function() {
            return this.$store.state.chats.active == this.chat.id;
        },

        chatName: function () {
            let names = [],
                users = this.$store.state.users;
                
            this.chat.users.forEach(function (id) {
                if (users[id]) {
                    names.push(users[id].name);
                }
            });

            return this.formatName(names);
        },

        dgroups: function() {
            let chats = this.$store.state.chats.info,
                chatid = this.chat.id,
                messagesX,
                grouped = [],
                dateIndexPrev, 
                userIndexPrev;
            
            if ( chats[this.chat.id] ) {
                messagesX = this.$store.state.chats.messages.filter( function( item ) {
                    return +item.chat_id === +chatid;
                });

                for ( let i = 0; i < messagesX.length; i++) {
                    let message = messagesX[i],
                        date = new Date( message.created_at * 1000 ),
                        dateIndex = date.toJSON().slice( 0, 10 ).replace( /-/g, '' ),
                        userIndex = String( message.user_id ),
                        dateFormatted = this.formatDate( date.getTime() ),
                        timeFormatted = this.formatTime( date.getTime() ),
                        messages;

                    if ( message.action === 'seen' ) {
                        continue;
                    }

                    if ( dateIndex !== dateIndexPrev ) {
                        dateIndexPrev = dateIndex;
                        userIndexPrev = undefined;

                        grouped.push({
                            date: dateIndex,
                            dateFormatted: dateFormatted,
                            messages: []
                        });
                    }

                    messages = grouped[ grouped.length - 1 ].messages;
                    if ( message.action !== 'sent' ) {
                        userIndexPrev = undefined;
                        messages.push({
                            info: message.action,
                            messages: []
                        });
                    } else if ( userIndex !== userIndexPrev ) {
                        userIndexPrev = userIndex;
                        messages.push({
                            user: userIndex,
                            messages: []
                        });
                    }

                    messages = messages[ messages.length - 1 ].messages;
                    messages.push( _.extend({}, message, {
                        timeFormatted: timeFormatted
                    }) );

                }
            }

            return grouped;
        },

        oldestMsg: function() {
            let self = this,
                messages  = this.$store.state.chats.messages,
                ids, chatMsg, oldest;

            chatMsg = messages.filter( function( item ) {
                return +item.id && +item.chat_id === +self.chat.id;
            }); 

            ids = chatMsg.map( function( item ) {
                return +item.id;
            });

            if ( ids.length ) {
                oldest = ids.reduce( function( a, b) {
                    return Math.min( a, b);
                })
                return oldest;
            } else {
                return 0;
            }
        },

        seenBy: function() {
            let self = this;

            if (self.chat.seenBy && +joms.getData('chat_enablereadstatus')) {
                let users = self.$store.state.users;
                
                return self.chat.seenBy.filter( function( id ) {
                    return users[ id ] && +id != +self.myId;
                }).map( function( id ) {
                    return users[ id ].name;
                })

            } else {
                return [];
            }
        },

        seenUsers: function() {
            if ( this.seenBy.length ) {
                return this.seenBy.join( '<br>' );
            } else {
                return '';
            }
        },

        seenText: function() {
            return Joomla.JText._('PLG_JOMSOCIALCHATBAR_SEEN');
        }
    },

    beforeUpdate: function() {
        this.scrollHeightBeforeUpdate = this.$el.querySelector( '.joms-js-scrollable' ).scrollHeight;
    },

    updated: function () {
        let container = this.$el.querySelector('.joms-js-scrollable'),
            scrollHeight;
            
        if (!this.active) {
            this.setting = false;
        }
        
        if (this.initData) {
            container.scrollTop = container.scrollHeight;
            this.initData = false;
            return;
        } 

        if (this.scrollHeightBeforeUpdate != container.scrollHeight && this.scrollPosition === 'top') {
            scrollHeight = Math.abs( container.scrollHeight - this.scrollHeightBeforeUpdate );
            container.scrollTop = scrollHeight;
            this.scrollPosition = 'middle';
            return;
        } 

        if (this.scrollPosition === 'bottom') {
            container.scrollTop = container.scrollHeight;
            return;
        }
    },

    methods: {
        add: function() {
            this.setting = false;
            this.adding = true;
        },

        leave: function() {
            this.setting = false;
            if ( confirm( Joomla.JText._('PLG_JOMSOCIALCHATBAR_ARE_YOU_SURE_TO_LEAVE_THIS_CONVERSATION') ) ) {
                this.$store.dispatch( 'chats/leave', this.chat.id );
            }
        },

        toggle: function() {
            this.$store.dispatch( 'chats/toggle', this.chat.id );
            this.setActive(this.chat);
        },

        toggleSetting: function( status ) {
            if ( status === 'hide' ) {
                this.setting = false;
            } else {
                this.setting = !this.setting;
            }
        },

        close: function() {
            this.$store.dispatch( 'chats/close', this.chat.id );
        },

        initializeData: function( direction ) {
            let self = this,
                chatid = self.chat.id,
                payload = { id: this.chat.id, oldestMsg: this.oldestMsg };

            if (self.chat.initialized) {
                self.initData = true;
                return;
            }

            self.loading = true;

            self.$store.dispatch( 'chats/messages/fetch', payload ).then( function( data ) {
                self.loading = false;
                self.initData = true;
                self.$store.dispatch('chats/initialized', { id: +chatid});
                if ( data.seen.length ) {
                    data.seen.forEach( function( item ) {
                        self.$store.dispatch( 'chats/seenBy', { chatid: +item.chat_id, userid: +item.user_id } );
                    })
                }
            });
        },

        loadOlderMessages: function() {
            let self = this,
                chatid = self.chat.id,
                store = self.$store,
                payload = { id: self.chat.id, oldestMsg: self.oldestMsg };

            if ( self.loading ) {
                return;
            }

            self.loading = true;

            store.dispatch( 'chats/messages/fetch', payload ).then( function( data ) {
                self.loading = false;
                if ( data.messages.length === 0 ) {
                    self.fetchDone = true;
                }
            });
        },

        handleScroll: function (e) {
            let container = this.$el.querySelector('.joms-js-scrollable');

            if (!container.scrollTop) {
                this.scrollPosition = 'top';
            } else if (container.scrollTop === (container.scrollHeight - container.clientHeight)) {
                this.scrollPosition = 'bottom';
            } else {
                this.scrollPosition = 'middle';
            }

            if (this.scrollPosition === 'bottom' && this.active && !this.chat.seen) {
                this.$store.dispatch('chats/seen', +this.chat.id);
            }
        },

        handleWheel: function( e ) {
            let el = e.currentTarget,
                scrollTop = el.scrollTop,
                delta = e.deltaY,
                height;

            if ( scrollTop === 0 && delta < 0 ) {
                e.preventDefault();

                if ( this.fetchDone ) {
                    return false;
                }

                this.loadOlderMessages();
            } else {
                height = el.scrollHeight - el.clientHeight;
                if ( Math.abs( scrollTop - height ) <= 1 && delta > 0 ) {
                    e.preventDefault();
                    e.stopPropagation();
                }
            }
        },

        replaceLink: function( value ) {
            return value.replace( /((http|https):\/\/.*?[^\s]+)/g,
                '<a target="_blank" style="text-decoration:underline" href="$1">$1</a>' );
        },

        replaceNewline: function( value ){
            return value.replace( /\\n/g, '<br />' )
                .replace( /\r?\n/g, '<br />' );
        },

        getName: function( id ) {
            return this.$store.getters[ 'users/name' ]( id );
        },

        replaceEmoticon: function( value ) {
            let emoticons = {
                happy2    : /(:happy:|:\)\))/g,         // [ ':happy:', ':))' ]
                smiley2   : /(:smile:|:\)|:-\))/g,      // [ ':smile:', ':)', ':-)' ]
                tongue2   : /(:tongue:|:p|:P)/g,        // [ ':tongue:', ':p', ':P' ]
                wink2     : /(:wink:|;\))/g,            // [ ':wink:', ';)' ]
                cool2     : /(:cool:|B\))/g,            // [ ':cool:', 'B)' ]
                angry2    : /(:angry:|>:\(|&gt;:\()/g,  // [ ':angry:', '>:(', '&gt;:(' ]
                sad2      : /(:sad:|:\()/g,             // [ ':sad:', ':(' ]
                evil2     : /(:evil:|>:D|&gt;:D)/g,     // [ ':evil:', '>:D', '&gt;:D' ]
                grin2     : /(:grin:|:D)/g,             // [ ':grin:', ':D' ]
                shocked2  : /(:shocked:|:o|:O)/g,       // [ ':shocked:', ':o', ':O' ]
                confused2 : /(:confused:|:\?)/g,        // [ ':confused:', ':?' ]
                neutral2  : /(:neutral:|:\|)/g,         // [ ':neutral:', ':|' ]
                heart     : /(:love:|<3|&lt;3)/g        // [ ':love:', '<3', '&lt;3' ]
            };

            _.each( emoticons, function( regex, key ) {
                let replace = '<i class="joms-status-emoticon joms-icon-' + key + '"></i>';
                value = value.replace( regex, replace );
            });

            return value;
        },

        photoZoom: function( url ) {
            joms.api.photoZoom( url );
        },

        addUsers: function( userIds ) {
            let payload;

            this.adding = false;
            if ( userIds && userIds.length ) {
                payload = { chatid: this.chat.id, userids: userIds };
                this.$store.dispatch( 'chats/addUsers', payload );
            }
        },

        submit: function( data ) {
            let store = this.$store,
                chatid = this.chat.id;

            this.scrollPosition = 'bottom';

            store.dispatch( 'chats/messages/submit', {
                id: chatid,
                data: data
            }).then( function() {
                store.dispatch( 'chats/setTopSidebar', chatid );
            });

            store.dispatch( 'chats/clearSeen', { chatid: chatid } );
        },

        mute: function( state ) {
            let action = state ? 'chats/mute' : 'chats/unmute';
            this.$store.dispatch( action, { id: this.chat.id });
        },

        showTooltip: function( e ) {
            let el = $( e.currentTarget ),
                tooltip = el.attr( 'data-tooltip' ),
                position = el.offset();

            if ( ! this.$tooltip ) {
                this.$tooltip = $('<div class="joms-tooltip joms-js-chat-tooltip" />')
                    .appendTo( document.body );
            }

            this.$tooltip.html( tooltip ).show();
            
            if (el.hasClass('joms-chat__messages-seen_status')) {
                this.$tooltip.addClass('joms_chat__seen-tooltip').css({
                    left: position.left,
                    top: position.top - 5,
                    transform: 'translateY(-100%)'
                });
            } else {
                this.$tooltip.removeClass('joms_chat__seen-tooltip').css({
                    left: position.left - this.$tooltip.outerWidth() - 10,
                    top: position.top + ( el.outerHeight() / 2 ),
                    transform: 'translateY(-50%)'
                });
            }

        },

        hideTooltip: function( e ) {
            if ( this.$tooltip ) {
                this.$tooltip.hide();
            }
        },

        setActive: function( chat ) {
            this.$store.dispatch( 'chats/setActiveWindow', +chat.id );
            if ( +chat.seen === 0 && this.scrollPosition === 'bottom' ) {
                this.$store.dispatch( 'chats/seen', +chat.id );
            }
        },

        formatDate( timestamp ) {
            let now = moment(),
                date = moment( timestamp ),
                format = 'D MMM';

            if ( now.year() !== date.year() ) {
                format = 'D/MMM/YY';
            }

            return date.format( format );
        },

        formatTime( timestamp ) {
            let time = moment( timestamp ),
                format = joms.getData( 'chat_time_format' ) || 'g:i A';

            // PHP-to-Moment time format conversion.
            format = format
                .replace( /[GH]/g, 'H' )
                .replace( /[gh]/g, 'h' )
                .replace( /i/ig, 'mm' )
                .replace( /s/ig, 'ss' );

            return this.formatDate( timestamp ) + ' ' + time.format( format );
        },

        formatName: function (names) {
            if ( ! _.isArray( names ) ) {
                names = [ names ];
            }

            if ( names.length === 1 ) {
                names = names[0];
            } else if ( names.length > 1 ) {
                names = _.map( names, function( str, span ) {
                    // Remove badge on group conversations.
                    if ( str.indexOf( '<' ) >= 0 ) {
                        span = document.createElement( 'span' );
                        span.innerHTML = str;
                        str = span.innerText;
                    }

                    str = str.split( ' ' );
                    return str[0];
                });
                names = names.sort();
                names = names.join( ', ' );
                names = names.replace( /,\s([^\s]*)$/, ' and $1' );
            } else {
                names = '';
            }

            return names;
        }

    }
});
