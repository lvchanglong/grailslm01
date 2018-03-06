// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-ui-1.12.1.Autocomplete/jquery-ui.min.js
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {

        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });

        $(document).ready( function() {

            $(".ajaxForm").ajaxForm({
                beforeSerialize: function ($form, options) {
                    /*为jquery.form添加CKEDITOR支持*/
                    for(instance in CKEDITOR.instances) {
                        CKEDITOR.instances[instance].updateElement();
                    }
                    return true;
                },
                success: function (data) {
                    Messenger().post({
                        message: "操作成功",
                        hideAfter:2,
                        showCloseButton: true
                    });
                    window.location.reload();
                },
                error: function (data) {
                    Messenger().post({
                        message: "操作失败",
                        hideAfter:2,
                        showCloseButton: true
                    });
                }
            });

            $('input, textarea').placeholder();

        }); //ready end

    })(jQuery);
}

//----------------------------------------------------------------------------------------------------------------------

/**
 * 获得flash版本号
 * @returns {Number}
 */
function getFlashVersion() {
    var flashver = NaN;
    if (window.ActiveXObject) { //windows
        var swf = null;
        try {
            swf = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
        } catch (e) {
            return flashver;
        }
        if (swf) {
            var verx = swf.GetVariable("$version").split(' ')[1].split(',');
            flashver = Number(verx[0] + '.' + verx[1]);
        }
    } else { //ohter
        if (navigator.plugins && navigator.plugins.length > 0) {
            var swf = navigator.plugins['Shockwave Flash'];
            if (swf) {
                var arr = swf.description.split(' ');
                for (var i =0, len = arr.length; i< len; i++) {
                    var ver =  Number(arr[i]);
                    if (!isNaN(ver)) {
                        flashver = ver;
                        break;
                    }
                }
            }
        }
    }
    return flashver;
}

/**
 * 分组
 * @param array
 * @param f
 * @returns {Array}
 */
function groupBy(array, f) {
    var groups = {};
    array.forEach(function (o) {
        var group = JSON.stringify( f(o));
        groups[group] = groups[group] || [];
        groups[group].push(o);
    });
    return Object.keys(groups).map(function (group) {
        return groups[group];
    })
}