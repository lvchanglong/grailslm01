<a href="#fakelink" data-toggle="modal" data-target="#showSlideModal${instance.id}">
    <span class="glyphicon glyphicon-eye-open" data-toggle="tooltip" title="查看"></span>
</a>

<div class="modal fade" id="showSlideModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="showSlideModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="showSlideModal${instance.id}Title">信息查看</h3>
            </div>
            <div class="modal-body">
                <f:display bean="instance" />
            </div>
        </div>
    </div>
</div>