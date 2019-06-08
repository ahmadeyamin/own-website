const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js').styles([
        'node_modules/vuetify/dist/vuetify.min.css',
        'node_modules/@glidejs/glide/dist/css/glide.core.min.css',
        'node_modules/@glidejs/glide/dist/css/glide.theme.min.css',
        'resources/css/customstyle.css',
    ], 'public/css/app.css').version();


    if (mix.inProduction()) {
        mix.version();
    }
