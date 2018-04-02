<%@ page import="common.CommonHelper; extension.ReportInfo; extension.Report;" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="offset" value="${params.offset?:0}"/>
    </head>
    <body>
        <g:applyLayout name="/bases/LeftCenterRight">
            <div class="row">
                <g:if test="${report.scyj}">
                    <div class="col-md-12">
                        <p class="bg-info" style="padding:15px;">
                            审查意见：${report.scyj}
                        </p>
                    </div>
                </g:if>
                <div class="col-md-12">
                    <div class="mhead">${reportInfo.qymc}</div>
                    <div class="linedark"></div>
                    <div class="linelight"></div>
                </div>
                <div class="col-md-12">
                    <g:form name="reportForm" controller="report" action="update" id="${report.id}" class="ajaxForm">
                        <table border="0" cellpadding="0" cellspacing="0" class="table table-bordered table-condensed">
                            <tr>
                                <td align="center" colspan="7" class="info">
                                    <span style="font-size: 14px; font-weight: bold;">现金流量表（单位：人民币元）</span>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <strong>年份</strong>&nbsp;<span class="required-indicator">*</span>
                                    <g:set var="year" value="${CommonHelper.getNian()}"/>
                                </td>
                                <td colspan="2">
                                    <g:textField name="info.xjllb.nf3" value="${reportInfo.xjllb?.nf3?:(reportInfo.nf3?:"${year - 3}")}" class="form-control" placeholder="如：2015"/>
                                </td>
                                <td>
                                    <g:textField name="info.xjllb.nf2" value="${reportInfo.xjllb?.nf2?:(reportInfo.nf2?:"${year - 2}")}" class="form-control" placeholder="如：2016"/>
                                </td>
                                <td>
                                    <g:textField name="info.xjllb.nf1" value="${reportInfo.xjllb?.nf1?:(reportInfo.nf1?:"${year - 1}")}" class="form-control" placeholder="如：2017"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    期初</td>
                                <td>
                                    期末</td>
                                <td>
                                    期末</td>
                                <td>
                                    期末</td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>一、经营活动产生的现金流量</strong>
                                </td>
                                <td colspan="4">
                                    <hr/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    销售商品、提供劳务收到的现金
                                </td>
                                <td class="jyhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.xssptglwsddxj3Begin" value="${reportInfo.xjllb?.xssptglwsddxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.xssptglwsddxj3End" value="${reportInfo.xjllb?.xssptglwsddxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.xssptglwsddxj2End" value="${reportInfo.xjllb?.xssptglwsddxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.xssptglwsddxj1End" value="${reportInfo.xjllb?.xssptglwsddxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    收到的税费返还
                                </td>
                                <td class="jyhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.sddsffh3Begin" value="${reportInfo.xjllb?.sddsffh3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.sddsffh3End" value="${reportInfo.xjllb?.sddsffh3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.sddsffh2End" value="${reportInfo.xjllb?.sddsffh2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.sddsffh1End" value="${reportInfo.xjllb?.sddsffh1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    收到其他与经营活动有关的现金
                                </td>
                                <td class="jyhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.sdqtyjyhdygdxj3Begin" value="${reportInfo.xjllb?.sdqtyjyhdygdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.sdqtyjyhdygdxj3End" value="${reportInfo.xjllb?.sdqtyjyhdygdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.sdqtyjyhdygdxj2End" value="${reportInfo.xjllb?.sdqtyjyhdygdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.sdqtyjyhdygdxj1End" value="${reportInfo.xjllb?.sdqtyjyhdygdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>经营活动现金流入小计</strong>
                                </td>
                                <td class="jyhdxjlrxj3-sum jyhdcsdxjllje3 plus">
                                    <g:textField name="info.xjllb.jyhdxjlrxj3Begin" value="${reportInfo.xjllb?.jyhdxjlrxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlrxj4-sum jyhdcsdxjllje4 plus">
                                    <g:textField name="info.xjllb.jyhdxjlrxj3End" value="${reportInfo.xjllb?.jyhdxjlrxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlrxj2-sum jyhdcsdxjllje2 plus">
                                    <g:textField name="info.xjllb.jyhdxjlrxj2End" value="${reportInfo.xjllb?.jyhdxjlrxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlrxj1-sum jyhdcsdxjllje1 plus">
                                    <g:textField name="info.xjllb.jyhdxjlrxj1End" value="${reportInfo.xjllb?.jyhdxjlrxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    购买商品、接受劳务支付的现金
                                </td>
                                <td class="jyhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.gmspjslwzfdxj3Begin" value="${reportInfo.xjllb?.gmspjslwzfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.gmspjslwzfdxj3End" value="${reportInfo.xjllb?.gmspjslwzfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.gmspjslwzfdxj2End" value="${reportInfo.xjllb?.gmspjslwzfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.gmspjslwzfdxj1End" value="${reportInfo.xjllb?.gmspjslwzfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    支付经职工以及为职工支付的现金
                                </td>
                                <td class="jyhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.zfgzgyjwzgzfdxj3Begin" value="${reportInfo.xjllb?.zfgzgyjwzgzfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.zfgzgyjwzgzfdxj3End" value="${reportInfo.xjllb?.zfgzgyjwzgzfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.zfgzgyjwzgzfdxj2End" value="${reportInfo.xjllb?.zfgzgyjwzgzfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.zfgzgyjwzgzfdxj1End" value="${reportInfo.xjllb?.zfgzgyjwzgzfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    支付的各项税费
                                </td>
                                <td class="jyhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.zfdgxsf3Begin" value="${reportInfo.xjllb?.zfdgxsf3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.zfdgxsf3End" value="${reportInfo.xjllb?.zfdgxsf3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.zfdgxsf2End" value="${reportInfo.xjllb?.zfdgxsf2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.zfdgxsf1End" value="${reportInfo.xjllb?.zfdgxsf1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    支付其他与经营活动有关的现金
                                </td>
                                <td class="jyhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.zfqtyjyhdygdxj3Begin" value="${reportInfo.xjllb?.zfqtyjyhdygdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.zfqtyjyhdygdxj3End" value="${reportInfo.xjllb?.zfqtyjyhdygdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.zfqtyjyhdygdxj2End" value="${reportInfo.xjllb?.zfqtyjyhdygdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jyhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.zfqtyjyhdygdxj1End" value="${reportInfo.xjllb?.zfqtyjyhdygdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>经营活动现金流出小计</strong>
                                </td>
                                <td class="jyhdxjlcxj3-sum jyhdcsdxjllje3 minus">
                                    <g:textField name="info.xjllb.jyhdxjlcxj3Begin" value="${reportInfo.xjllb?.jyhdxjlcxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlcxj4-sum jyhdcsdxjllje4 minus">
                                    <g:textField name="info.xjllb.jyhdxjlcxj3End" value="${reportInfo.xjllb?.jyhdxjlcxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlcxj2-sum jyhdcsdxjllje2 minus">
                                    <g:textField name="info.xjllb.jyhdxjlcxj2End" value="${reportInfo.xjllb?.jyhdxjlcxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdxjlcxj1-sum jyhdcsdxjllje1 minus">
                                    <g:textField name="info.xjllb.jyhdxjlcxj1End" value="${reportInfo.xjllb?.jyhdxjlcxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>经营活动产生的现金流量净额</strong>
                                </td>
                                <td class="jyhdcsdxjllje3-sum xjjxjdjwjzje3 plus">
                                    <g:textField name="info.xjllb.jyhdcsdxjllje3Begin" value="${reportInfo.xjllb?.jyhdcsdxjllje3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdcsdxjllje4-sum xjjxjdjwjzje4 plus">
                                    <g:textField name="info.xjllb.jyhdcsdxjllje3End" value="${reportInfo.xjllb?.jyhdcsdxjllje3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdcsdxjllje2-sum xjjxjdjwjzje2 plus">
                                    <g:textField name="info.xjllb.jyhdcsdxjllje2End" value="${reportInfo.xjllb?.jyhdcsdxjllje2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jyhdcsdxjllje1-sum xjjxjdjwjzje1 plus">
                                    <g:textField name="info.xjllb.jyhdcsdxjllje1End" value="${reportInfo.xjllb?.jyhdcsdxjllje1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>二、投资活动产生的现金流量</strong>
                                </td>
                                <td colspan="4">
                                    <hr/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    收回投资收到的现金
                                </td>
                                <td class="tzhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.shtzsddxj3Begin" value="${reportInfo.xjllb?.shtzsddxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.shtzsddxj3End" value="${reportInfo.xjllb?.shtzsddxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.shtzsddxj2End" value="${reportInfo.xjllb?.shtzsddxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.shtzsddxj1End" value="${reportInfo.xjllb?.shtzsddxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    取得投资收益收到的现金
                                </td>
                                <td class="tzhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.qdtzsysddxj3Begin" value="${reportInfo.xjllb?.qdtzsysddxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.qdtzsysddxj3End" value="${reportInfo.xjllb?.qdtzsysddxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.qdtzsysddxj2End" value="${reportInfo.xjllb?.qdtzsysddxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.qdtzsysddxj1End" value="${reportInfo.xjllb?.qdtzsysddxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    处置固定资产、无形资产和其他长期资产收回的现金净额
                                </td>
                                <td class="tzhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.czgdzcwxzchqtcqzcshdxjje3Begin" value="${reportInfo.xjllb?.czgdzcwxzchqtcqzcshdxjje3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.czgdzcwxzchqtcqzcshdxjje3End" value="${reportInfo.xjllb?.czgdzcwxzchqtcqzcshdxjje3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.czgdzcwxzchqtcqzcshdxjje2End" value="${reportInfo.xjllb?.czgdzcwxzchqtcqzcshdxjje2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.czgdzcwxzchqtcqzcshdxjje1End" value="${reportInfo.xjllb?.czgdzcwxzchqtcqzcshdxjje1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    处置子公司及其他营业单位收到的现金净额
                                </td>
                                <td class="tzhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.czzgsjqtyydwsddxjje3Begin" value="${reportInfo.xjllb?.czzgsjqtyydwsddxjje3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.czzgsjqtyydwsddxjje3End" value="${reportInfo.xjllb?.czzgsjqtyydwsddxjje3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.czzgsjqtyydwsddxjje2End" value="${reportInfo.xjllb?.czzgsjqtyydwsddxjje2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.czzgsjqtyydwsddxjje1End" value="${reportInfo.xjllb?.czzgsjqtyydwsddxjje1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    收到其他与投资活动有关的现金
                                </td>
                                <td class="tzhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.sdqtytzhdygdxj3Begin" value="${reportInfo.xjllb?.sdqtytzhdygdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.sdqtytzhdygdxj3End" value="${reportInfo.xjllb?.sdqtytzhdygdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.sdqtytzhdygdxj2End" value="${reportInfo.xjllb?.sdqtytzhdygdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.sdqtytzhdygdxj1End" value="${reportInfo.xjllb?.sdqtytzhdygdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>投资活动现金流入小计</strong>
                                </td>
                                <td class="tzhdxjlrxj3-sum tzhdcsdxjllje3 plus">
                                    <g:textField name="info.xjllb.tzhdxjlrxj3Begin" value="${reportInfo.xjllb?.tzhdxjlrxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlrxj4-sum tzhdcsdxjllje4 plus">
                                    <g:textField name="info.xjllb.tzhdxjlrxj3End" value="${reportInfo.xjllb?.tzhdxjlrxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlrxj2-sum tzhdcsdxjllje2 plus">
                                    <g:textField name="info.xjllb.tzhdxjlrxj2End" value="${reportInfo.xjllb?.tzhdxjlrxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlrxj1-sum tzhdcsdxjllje1 plus">
                                    <g:textField name="info.xjllb.tzhdxjlrxj1End" value="${reportInfo.xjllb?.tzhdxjlrxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    购建固定资产、无形资产和其他长期资产支付的现金
                                </td>
                                <td class="tzhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.gjgdzcwxzchqtcqzczfdxj3Begin" value="${reportInfo.xjllb?.gjgdzcwxzchqtcqzczfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.gjgdzcwxzchqtcqzczfdxj3End" value="${reportInfo.xjllb?.gjgdzcwxzchqtcqzczfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.gjgdzcwxzchqtcqzczfdxj2End" value="${reportInfo.xjllb?.gjgdzcwxzchqtcqzczfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.gjgdzcwxzchqtcqzczfdxj1End" value="${reportInfo.xjllb?.gjgdzcwxzchqtcqzczfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    投资支付的现金
                                </td>
                                <td class="tzhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.tzzfdxj3Begin" value="${reportInfo.xjllb?.tzzfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.tzzfdxj3End" value="${reportInfo.xjllb?.tzzfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.tzzfdxj2End" value="${reportInfo.xjllb?.tzzfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.tzzfdxj1End" value="${reportInfo.xjllb?.tzzfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    取得子公司及其他营业单位支付的现金净额
                                </td>
                                <td class="tzhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.qdzgsjqtyydwzfdxjje3Begin" value="${reportInfo.xjllb?.qdzgsjqtyydwzfdxjje3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.qdzgsjqtyydwzfdxjje3End" value="${reportInfo.xjllb?.qdzgsjqtyydwzfdxjje3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.qdzgsjqtyydwzfdxjje2End" value="${reportInfo.xjllb?.qdzgsjqtyydwzfdxjje2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.qdzgsjqtyydwzfdxjje1End" value="${reportInfo.xjllb?.qdzgsjqtyydwzfdxjje1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    支付其他与投资活动有关的现金
                                </td>
                                <td class="tzhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.gdzcjz3Begin" value="${reportInfo.xjllb?.gdzcjz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.gdzcjz3End" value="${reportInfo.xjllb?.gdzcjz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.gdzcjz2End" value="${reportInfo.xjllb?.gdzcjz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="tzhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.gdzcjz1End" value="${reportInfo.xjllb?.gdzcjz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>投资活动现金流出小计</strong>
                                </td>
                                <td class="tzhdxjlcxj3-sum tzhdcsdxjllje3 minus">
                                    <g:textField name="info.xjllb.tzhdxjlcxj3Begin" value="${reportInfo.xjllb?.tzhdxjlcxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlcxj4-sum tzhdcsdxjllje4 minus">
                                    <g:textField name="info.xjllb.tzhdxjlcxj3End" value="${reportInfo.xjllb?.tzhdxjlcxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlcxj2-sum tzhdcsdxjllje2 minus">
                                    <g:textField name="info.xjllb.tzhdxjlcxj2End" value="${reportInfo.xjllb?.tzhdxjlcxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdxjlcxj1-sum tzhdcsdxjllje1 minus">
                                    <g:textField name="info.xjllb.tzhdxjlcxj1End" value="${reportInfo.xjllb?.tzhdxjlcxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>投资活动产生的现金流量净额</strong>
                                </td>
                                <td class="tzhdcsdxjllje3-sum xjjxjdjwjzje3 plus">
                                    <g:textField name="info.xjllb.tzhdcsdxjllje3Begin" value="${reportInfo.xjllb?.tzhdcsdxjllje3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdcsdxjllje4-sum xjjxjdjwjzje4 plus">
                                    <g:textField name="info.xjllb.tzhdcsdxjllje3End" value="${reportInfo.xjllb?.tzhdcsdxjllje3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdcsdxjllje2-sum xjjxjdjwjzje2 plus">
                                    <g:textField name="info.xjllb.tzhdcsdxjllje2End" value="${reportInfo.xjllb?.tzhdcsdxjllje2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="tzhdcsdxjllje1-sum xjjxjdjwjzje1 plus">
                                    <g:textField name="info.xjllb.tzhdcsdxjllje1End" value="${reportInfo.xjllb?.tzhdcsdxjllje1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>三、筹资活动产生的现金流量</strong>
                                </td>
                                <td colspan="4">
                                    <hr/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    吸收投资收到的现金
                                </td>
                                <td class="czhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.xstzsddxj3Begin" value="${reportInfo.xjllb?.xstzsddxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.xstzsddxj3End" value="${reportInfo.xjllb?.xstzsddxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.xstzsddxj2End" value="${reportInfo.xjllb?.xstzsddxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.xstzsddxj1End" value="${reportInfo.xjllb?.xstzsddxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    取得借款收到的现金
                                </td>
                                <td class="czhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.qdjksddxj3Begin" value="${reportInfo.xjllb?.qdjksddxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.qdjksddxj3End" value="${reportInfo.xjllb?.qdjksddxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.qdjksddxj2End" value="${reportInfo.xjllb?.qdjksddxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.qdjksddxj1End" value="${reportInfo.xjllb?.qdjksddxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    收到其他与筹资活动有关的现金
                                </td>
                                <td class="czhdxjlrxj3 plus">
                                    <g:textField name="info.xjllb.sdqtyczhdygdxj3Begin" value="${reportInfo.xjllb?.sdqtyczhdygdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj4 plus">
                                    <g:textField name="info.xjllb.sdqtyczhdygdxj3End" value="${reportInfo.xjllb?.sdqtyczhdygdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj2 plus">
                                    <g:textField name="info.xjllb.sdqtyczhdygdxj2End" value="${reportInfo.xjllb?.sdqtyczhdygdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlrxj1 plus">
                                    <g:textField name="info.xjllb.sdqtyczhdygdxj1End" value="${reportInfo.xjllb?.sdqtyczhdygdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    筹资活动现金流入小计
                                </td>
                                <td class="czhdxjlrxj3-sum czhdcsdxjllje3 plus">
                                    <g:textField name="info.xjllb.czhdxjlrxj3Begin" value="${reportInfo.xjllb?.czhdxjlrxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlrxj4-sum czhdcsdxjllje4 plus">
                                    <g:textField name="info.xjllb.czhdxjlrxj3End" value="${reportInfo.xjllb?.czhdxjlrxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlrxj2-sum czhdcsdxjllje2 plus">
                                    <g:textField name="info.xjllb.czhdxjlrxj2End" value="${reportInfo.xjllb?.czhdxjlrxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlrxj1-sum czhdcsdxjllje1 plus">
                                    <g:textField name="info.xjllb.czhdxjlrxj1End" value="${reportInfo.xjllb?.czhdxjlrxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    偿还债务支付的现金
                                </td>
                                <td class="czhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.chzwzfdxj3Begin" value="${reportInfo.xjllb?.chzwzfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.chzwzfdxj3End" value="${reportInfo.xjllb?.chzwzfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.chzwzfdxj2End" value="${reportInfo.xjllb?.chzwzfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.chzwzfdxj1End" value="${reportInfo.xjllb?.chzwzfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    分配股利、利润或偿付利息支付的现金
                                </td>
                                <td class="czhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.fpgllrhcflxzfdxj3Begin" value="${reportInfo.xjllb?.fpgllrhcflxzfdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.fpgllrhcflxzfdxj3End" value="${reportInfo.xjllb?.fpgllrhcflxzfdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.fpgllrhcflxzfdxj2End" value="${reportInfo.xjllb?.fpgllrhcflxzfdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.fpgllrhcflxzfdxj1End" value="${reportInfo.xjllb?.fpgllrhcflxzfdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    支付其他与筹资活动有关的现金
                                </td>
                                <td class="czhdxjlcxj3 plus">
                                    <g:textField name="info.xjllb.zfqtyczhdygdxj3Begin" value="${reportInfo.xjllb?.zfqtyczhdygdxj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj4 plus">
                                    <g:textField name="info.xjllb.zfqtyczhdygdxj3End" value="${reportInfo.xjllb?.zfqtyczhdygdxj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj2 plus">
                                    <g:textField name="info.xjllb.zfqtyczhdygdxj2End" value="${reportInfo.xjllb?.zfqtyczhdygdxj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="czhdxjlcxj1 plus">
                                    <g:textField name="info.xjllb.zfqtyczhdygdxj1End" value="${reportInfo.xjllb?.zfqtyczhdygdxj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>筹资活动现金流出小计</strong>
                                </td>
                                <td class="czhdxjlcxj3-sum czhdcsdxjllje3 minus">
                                    <g:textField name="info.xjllb.czhdxjlcxj3Begin" value="${reportInfo.xjllb?.czhdxjlcxj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlcxj4-sum czhdcsdxjllje4 minus">
                                    <g:textField name="info.xjllb.czhdxjlcxj3End" value="${reportInfo.xjllb?.czhdxjlcxj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlcxj2-sum czhdcsdxjllje2 minus">
                                    <g:textField name="info.xjllb.czhdxjlcxj2End" value="${reportInfo.xjllb?.czhdxjlcxj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdxjlcxj1-sum czhdcsdxjllje1 minus">
                                    <g:textField name="info.xjllb.czhdxjlcxj1End" value="${reportInfo.xjllb?.czhdxjlcxj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>筹资活动产生的现金流量净额</strong>
                                </td>
                                <td class="czhdcsdxjllje3-sum xjjxjdjwjzje3 plus">
                                    <g:textField name="info.xjllb.czhdcsdxjllje3Begin" value="${reportInfo.xjllb?.czhdcsdxjllje3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdcsdxjllje4-sum xjjxjdjwjzje4 plus">
                                    <g:textField name="info.xjllb.czhdcsdxjllje3End" value="${reportInfo.xjllb?.czhdcsdxjllje3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdcsdxjllje2-sum xjjxjdjwjzje2 plus">
                                    <g:textField name="info.xjllb.czhdcsdxjllje2End" value="${reportInfo.xjllb?.czhdcsdxjllje2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="czhdcsdxjllje1-sum xjjxjdjwjzje1 plus">
                                    <g:textField name="info.xjllb.czhdcsdxjllje1End" value="${reportInfo.xjllb?.czhdcsdxjllje1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>四、汇率变动对现金及现金等价物的影响</strong>
                                </td>
                                <td class="hlbddxjjxjdjwdyx3-sum xjjxjdjwjzje3 plus">
                                    <g:textField name="info.xjllb.hlbddxjjxjdjwdyx3Begin" value="${reportInfo.xjllb?.hlbddxjjxjdjwdyx3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="hlbddxjjxjdjwdyx4-sum xjjxjdjwjzje4 plus">
                                    <g:textField name="info.xjllb.hlbddxjjxjdjwdyx3End" value="${reportInfo.xjllb?.hlbddxjjxjdjwdyx3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="hlbddxjjxjdjwdyx2-sum xjjxjdjwjzje2 plus">
                                    <g:textField name="info.xjllb.hlbddxjjxjdjwdyx2End" value="${reportInfo.xjllb?.hlbddxjjxjdjwdyx2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="hlbddxjjxjdjwdyx1-sum xjjxjdjwjzje1 plus">
                                    <g:textField name="info.xjllb.hlbddxjjxjdjwdyx1End" value="${reportInfo.xjllb?.hlbddxjjxjdjwdyx1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>五、现金及现金等价物净增加额</strong>
                                </td>
                                <td class="xjjxjdjwjzje3-sum qmxjjxjdjwye3 plus">
                                    <g:textField name="info.xjllb.xjjxjdjwjzje3Begin" value="${reportInfo.xjllb?.xjjxjdjwjzje3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="xjjxjdjwjzje4-sum qmxjjxjdjwye4 plus">
                                    <g:textField name="info.xjllb.xjjxjdjwjzje3End" value="${reportInfo.xjllb?.xjjxjdjwjzje3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="xjjxjdjwjzje2-sum qmxjjxjdjwye2 plus">
                                    <g:textField name="info.xjllb.xjjxjdjwjzje2End" value="${reportInfo.xjllb?.xjjxjdjwjzje2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="xjjxjdjwjzje1-sum qmxjjxjdjwye1 plus">
                                    <g:textField name="info.xjllb.xjjxjdjwjzje1End" value="${reportInfo.xjllb?.xjjxjdjwjzje1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    加：期初现金及现金等价物余额
                                </td>
                                <td class="qmxjjxjdjwye3 plus">
                                    <g:textField name="info.xjllb.qcxjjxjdjwye3Begin" value="${reportInfo.xjllb?.qcxjjxjdjwye3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="qmxjjxjdjwye4 plus">
                                    <g:textField name="info.xjllb.qcxjjxjdjwye3End" value="${reportInfo.xjllb?.qcxjjxjdjwye3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="qmxjjxjdjwye2 plus">
                                    <g:textField name="info.xjllb.qcxjjxjdjwye2End" value="${reportInfo.xjllb?.qcxjjxjdjwye2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="qmxjjxjdjwye1 plus">
                                    <g:textField name="info.xjllb.qcxjjxjdjwye1End" value="${reportInfo.xjllb?.qcxjjxjdjwye1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>六、期末现金及现金等价物余额</strong>
                                </td>
                                <td class="qmxjjxjdjwye3-sum">
                                    <g:textField name="info.xjllb.qmxjjxjdjwye3Begin" value="${reportInfo.xjllb?.qmxjjxjdjwye3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="qmxjjxjdjwye4-sum">
                                    <g:textField name="info.xjllb.qmxjjxjdjwye3End" value="${reportInfo.xjllb?.qmxjjxjdjwye3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="qmxjjxjdjwye2-sum">
                                    <g:textField name="info.xjllb.qmxjjxjdjwye2End" value="${reportInfo.xjllb?.qmxjjxjdjwye2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="qmxjjxjdjwye1-sum">
                                    <g:textField name="info.xjllb.qmxjjxjdjwye1End" value="${reportInfo.xjllb?.qmxjjxjdjwye1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                        </table>

                        <g:submitButton name="submit" value="暂存" class="btn btn-lg btn-primary"/>
                    </g:form>

                    <script>
                        jQuery(document).ready(function() {
                            jQuery("input").change(function(){
                                calAll("jyhdxjlrxj");//经营活动现金流入小计
                                calAll("jyhdxjlcxj");//经营活动现金流出小计
                                calAll("jyhdcsdxjllje");//经营活动产生的现金流量净额

                                calAll("tzhdxjlrxj");//投资活动现金流入小计
                                calAll("tzhdxjlcxj");//投资活动现金流出小计
                                calAll("tzhdcsdxjllje");//投资活动产生的现金流量净额

                                calAll("czhdxjlrxj");//筹资活动现金流入小计
                                calAll("czhdxjlcxj");//筹资活动现金流出小计
                                calAll("czhdcsdxjllje");//筹资活动产生的现金流量净额

                                calAll("xjjxjdjwjzje");//现金及现金等价物净增加额
                                calAll("qmxjjxjdjwye");//期末现金及现金等价物余额
                            });
                        });

                        function calAll(key) {
                            cal(key + "1");
                            cal(key + "2");
                            cal(key + "3");
                            cal(key + "4");
                        }

                        function cal(key) {
                            var rtn = 0.00; //结果
                            jQuery("." + key).each(function() {
                                var $input = jQuery(this).children("input:first");
                                var n = $input.val();
                                /**
                                 * 统一数据格式
                                 */
                                n = jQuery.decodeMoney(n);//千分位-格式解析
                                $input.val(jQuery.codeMoney(n, 2));

                                /**
                                 * 结果运算
                                 */
                                if(!isNaN(n)) {
                                    var cls = jQuery(this).attr("class");
                                    if(cls.indexOf("plus") != -1) {
                                        rtn += parseFloat(n);
                                    } else if(cls.indexOf("minus") != -1) {
                                        rtn -= parseFloat(n);
                                    }
                                }
                            });
                            jQuery("." + key + "-sum > input:first").val(jQuery.codeMoney(rtn, 2));
                        }
                    </script>
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
