<a href="#fakelink" data-toggle="modal" data-target="#downloadMimeFileModal${instance.id}">
    <span class="glyphicon glyphicon-download" data-toggle="tooltip" title="下载"></span>
</a>
<div class="modal fade" id="downloadMimeFileModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="downloadMimeFileModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="downloadMimeFileModal${instance.id}Title">文件下载...</h3>
            </div>
            <g:if test="${instance.isDir()}">
                <div class="modal-body">
                    <div style="margin-top:5px;margin-bottom:30px;">
                        云盘地址：${instance.cloud?:"暂无"}
                    </div>
                </div>
            </g:if>
            <g:else>
                <div class="modal-body">
                    <div style="margin-top:5px;">
                        云盘地址：${instance.cloud?:"暂无"}
                    </div>
                    <g:if test="${instance.data}">
                        <div style="margin-top:10px;">
                            HTML：${g.link([controller:params.controller, action:"download", id:instance.id, target:"_blank"], "下载").encodeAsHTML()}
                        </div>
                    </g:if>
                </div>
                <div class="modal-footer">
                    <g:if test="${instance.data}">
                        <g:link controller="${params.controller}" action="download" id="${instance.id}" target="_blank" class="btn btn-lg btn-primary">
                            开始下载
                        </g:link>
                    </g:if>
                    <g:else>
                        <a href="#fakelink" class="btn btn-lg btn-primary disabled">
                            无法下载
                        </a>
                    </g:else>
                </div>
            </g:else>
        </div>
    </div>
</div>

