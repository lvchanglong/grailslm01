package extension

import common.User


class ReportInterceptor {

    boolean before() {
        if(!session.uid) {
            redirect(url:"/")
            return false
        }

        def user = User.get(session.uid)
        if(user.isAdmin()) {
            return true
        }

        if(params.id) {
            if(user.id != Report.get(params.id).createrId) {
                redirect(url:"/")
                return false
            }
        }
        true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
