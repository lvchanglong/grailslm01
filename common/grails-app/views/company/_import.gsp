<a href="#fakelink" class="btn btn-lg btn-info" data-toggle="modal" data-target="#importCompanyModal">
    <span class="glyphicon glyphicon-import"></span>&nbsp;批量导入
</a>
<div class="modal fade" id="importCompanyModal" tabindex="-1" role="dialog" aria-labelledby="importCompanyModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <g:form name="importCompanyForm" url="[controller:params.controller, action: 'importData']" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title" id="importCompanyModalTitle">批量导入</h3>
                </div>
                <div class="modal-body">
                    <fieldset class="modal-fieldset">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <ol style="list-style-type:none;padding-left:0;line-height:24px;;">
                                    <li>1.应选择<strong>excel</strong>文件（后缀名为<strong>xls</strong>或<strong>xlsx</strong>）</li>
                                    <li>2.最好<strong>在导入前</strong>将文件中<strong>所有单元格的格式</strong>设置为“<strong>文本类型</strong>”</li>
                                </ol>
                            </div>
                            <div class="col-sm-12">
                                <input type="file" id="file" name="file" class="form-control"/>
                            </div>
                            <div class="col-sm-12">
                                <span id="importCompanyInfo"></span>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="确定" class="btn btn-lg btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>

<script>
    jQuery("#importCompanyForm").ajaxForm({
        success: function (data) {
            jQuery("#importCompanyInfo").html(data);
        },
        error: function (data) {
            jQuery("#importCompanyInfo").html(data.responseText);
        }
    });
</script>