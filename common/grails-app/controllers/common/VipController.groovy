package common

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

/**
 * 会员-已登录状态
 */
class VipController {

    def userService
    def feedbackService

    def index() {

    }

    /**
     * 退出登录
     */
    def logout() {
        session.invalidate()
        render status: OK, text: "操作成功"
    }

    /**
     * 个人信息修改
     */
    def regenerate(String password, String repassword) {
        if(password != repassword) {
            render status: BAD_REQUEST, text: "密码不一致"
            return
        }
        try {
            def user = User.get(session.uid)
            if(password) {
                user.password = password.encodeAsMD5()
            }
            bindData(user, params, [exclude:["password"]])
            userService.save(user)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR
            return
        }
        render status: OK, text: "修改成功"
    }

    /**
     * 反馈及留言
     */
    def feedback(Feedback instance) {
        try {
            instance.username = User.get(session.uid).username
            instance.ip = CommonHelper.getRealIp(request)
            feedbackService.save(instance)
        } catch (ValidationException e) {
            render status: INTERNAL_SERVER_ERROR, text: "发送失败"
            return
        }
        render status: CREATED, text: "发送成功"
    }

}
