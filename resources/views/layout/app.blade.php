<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <noscript>This WebSite Can't WithOut JavaScript</noscript>
        <meta name="csrf-token" content="{{csrf_token()}}">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link rel="stylesheet" href="{{asset('css/fontawesome.css')}}">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        @yield('css')
        {!! SEO::generate() !!}
    </head>
    <body>
        @yield('main')
        <script>
            window.loginRoute = "{{ route('voyager.login') }}";
            window.deshbordRoute = "{{ route('voyager.dashboard') }}";
            localStorage.hasOwnProperty('themeColor') ? '' : localStorage.setItem('themeColor','white') ;
            window.hostURL = "{{route('homeurl')}}";
            window.homePortfolio = "{{route('api.home.portfolio')}}";
            window.blogPostPageApi = "{{route('api.home.blogpost')}}";
            window.blogCatlist = "{{route('api.blog.catlist')}}";
            window.blogTaglist = "{{route('api.blog.taglist')}}";
            window.webSiteLogoSrc = "{{str_replace('\\','/',setting('site.logo'))}}";
        </script>
        <script src="{{ mix('/js/app.js') }}"></script>
        @yield('js')
    </body>
</html>
