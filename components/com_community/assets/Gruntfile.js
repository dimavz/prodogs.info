module.exports = function( grunt ) {

    // Load tasks.
    require( 'matchdep' ).filterDev( [ 'grunt-*' ] ).forEach( grunt.loadNpmTasks );

    // Unobtrusive JSON reader.
    function readJSON( filepath ) {
        var data = {};
        try {
            data = grunt.file.readJSON( filepath );
        } catch (e) {}
        return data;
    }

    var vendorDir = 'vendors/',
        sourceDir = 'source/',
        distDir = 'release/',
        tempDir = '_temp/',
        docDir = 'jsdoc/',
        hintOptions = readJSON('.jshintrc');

    grunt.initConfig({
    	watch: {
    		chat: {
    			files: ['<%= path.source %>js/chat/*.js'],
    			tasks: ['browserify:devchat']
    		}
    	},
        path: {
            vendor: vendorDir,
            source: sourceDir,
            dist: distDir,
            temp: tempDir,
            doc: docDir
        },
        browserify: {
            chat: {
                files: {
                    '<%= path.source %>js/chat/dist/bundle.js': [ '<%= path.source %>js/chat/chat.js' ]
                }
            },
            devchat: {
                files: {
                    '<%= path.source %>js/chat/dist/bundle.min.js': [ '<%= path.source %>js/chat/chat.js' ]
                }
            }
        },
        concat: {
            loader: {
                src: [
                    '<%= path.source %>js/loader.preinit.js',
                    '<%= path.vendor %>lab.min.js',
                    '<%= path.source %>js/loader.js'
                ],
                dest: '<%= path.temp %>js/loader.js'
            },
            legacy: {
                src: [
                    'release_32/js/start.frag',
                    'release_32/js/templates/jst.js',
                    'release_32/js/patch.js',
                    'release_32/js/bundle.src.js',
                    'release_32/js/end.frag'
                ],
                dest: 'release_32/js/bundle.js'
            }
        },
        jshint: {
            scripts: {
                src: [
                    'Gruntfile.js',
                    '<%= path.source %>js/**/*.js'
                ],
                options: hintOptions
            }
        },
        requirejs: {
            scripts: {
                options: {
                    baseUrl: sourceDir + 'js/',
                    mainConfigFile: sourceDir + 'js/bundle.js',
                    name: '../../vendors/almond',
                    include: [ 'bundle' ],
                    wrap: true,
                    out: tempDir + 'js/bundle.js',
                    optimize: 'none',
                    preserveLicenseComments: false
                }
            },
            stylesheets: {
                options: {
                    cssIn: sourceDir + 'css/override.css',
                    out: tempDir + 'css/override.css',
                    optimizeCss: 'standard'
                }
            }
        },
        replace: {
            release: {
                src: ['<%= path.temp %>js/*'],
                overwrite: true,
                replacements: [{
                    from: /(^|\n).*@@release@@(.*)@@.*(?=\n|$)/g,
                    to: '$1$2'
                }]
            }
        },
        rsync: {
            dist: {
                resources: [{
                    from: tempDir,
                    to: distDir
                }]
            }
        },
        uglify: {
            app: {
                files: {
                    '<%= path.temp %>js/bundle.js': [ '<%= path.temp %>js/bundle.js' ],
                    '<%= path.temp %>js/loader.js': [ '<%= path.temp %>js/loader.js' ],
                    'release_32/js/bundle.js': [ 'release_32/js/bundle.js' ],
                },
                options: {
                    preserveComments: false,
                    report: 'gzip'
                }
            },
            chat: {
                files: {
                    '<%= path.source %>js/chat/dist/bundle.min.js' : [ '<%= path.source %>js/chat/dist/bundle.js' ]
                },
                options: {
                    report: 'none',
                    sourceMap: true
                }
            },
            legacy: {
                files: {
                    'script-1.2.min.js': [ 'script-1.2.js' ]
                },
                options: {
                    preserveComments: 'some',
                    report: 'gzip'
                }
            }
        }
    });
    
    // Regirter grunt tasks.
    grunt.registerTask( 'build-chat', [ 'browserify:chat', 'uglify:chat' ]);
    grunt.registerTask( 'dev-chat', [ 'watch:chat']);
    
    grunt.registerTask( 'build', [
        'requirejs',
        'concat',
        'replace',
        'uglify:app',
        'rsync'
    ]);

    grunt.registerTask( 'compress-legacy', [
        'uglify:legacy'
    ]);

    // Custom tasks.
    // -------------------------------------------------------------------------

    // Synchronize files.
    grunt.registerMultiTask( 'rsync', function() {
        var exec = require('child_process').exec,
            done = this.async(),
            res = this.data.resources,
            cmd = '';

        if ( res && res.length ) {
            for ( var i = 0; i < res.length; i++ ) {
                cmd += 'rsync -racvi ' + res[ i ].from + ' ' + res[ i ].to ;
            }
        }

        cmd || done();
        cmd && exec( cmd, function( err, stdout, stderr ) {
            err && grunt.fail.fatal( 'Problem with rsync: ' + err + ' ' + stderr );
            grunt.log.writeln( stdout );
            done();
        });
    });

};
