package common


class AuthInterceptor {

    AuthInterceptor() {
        matchAll().excludes(controller:"guest").excludes(action:"image").excludes(action:"download").excludes(uri:"/js/**")
    }

    boolean before() {
        if(!session.uid) {
            redirect(url:"/")
            return false
        }
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }

}
