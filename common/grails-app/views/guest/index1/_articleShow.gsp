<a href="#fakelink" data-toggle="modal" data-target="#showArticleModal${instance.id}" class="line-ellipsis">
    <span class="glyphicon glyphicon-menu-right"></span>&nbsp;${instance.title}
</a>

<div class="modal fade" id="showArticleModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="showArticleModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="showArticleModal${instance.id}Title">信息查看</h3>
            </div>
            <div class="modal-body">
                <h1 style="text-align:center;font-size:20px;font-weight:bold;">${instance.title}</h1>
                <p>
                    ${instance.content}
                </p>
                <p style="text-align:right;color:#848383;font-size:12px;">
                    发布时间：<g:formatDate format="yyyy-MM-dd hh:mm:ss" date="${instance.dateCreated}"/>
                </p>
            </div>
        </div>
    </div>
</div>