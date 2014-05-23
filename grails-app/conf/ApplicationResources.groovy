modules = {
//    application {
//        resource url:'js/application.js'
//    }

    // Define your skin module here - it must 'dependsOn' either bootstrap (ALA version) or bootstrap2 (unmodified) and core

    tepapa {
        dependsOn 'bootstrap', 'hubCore' // from ala-web-theme plugin
        resource url:[dir:'css/tepapa', file:'style.css']
        resource url:[dir:'css', file:'hub-additions.css']
    }

}