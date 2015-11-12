module.exports = {
    plugin_src: {
        files: [
            {
                expand: true,
                cwd: 'src/',
                src: ['**'],
                dest: 'dist/',
                filter: 'isFile'
            }
        ]
    },
    license: {
        files: [
            {
                expand: true,
                cwd: '.',
                src: ['LICENSE'],
                dest: 'dist/',
                filter: 'isFile'
            }
        ]
    },
    jquery: {
        files: [
            {
                expand: true,
                cwd: 'bower_components/jquery/dist/',
                src: ['**/*.min.*'],
                dest: 'dist/assets/jquery/',
                filter: 'isFile'
            }
        ]
    },
    jquery_legacy: {
        files: [
            {
                expand: true,
                cwd: 'bower_components/jquery-legacy/dist/',
                src: ['**/*.min.*'],
                dest: 'dist/assets/jquery-legacy/',
                filter: 'isFile'
            }
        ]
    }
};
