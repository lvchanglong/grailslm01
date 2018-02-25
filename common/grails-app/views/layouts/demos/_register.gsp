<a href="#" data-toggle="modal" data-target="#registerModal">
    注册
</a>

<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <g:form controller="guest" action="register" class="ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="registerModalLabel">用户注册</h3>
                </div>
                <div class="modal-body">
                    <g:textField name="username" value="" placeholder="账号" class="form-control" style="margin-bottom:5px;"/>
                    <g:textField name="password" value="" placeholder="密码" class="form-control" style="margin-bottom:5px;"/>
                    <g:textField name="nickname" value="" placeholder="昵称" class="form-control"/>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="确定" class="btn btn-lg btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>