module.exports = function( grunt ) {
    grunt.initConfig({
        pkg: grunt.file.readJSON( 'package.json' ),
        sass: {
            dist: {
                options: {
                    check: true,
                    style: compressed,
                },
                files: {
                    'wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/theme.css': 'wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Scss/Theme/theme.scss'
                }
            }
        },
        watch: {
            styles: {
                files: ['wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Scss/Theme/theme.scss'],
                tasks: ['sass'],
                options: {
                    spawn: false
                }
            }
        },
        concat_css: {
            options: {},
            all: {
                src: ['wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/*.css', '!wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/main.css'],
                dest: 'wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/main.css'
            }
        },
        cssmin: {
            options: {},
            target: {
                files: [{
                    expand: true,
                    cwd: 'wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/', //Directory to get files from
                    src: ['*.css', '!*.min.css'],
                    dest: 'wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Css/', //Directory to put min.css files in
                    ext: '.min.css'
                }]
            }
        }
    });

    grunt.loadNpmTasks( 'grunt-contrib-sass' );
    grunt.loadNpmTasks( 'grunt-contrib-watch' );
    grunt.loadNpmTasks( 'grunt-concat-css' );
    grunt.loadNpmTasks( 'grunt-contrib-cssmin' );

    grunt.registerTask( 'default', ['sass', 'concat_css', 'cssmin']);
}

wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/Scss/Theme/