module.exports = function (grunt) {

    /* */
    require('load-grunt-tasks')(grunt);

    /* load grunt config */
    require('load-grunt-config')(grunt);

    /* measures the time each task takes */
    require('time-grunt')(grunt);

};
