(function( $, _, Backbone, observer ) {

    var util = require( './util' );

    /**
     * Conversation notification view.
     * @class
     */
    function Notification() {
        $( $.proxy( this.initialize, this ) );
    }

    Notification.prototype = {

        initialize: function() {
            this.$el = $( '.joms-js--notification-chat-list' ).add( '.joms-js--notification-chat-list-mobile' );
            this.$popover = $( '.joms-popover--toolbar-chat' );
            this.$counter = $( '.joms-js--notiflabel-chat' );

            observer.add_action( 'chat_conversation_render', this.render, 10, 1, this );
            observer.add_action( 'chat_set_notification_label', this.updateCounter, 10, 1, this );
            observer.add_action( 'chat_set_notification_label_seen', this.markItemAsRead, 10, 1, this );
            observer.add_action( 'chat_set_notification_label_unread', this.markItemAsUnread, 10, 1, this );
            observer.add_action( 'chat_move_notification_to_top', this.moveItemToTop, 10, 1, this );
            observer.add_action( 'chat_removemove_notification', this.removeItem, 10, 1, this );

            $( document ).on( 'click', '.joms-js-chat-notif', $.proxy( this.onItemClick, this ) );

            this.$popover.on('wheel', function(e) {
                var height = $(this).height();
                var scrollHeight = this.scrollHeight;
                var scrollTop = this.scrollTop;
                var delta = e.originalEvent.deltaY;
                var dir = delta > 0 ? 'down' : 'up'; 
                if((scrollTop === (scrollHeight - height) && dir === 'down')) {
                    e.preventDefault();
                }

                if (scrollTop === 0 && dir === 'up') {
                    e.preventDefault();
                }
            });
        },

        render: function( data ) {
            $('.joms-popover--toolbar-chat .joms-js--loading').hide();

            $('.joms-popover--toolbar-chat .joms-button--full').show();
            
            if (!Object.keys(data).length) {
                $('.joms-popover--toolbar-chat .joms-js--empty').show();
                return;
            }

            var baseURI = joms.getData( 'chat_base_uri' ),
                html = '',
                template;

            if ( ! ( template = this._renderTemplate ) ) {
                template = joms.getData( 'chat_template_notification_item' );
                template = this._renderTemplate = util.template( template );
            }

            data = $.extend( {}, data || {} );

            _.each( data, function( item ) {
                item.name = util.formatName( item.name );

                // Normalize avatar url.
                if ( item.thumb && ! item.thumb.match( /^https?:\/\//i ) ) {
                    item.thumb = baseURI + item.thumb;
                }

                html += template( item );
            }, this );

            $('.joms-popover--toolbar-chat').each( function(i, e) {
                $(e).children( '.joms-js--empty' ).hide();
                var btnfull = $(e).find('.joms-button--full');
                $(html).insertBefore(btnfull);
            });
        },

        updateCounter: function( newValue ) {
            var oldValue = +this.$counter.text();
            if ( +newValue !== oldValue ) {
                this.$counter.text( +newValue || '' );
            }
        },

        markItemAsRead: function( id ) {
            this.$popover.find( '.joms-js-chat-notif-' + id ).removeClass( 'unread' );
        },

        markItemAsUnread: function( id ) {
            this.$popover.find( '.joms-js-chat-notif-' + id ).addClass( 'unread' );
        },

        moveItemToTop: function( list ) {
            _.each( list, function( item ) {
                this.$popover.each(function() {
                    $( this ).prepend( $( this ).find( '.joms-js-chat-notif-' + item.chat_id ) );
                });
            }, this );
        },

        removeItem: function( id ) {
            this.$popover.find( '.joms-js-chat-notif-' + id ).remove();
        },

        onItemClick: function( e ) {
            var $item = $( e.currentTarget ),
                id = $item.data( 'chat-id' ),
                isChatView = joms.getData( 'is_chat_view' ),
                chatURI = joms.getData( 'chat_uri' ),
                $popover;

            e.preventDefault();
            e.stopPropagation();

            if ( isChatView ) {
                $popover = $( '.joms-popover--toolbar-chat' );
                $popover.hide();
                $popover.closest( '.joms-popup__wrapper' ).click();
                observer.do_action( 'chat_open_window_by_chat_id', id );
                observer.do_action( 'chat_sidebar_select', id );
                observer.do_action( 'chat_set_location_hash', id );
                return;
            }

            window.location = chatURI+ '#' + id;
        }

    };

    module.exports = Notification;

})( joms_libs.$, joms_libs._, joms_libs.Backbone, joms_observer );
