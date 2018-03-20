<%@ page import="extension.Report;" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
        <style>
            .linedark {
                border-bottom: 1px solid darkred;
                width: 10%;
                float: left;
                margin-bottom: 15px;
            }
            .linelight {
                border-bottom: 1px solid lightgray;
                width: 90%;
                float: left;
                margin-bottom: 15px;
            }
            .mhead {
                text-align: left;
                font-size: 22px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <div class="row">
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.bgqy}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <table border="0" cellpadding="0" cellspacing="0" class="form_table wp99 f12 bc">
                        <tr>
                            <th colspan="2" class="form_th2 p5 tl h20 lh20 fb">
                                企业信用报告：
                            </th>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                报告企业
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <input name="bgqy" type="text" value="黑龙江四海通市政工程有限公司" id="bgqy" class="wp40 h20 lh20 text_Out pl3" onmouseover="this.className='text_Over wp40 h20 lh20 pl3'" onmouseout="this.className='text_Out wp40 h20 lh20 pl3'" readonly="true">
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator1" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                报告编号
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <input name="bgbh" type="text" value="jc20180189" readonly="readonly" id="bgbh" class="wp40 h20 lh20 text_Out pl3" onmouseover="this.className='text_Over wp40 h20 lh20 pl3'" onmouseout="this.className='text_Out wp40 h20 lh20 pl3'">
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator2" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                制作机构
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <input name="zzjg" type="text" value="辽宁久诚信用评估有限公司" id="zzjg" class="text_Out wp40 h20 lh20 pl3" onmouseover="this.className='text_Over wp40 h20 lh20 pl3'" onmouseout="this.className='text_Out wp40 h20 lh20 pl3'" readonly="true">
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator3" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                制作日期
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <input name="sCalendar1" type="text" value="2018-03-13" id="sCalendar1" disabled="disabled" class="wp40 h20 lh20 text_Out pl3" onmouseover="this.className='text_Over wp40 h20 lh20 pl3'" onmouseout="this.className='text_Out wp40 h20 lh20 pl3'" onfocus="" readonly="readonly"><button type="button" class="Zebra_DatePicker_Icon">Pick a date</button>
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator4" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                            </td>
                        </tr>

                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                评估师1
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <select name="ddlPgs1" onchange="javascript:setTimeout('__doPostBack(\'ddlPgs1\',\'\')', 0)" id="ddlPgs1" disabled="disabled">
                                    <option value="">==请您选择评估师1==</option>
                                    <option value="aa7be76c-cbfa-4832-a6aa-aa9bce3283f7">张景旭</option>
                                    <option value="e5c051b7-fe60-4a84-a9b1-582101d7b898">曲承英</option>
                                    <option value="08d76271-a82f-41a3-a6ab-0b971d962093">梁玉喆</option>
                                    <option value="dc3f77d3-8477-4504-9662-926370c443a8">邓立森</option>
                                    <option value="41bdaf04-e251-42c2-8256-d87a438a1423">吴刚</option>
                                    <option value="3742f127-fc1d-495c-a6a7-1af0cf697dab">金鑫</option>
                                    <option value="cc6f0d92-8173-4673-a701-138fec7d3530">夏金良</option>
                                    <option selected="selected" value="5ab980b1-f527-4b0a-9345-f6a3af88aa28">张国财</option>
                                    <option value="81d8bb1a-aa6d-434c-9194-b018eab8fd1e">宫百坤</option>

                                </select>
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator5" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                                联系方式：<input name="tbPgs1" type="text" value="024-23181588" readonly="readonly" id="tbPgs1" class="text_Out wp20 h20 lh20 pl3" onmouseover="this.className='text_Over wp20 h20 lh20 pl3'" onmouseout="this.className='text_Out wp20 h20 lh20 pl3'">
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                评估师2
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <select name="ddlPgs2" onchange="javascript:setTimeout('__doPostBack(\'ddlPgs2\',\'\')', 0)" id="ddlPgs2" disabled="disabled">
                                    <option value="">==请您选择评估师2==</option>
                                    <option value="aa7be76c-cbfa-4832-a6aa-aa9bce3283f7">张景旭</option>
                                    <option value="e5c051b7-fe60-4a84-a9b1-582101d7b898">曲承英</option>
                                    <option value="08d76271-a82f-41a3-a6ab-0b971d962093">梁玉喆</option>
                                    <option value="dc3f77d3-8477-4504-9662-926370c443a8">邓立森</option>
                                    <option selected="selected" value="41bdaf04-e251-42c2-8256-d87a438a1423">吴刚</option>
                                    <option value="3742f127-fc1d-495c-a6a7-1af0cf697dab">金鑫</option>
                                    <option value="cc6f0d92-8173-4673-a701-138fec7d3530">夏金良</option>
                                    <option value="5ab980b1-f527-4b0a-9345-f6a3af88aa28">张国财</option>
                                    <option value="81d8bb1a-aa6d-434c-9194-b018eab8fd1e">宫百坤</option>

                                </select>
                                <span style="color: #ff0000">*</span>
                                <span id="RequiredFieldValidator6" class="wp5 h30 lh15 tr f12 f_blue_two" style="color:Red;display:none;">必填</span>
                                联系方式：<input name="tbPgs2" type="text" value="024-23181588" readonly="readonly" id="tbPgs2" class="text_Out wp20 h20 lh20 pl3" onmouseover="this.className='text_Over wp20 h20 lh20 pl3'" onmouseout="this.className='text_Out wp20 h20 lh20 pl3'">
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                特定情况信用报告申请
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <span disabled="disabled"><input id="cbxTSQKXYBGSQ" type="checkbox" name="cbxTSQKXYBGSQ" disabled="disabled" onclick="javascript:setTimeout('__doPostBack(\'cbxTSQKXYBGSQ\',\'\')', 0)"></span>特定情况信用报告申请
                            </td>
                        </tr>
                        <tr>
                            <th class="form_th p5 tr h20 lh20 ">
                                申请说明
                            </th>
                            <td class="form_td p5 tl h20 lh20">
                                <textarea name="tbxSQSM" rows="8" cols="20" readonly="readonly" id="tbxSQSM" class="wp40"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <content tag="sidebarLeft">
                <g:render template="else/sidebarLeft"/>
            </content>

            <content tag="sidebarRight">
                <g:render template="/guest/index1/sidebarRight"/>
            </content>

            <content tag="header">
                <g:render template="/guest/index1/header"/>
            </content>

            <content tag="footer">
                <g:render template="/guest/index1/footer"/>
            </content>
        </g:applyLayout>
    </body>
</html>
