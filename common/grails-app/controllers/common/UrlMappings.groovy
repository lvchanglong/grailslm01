package common

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/admin"(controller: "guest", action: "index")
        "/"(controller: "guest", action: "index0")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
