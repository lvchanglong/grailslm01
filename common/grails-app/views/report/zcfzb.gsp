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
                                    <span style="font-size: 14px; font-weight: bold;">资产负债表（单位：人民币元）</span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" rowspan="2">
                                    <strong>年份</strong>&nbsp;<span class="required-indicator">*</span>
                                    <g:set var="year" value="${CommonHelper.getNian()}"/>
                                </td>
                                <td colspan="2">
                                    <g:textField name="info.zcfzb.nf3" value="${reportInfo.zcfzb?.nf3?:(reportInfo.nf3?:"${year - 3}")}" class="form-control" placeholder="如：2015"/>
                                </td>
                                <td>
                                    <g:textField name="info.zcfzb.nf2" value="${reportInfo.zcfzb?.nf2?:(reportInfo.nf2?:"${year - 2}")}" class="form-control" placeholder="如：2016"/>
                                </td>
                                <td>
                                    <g:textField name="info.zcfzb.nf1" value="${reportInfo.zcfzb?.nf1?:(reportInfo.nf1?:"${year - 1}")}" class="form-control" placeholder="如：2017"/>
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
                                <td rowspan="11">
                                    <strong>流动资产</strong>
                                </td>
                                <td colspan="2">
                                    货币资金
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.hbzj3Begin" value="${reportInfo.zcfzb?.zcb?.hbzj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.hbzj3End" value="${reportInfo.zcfzb?.zcb?.hbzj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.hbzj2End" value="${reportInfo.zcfzb?.zcb?.hbzj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.hbzj1End" value="${reportInfo.zcfzb?.zcb?.hbzj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    交易性金融资产
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.jyxjrzc3Begin" value="${reportInfo.zcfzb?.zcb?.jyxjrzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.jyxjrzc3End" value="${reportInfo.zcfzb?.zcb?.jyxjrzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.jyxjrzc2End" value="${reportInfo.zcfzb?.zcb?.jyxjrzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.jyxjrzc1End" value="${reportInfo.zcfzb?.zcb?.jyxjrzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应收票据
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.yspj3Begin" value="${reportInfo.zcfzb?.zcb?.yspj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.yspj3End" value="${reportInfo.zcfzb?.zcb?.yspj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.yspj2End" value="${reportInfo.zcfzb?.zcb?.yspj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.yspj1End" value="${reportInfo.zcfzb?.zcb?.yspj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应收账款
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.yszk3Begin" value="${reportInfo.zcfzb?.zcb?.yszk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.yszk3End" value="${reportInfo.zcfzb?.zcb?.yszk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.yszk2End" value="${reportInfo.zcfzb?.zcb?.yszk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.yszk1End" value="${reportInfo.zcfzb?.zcb?.yszk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    预付款项
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.yfkx3Begin" value="${reportInfo.zcfzb?.zcb?.yfkx3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.yfkx3End" value="${reportInfo.zcfzb?.zcb?.yfkx3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.yfkx2End" value="${reportInfo.zcfzb?.zcb?.yfkx2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.yfkx1End" value="${reportInfo.zcfzb?.zcb?.yfkx1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应收利息
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.yslx3Begin" value="${reportInfo.zcfzb?.zcb?.yslx3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.yslx3End" value="${reportInfo.zcfzb?.zcb?.yslx3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.yslx2End" value="${reportInfo.zcfzb?.zcb?.yslx2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.yslx1End" value="${reportInfo.zcfzb?.zcb?.yslx1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应收股利
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.ysgl3Begin" value="${reportInfo.zcfzb?.zcb?.ysgl3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.ysgl3End" value="${reportInfo.zcfzb?.zcb?.ysgl3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.ysgl2End" value="${reportInfo.zcfzb?.zcb?.ysgl2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.ysgl1End" value="${reportInfo.zcfzb?.zcb?.ysgl1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他应收款
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.qtysk3Begin" value="${reportInfo.zcfzb?.zcb?.qtysk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.qtysk3End" value="${reportInfo.zcfzb?.zcb?.qtysk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.qtysk2End" value="${reportInfo.zcfzb?.zcb?.qtysk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.qtysk1End" value="${reportInfo.zcfzb?.zcb?.qtysk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    存货
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.ch3Begin" value="${reportInfo.zcfzb?.zcb?.ch3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.ch3End" value="${reportInfo.zcfzb?.zcb?.ch3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.ch2End" value="${reportInfo.zcfzb?.zcb?.ch2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.ch1End" value="${reportInfo.zcfzb?.zcb?.ch1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    一年内到期的非流动资产
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.ynndqdfldzc3Begin" value="${reportInfo.zcfzb?.zcb?.ynndqdfldzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.ynndqdfldzc3End" value="${reportInfo.zcfzb?.zcb?.ynndqdfldzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.ynndqdfldzc2End" value="${reportInfo.zcfzb?.zcb?.ynndqdfldzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.ynndqdfldzc1End" value="${reportInfo.zcfzb?.zcb?.ynndqdfldzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他流动资产
                                </td>
                                <td class="ldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.qtldzc3Begin" value="${reportInfo.zcfzb?.zcb?.qtldzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.qtldzc3End" value="${reportInfo.zcfzb?.zcb?.qtldzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.qtldzc2End" value="${reportInfo.zcfzb?.zcb?.qtldzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.qtldzc1End" value="${reportInfo.zcfzb?.zcb?.qtldzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>流动资产合计</strong>
                                </td>
                                <td class="ldzc3-sum zczj3 plus">
                                    <g:textField name="info.zcfzb.zcb.ldzchj3Begin" value="${reportInfo.zcfzb?.zcb?.ldzchj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldzc4-sum zczj4 plus">
                                    <g:textField name="info.zcfzb.zcb.ldzchj3End" value="${reportInfo.zcfzb?.zcb?.ldzchj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldzc2-sum zczj2 plus">
                                    <g:textField name="info.zcfzb.zcb.ldzchj2End" value="${reportInfo.zcfzb?.zcb?.ldzchj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldzc1-sum zczj1 plus">
                                    <g:textField name="info.zcfzb.zcb.ldzchj1End" value="${reportInfo.zcfzb?.zcb?.ldzchj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="21">
                                    <strong>非流动资产</strong>
                                </td>
                                <td colspan="2">
                                    可供出售金融资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.kgcsjrzc3Begin" value="${reportInfo.zcfzb?.zcb?.kgcsjrzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.kgcsjrzc3End" value="${reportInfo.zcfzb?.zcb?.kgcsjrzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.kgcsjrzc2End" value="${reportInfo.zcfzb?.zcb?.kgcsjrzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.kgcsjrzc1End" value="${reportInfo.zcfzb?.zcb?.kgcsjrzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    持有至到期投资
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.cyzdqtz3Begin" value="${reportInfo.zcfzb?.zcb?.cyzdqtz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.cyzdqtz3End" value="${reportInfo.zcfzb?.zcb?.cyzdqtz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.cyzdqtz2End" value="${reportInfo.zcfzb?.zcb?.cyzdqtz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.cyzdqtz1End" value="${reportInfo.zcfzb?.zcb?.cyzdqtz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    长期应收款
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.cqysk3Begin" value="${reportInfo.zcfzb?.zcb?.cqysk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.cqysk3End" value="${reportInfo.zcfzb?.zcb?.cqysk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.cqysk2End" value="${reportInfo.zcfzb?.zcb?.cqysk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.cqysk1End" value="${reportInfo.zcfzb?.zcb?.cqysk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    长期股权投资
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.cqgqtz3Begin" value="${reportInfo.zcfzb?.zcb?.cqgqtz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.cqgqtz3End" value="${reportInfo.zcfzb?.zcb?.cqgqtz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.cqgqtz2End" value="${reportInfo.zcfzb?.zcb?.cqgqtz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.cqgqtz1End" value="${reportInfo.zcfzb?.zcb?.cqgqtz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    投资性房地产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.tzxfc3Begin" value="${reportInfo.zcfzb?.zcb?.tzxfc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.tzxfc3End" value="${reportInfo.zcfzb?.zcb?.tzxfc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.tzxfc2End" value="${reportInfo.zcfzb?.zcb?.tzxfc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.tzxfc1End" value="${reportInfo.zcfzb?.zcb?.tzxfc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="5" class="info">
                                    <strong>固定资产</strong>
                                </td>
                                <td>
                                    固定资产原值
                                </td>
                                <td class="gdzcjz3 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcyz3Begin" value="${reportInfo.zcfzb?.zcb?.gdzcyz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz4 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcyz3End" value="${reportInfo.zcfzb?.zcb?.gdzcyz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz2 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcyz2End" value="${reportInfo.zcfzb?.zcb?.gdzcyz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz1 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcyz1End" value="${reportInfo.zcfzb?.zcb?.gdzcyz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    减：累计折旧
                                </td>
                                <td class="gdzcjz3 minus">
                                    <g:textField name="info.zcfzb.zcb.ljzj3Begin" value="${reportInfo.zcfzb?.zcb?.ljzj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz4 minus">
                                    <g:textField name="info.zcfzb.zcb.ljzj3End" value="${reportInfo.zcfzb?.zcb?.ljzj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz2 minus">
                                    <g:textField name="info.zcfzb.zcb.ljzj2End" value="${reportInfo.zcfzb?.zcb?.ljzj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcjz1 minus">
                                    <g:textField name="info.zcfzb.zcb.ljzj1End" value="${reportInfo.zcfzb?.zcb?.ljzj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>固定资产净值</strong>
                                </td>
                                <td class="gdzcjz3-sum gdzcje3 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjz3Begin" value="${reportInfo.zcfzb?.zcb?.gdzcjz3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="gdzcjz4-sum gdzcje4 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjz3End" value="${reportInfo.zcfzb?.zcb?.gdzcjz3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="gdzcjz2-sum gdzcje2 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjz2End" value="${reportInfo.zcfzb?.zcb?.gdzcjz2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="gdzcjz1-sum gdzcje1 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjz1End" value="${reportInfo.zcfzb?.zcb?.gdzcjz1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    减：固定资产减值准备
                                </td>
                                <td class="gdzcje3 minus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjzzb3Begin" value="${reportInfo.zcfzb?.zcb?.gdzcjzzb3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcje4 minus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjzzb3End" value="${reportInfo.zcfzb?.zcb?.gdzcjzzb3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcje2 minus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjzzb2End" value="${reportInfo.zcfzb?.zcb?.gdzcjzzb2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="gdzcje1 minus">
                                    <g:textField name="info.zcfzb.zcb.gdzcjzzb1End" value="${reportInfo.zcfzb?.zcb?.gdzcjzzb1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>固定资产净额</strong>
                                </td>
                                <td class="fldzc3 plus gdzcje3-sum">
                                    <g:textField name="info.zcfzb.zcb.gdzcje3Begin" value="${reportInfo.zcfzb?.zcb?.gdzcje3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldzc4 plus gdzcje4-sum">
                                    <g:textField name="info.zcfzb.zcb.gdzcje3End" value="${reportInfo.zcfzb?.zcb?.gdzcje3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldzc2 plus gdzcje2-sum">
                                    <g:textField name="info.zcfzb.zcb.gdzcje2End" value="${reportInfo.zcfzb?.zcb?.gdzcje2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldzc1 plus gdzcje1-sum">
                                    <g:textField name="info.zcfzb.zcb.gdzcje1End" value="${reportInfo.zcfzb?.zcb?.gdzcje1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    在建工程
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.zjgc3Begin" value="${reportInfo.zcfzb?.zcb?.zjgc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.zjgc3End" value="${reportInfo.zcfzb?.zcb?.zjgc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.zjgc2End" value="${reportInfo.zcfzb?.zcb?.zjgc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.zjgc1End" value="${reportInfo.zcfzb?.zcb?.zjgc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    工程物资
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.gcwz3Begin" value="${reportInfo.zcfzb?.zcb?.gcwz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.gcwz3End" value="${reportInfo.zcfzb?.zcb?.gcwz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.gcwz2End" value="${reportInfo.zcfzb?.zcb?.gcwz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.gcwz1End" value="${reportInfo.zcfzb?.zcb?.gcwz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    固定资产清理
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcql3Begin" value="${reportInfo.zcfzb?.zcb?.gdzcql3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcql3End" value="${reportInfo.zcfzb?.zcb?.gdzcql3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcql2End" value="${reportInfo.zcfzb?.zcb?.gdzcql2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.gdzcql1End" value="${reportInfo.zcfzb?.zcb?.gdzcql1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    生产性生物资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.scxswzc3Begin" value="${reportInfo.zcfzb?.zcb?.scxswzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.scxswzc3End" value="${reportInfo.zcfzb?.zcb?.scxswzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.scxswzc2End" value="${reportInfo.zcfzb?.zcb?.scxswzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.scxswzc1End" value="${reportInfo.zcfzb?.zcb?.scxswzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    油气资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.yqzc3Begin" value="${reportInfo.zcfzb?.zcb?.yqzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.yqzc3End" value="${reportInfo.zcfzb?.zcb?.yqzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.yqzc2End" value="${reportInfo.zcfzb?.zcb?.yqzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.yqzc1End" value="${reportInfo.zcfzb?.zcb?.yqzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    无形资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.wxzc3Begin" value="${reportInfo.zcfzb?.zcb?.wxzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.wxzc3End" value="${reportInfo.zcfzb?.zcb?.wxzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.wxzc2End" value="${reportInfo.zcfzb?.zcb?.wxzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.wxzc1End" value="${reportInfo.zcfzb?.zcb?.wxzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    开发支出
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.kfzc3Begin" value="${reportInfo.zcfzb?.zcb?.kfzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.kfzc3End" value="${reportInfo.zcfzb?.zcb?.kfzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.kfzc2End" value="${reportInfo.zcfzb?.zcb?.kfzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.kfzc1End" value="${reportInfo.zcfzb?.zcb?.kfzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    商誉
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.sy3Begin" value="${reportInfo.zcfzb?.zcb?.sy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.sy3End" value="${reportInfo.zcfzb?.zcb?.sy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.sy2End" value="${reportInfo.zcfzb?.zcb?.sy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.sy1End" value="${reportInfo.zcfzb?.zcb?.sy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    长期待摊费用
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.cqdtfy3Begin" value="${reportInfo.zcfzb?.zcb?.cqdtfy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.cqdtfy3End" value="${reportInfo.zcfzb?.zcb?.cqdtfy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.cqdtfy2End" value="${reportInfo.zcfzb?.zcb?.cqdtfy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.cqdtfy1End" value="${reportInfo.zcfzb?.zcb?.cqdtfy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    递延所得税资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.dysdszc3Begin" value="${reportInfo.zcfzb?.zcb?.dysdszc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.dysdszc3End" value="${reportInfo.zcfzb?.zcb?.dysdszc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.dysdszc2End" value="${reportInfo.zcfzb?.zcb?.dysdszc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.dysdszc1End" value="${reportInfo.zcfzb?.zcb?.dysdszc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他非流动资产
                                </td>
                                <td class="fldzc3 plus">
                                    <g:textField name="info.zcfzb.zcb.qtfldzc3Begin" value="${reportInfo.zcfzb?.zcb?.qtfldzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc4 plus">
                                    <g:textField name="info.zcfzb.zcb.qtfldzc3End" value="${reportInfo.zcfzb?.zcb?.qtfldzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc2 plus">
                                    <g:textField name="info.zcfzb.zcb.qtfldzc2End" value="${reportInfo.zcfzb?.zcb?.qtfldzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldzc1 plus">
                                    <g:textField name="info.zcfzb.zcb.qtfldzc1End" value="${reportInfo.zcfzb?.zcb?.qtfldzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>非流动资产合计</strong>
                                </td>
                                <td class="fldzc3-sum zczj3 plus">
                                    <g:textField name="info.zcfzb.zcb.fldzchj3Begin" value="${reportInfo.zcfzb?.zcb?.fldzchj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>

                                <td class="fldzc4-sum zczj4 plus">
                                    <g:textField name="info.zcfzb.zcb.fldzchj3End" value="${reportInfo.zcfzb?.zcb?.fldzchj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldzc2-sum zczj2 plus">
                                    <g:textField name="info.zcfzb.zcb.fldzchj2End" value="${reportInfo.zcfzb?.zcb?.fldzchj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldzc1-sum zczj1 plus">
                                    <g:textField name="info.zcfzb.zcb.fldzchj1End" value="${reportInfo.zcfzb?.zcb?.fldzchj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>资产总计</strong>
                                </td>
                                <td class="zczj3-sum">
                                    <g:textField name="info.zcfzb.zcb.zczj3Begin" value="${reportInfo.zcfzb?.zcb?.zczj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="zczj4-sum">
                                    <g:textField name="info.zcfzb.zcb.zczj3End" value="${reportInfo.zcfzb?.zcb?.zczj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="zczj2-sum">
                                    <g:textField name="info.zcfzb.zcb.zczj2End" value="${reportInfo.zcfzb?.zcb?.zczj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="zczj1-sum">
                                    <g:textField name="info.zcfzb.zcb.zczj1End" value="${reportInfo.zcfzb?.zcb?.zczj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="12">
                                    <strong>流动负债</strong>
                                </td>
                                <td colspan="2">
                                    短期借款
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.dqjk3Begin" value="${reportInfo.zcfzb?.fzb?.dqjk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.dqjk3End" value="${reportInfo.zcfzb?.fzb?.dqjk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.dqjk2End" value="${reportInfo.zcfzb?.fzb?.dqjk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.dqjk1End" value="${reportInfo.zcfzb?.fzb?.dqjk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    交易性金融负债
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.jyxjrfz3Begin" value="${reportInfo.zcfzb?.fzb?.jyxjrfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz43 plus">
                                    <g:textField name="info.zcfzb.fzb.jyxjrfz3End" value="${reportInfo.zcfzb?.fzb?.jyxjrfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.jyxjrfz2End" value="${reportInfo.zcfzb?.fzb?.jyxjrfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.jyxjrfz1End" value="${reportInfo.zcfzb?.fzb?.jyxjrfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付票据
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yfpj3Begin" value="${reportInfo.zcfzb?.fzb?.yfpj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yfpj3End" value="${reportInfo.zcfzb?.fzb?.yfpj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yfpj2End" value="${reportInfo.zcfzb?.fzb?.yfpj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yfpj1End" value="${reportInfo.zcfzb?.fzb?.yfpj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付账款
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzk3Begin" value="${reportInfo.zcfzb?.fzb?.yfzk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzk3End" value="${reportInfo.zcfzb?.fzb?.yfzk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzk2End" value="${reportInfo.zcfzb?.fzb?.yfzk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzk1End" value="${reportInfo.zcfzb?.fzb?.yfzk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    预收款项
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yskx3Begin" value="${reportInfo.zcfzb?.fzb?.yskx3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yskx3End" value="${reportInfo.zcfzb?.fzb?.yskx3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yskx2End" value="${reportInfo.zcfzb?.fzb?.yskx2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yskx1End" value="${reportInfo.zcfzb?.fzb?.yskx1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付职工薪酬
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzgxc3Begin" value="${reportInfo.zcfzb?.fzb?.yfzgxc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzgxc3End" value="${reportInfo.zcfzb?.fzb?.yfzgxc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzgxc2End" value="${reportInfo.zcfzb?.fzb?.yfzgxc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzgxc1End" value="${reportInfo.zcfzb?.fzb?.yfzgxc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应交税费
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yjsf3Begin" value="${reportInfo.zcfzb?.fzb?.yjsf3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yjsf3End" value="${reportInfo.zcfzb?.fzb?.yjsf3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yjsf2End" value="${reportInfo.zcfzb?.fzb?.yjsf2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yjsf1End" value="${reportInfo.zcfzb?.fzb?.yjsf1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付利息
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yflx3Begin" value="${reportInfo.zcfzb?.fzb?.yflx3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yflx3End" value="${reportInfo.zcfzb?.fzb?.yflx3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yflx2End" value="${reportInfo.zcfzb?.fzb?.yflx2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yflx1End" value="${reportInfo.zcfzb?.fzb?.yflx1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付股利
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yfgl3Begin" value="${reportInfo.zcfzb?.fzb?.yfgl3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yfgl3End" value="${reportInfo.zcfzb?.fzb?.yfgl3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yfgl2End" value="${reportInfo.zcfzb?.fzb?.yfgl2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yfgl1End" value="${reportInfo.zcfzb?.fzb?.yfgl1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他应付款
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.qtyfk3Begin" value="${reportInfo.zcfzb?.fzb?.qtyfk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.qtyfk3End" value="${reportInfo.zcfzb?.fzb?.qtyfk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.qtyfk2End" value="${reportInfo.zcfzb?.fzb?.qtyfk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.qtyfk1End" value="${reportInfo.zcfzb?.fzb?.qtyfk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    一年内到期的非流动负债
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.ynndqdfldfz3Begin" value="${reportInfo.zcfzb?.fzb?.ynndqdfldfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.ynndqdfldfz3End" value="${reportInfo.zcfzb?.fzb?.ynndqdfldfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.ynndqdfldfz2End" value="${reportInfo.zcfzb?.fzb?.ynndqdfldfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.ynndqdfldfz1End" value="${reportInfo.zcfzb?.fzb?.ynndqdfldfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他流动负债
                                </td>
                                <td class="ldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.qtldfz3Begin" value="${reportInfo.zcfzb?.fzb?.qtldfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.qtldfz3End" value="${reportInfo.zcfzb?.fzb?.qtldfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.qtldfz2End" value="${reportInfo.zcfzb?.fzb?.qtldfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="ldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.qtldfz1End" value="${reportInfo.zcfzb?.fzb?.qtldfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>流动负债合计</strong>
                                </td>
                                <td class="ldfz3-sum fzhj3 plus">
                                    <g:textField name="info.zcfzb.fzb.ldfzhj3Begin" value="${reportInfo.zcfzb?.fzb?.ldfzhj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldfz4-sum fzhj4 plus">
                                    <g:textField name="info.zcfzb.fzb.ldfzhj3End" value="${reportInfo.zcfzb?.fzb?.ldfzhj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldfz2-sum fzhj2 plus">
                                    <g:textField name="info.zcfzb.fzb.ldfzhj2End" value="${reportInfo.zcfzb?.fzb?.ldfzhj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="ldfz1-sum fzhj1 plus">
                                    <g:textField name="info.zcfzb.fzb.ldfzhj1End" value="${reportInfo.zcfzb?.fzb?.ldfzhj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="7">
                                    <strong>非流动负债</strong>
                                </td>
                                <td colspan="2">
                                    长期借款
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjk3Begin" value="${reportInfo.zcfzb?.fzb?.cqjk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjk3End" value="${reportInfo.zcfzb?.fzb?.cqjk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjk2End" value="${reportInfo.zcfzb?.fzb?.cqjk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjk1End" value="${reportInfo.zcfzb?.fzb?.cqjk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    应付债劵
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzq3Begin" value="${reportInfo.zcfzb?.fzb?.yfzq3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzq3End" value="${reportInfo.zcfzb?.fzb?.yfzq3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzq2End" value="${reportInfo.zcfzb?.fzb?.yfzq2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yfzq1End" value="${reportInfo.zcfzb?.fzb?.yfzq1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    长期借应付款
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjyfk3Begin" value="${reportInfo.zcfzb?.fzb?.cqjyfk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjyfk3End" value="${reportInfo.zcfzb?.fzb?.cqjyfk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjyfk2End" value="${reportInfo.zcfzb?.fzb?.cqjyfk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.cqjyfk1End" value="${reportInfo.zcfzb?.fzb?.cqjyfk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    专项应付款
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.zxyfk3Begin" value="${reportInfo.zcfzb?.fzb?.zxyfk3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.zxyfk3End" value="${reportInfo.zcfzb?.fzb?.zxyfk3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.zxyfk2End" value="${reportInfo.zcfzb?.fzb?.zxyfk2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.zxyfk1End" value="${reportInfo.zcfzb?.fzb?.zxyfk1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    预计负债
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.yjfz3Begin" value="${reportInfo.zcfzb?.fzb?.yjfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.yjfz3End" value="${reportInfo.zcfzb?.fzb?.yjfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.yjfz2End" value="${reportInfo.zcfzb?.fzb?.yjfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.yjfz1End" value="${reportInfo.zcfzb?.fzb?.yjfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    递延所得税负债
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.dysdsfz3Begin" value="${reportInfo.zcfzb?.fzb?.dysdsfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.dysdsfz3End" value="${reportInfo.zcfzb?.fzb?.dysdsfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.dysdsfz2End" value="${reportInfo.zcfzb?.fzb?.dysdsfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.dysdsfz1End" value="${reportInfo.zcfzb?.fzb?.dysdsfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    其他非流动负债
                                </td>
                                <td class="fldfz3 plus">
                                    <g:textField name="info.zcfzb.fzb.qtfldfz3Begin" value="${reportInfo.zcfzb?.fzb?.qtfldfz3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz4 plus">
                                    <g:textField name="info.zcfzb.fzb.qtfldfz3End" value="${reportInfo.zcfzb?.fzb?.qtfldfz3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz2 plus">
                                    <g:textField name="info.zcfzb.fzb.qtfldfz2End" value="${reportInfo.zcfzb?.fzb?.qtfldfz2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="fldfz1 plus">
                                    <g:textField name="info.zcfzb.fzb.qtfldfz1End" value="${reportInfo.zcfzb?.fzb?.qtfldfz1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>非流动负债合计</strong>
                                </td>
                                <td class="fldfz3-sum fzhj3 plus">
                                    <g:textField name="info.zcfzb.fzb.fldfzhj3Begin" value="${reportInfo.zcfzb?.fzb?.fldfzhj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldfz4-sum fzhj4 plus">
                                    <g:textField name="info.zcfzb.fzb.fldfzhj3End" value="${reportInfo.zcfzb?.fzb?.fldfzhj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldfz2-sum fzhj2 plus">
                                    <g:textField name="info.zcfzb.fzb.fldfzhj2End" value="${reportInfo.zcfzb?.fzb?.fldfzhj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fldfz1-sum fzhj1 plus">
                                    <g:textField name="info.zcfzb.fzb.fldfzhj1End" value="${reportInfo.zcfzb?.fzb?.fldfzhj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>负债合计</strong>
                                </td>
                                <td class=" fzhj3-sum fzhsyzqyzj3 plus">
                                    <g:textField name="info.zcfzb.fzb.fzhj3Begin" value="${reportInfo.zcfzb?.fzb?.fzhj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class=" fzhj4-sum fzhsyzqyzj4 plus">
                                    <g:textField name="info.zcfzb.fzb.fzhj3End" value="${reportInfo.zcfzb?.fzb?.fzhj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class=" fzhj2-sum fzhsyzqyzj2 plus">
                                    <g:textField name="info.zcfzb.fzb.fzhj2End" value="${reportInfo.zcfzb?.fzb?.fzhj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class=" fzhj1-sum fzhsyzqyzj1 plus">
                                    <g:textField name="info.zcfzb.fzb.fzhj1End" value="${reportInfo.zcfzb?.fzb?.fzhj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    所有者权益（或股东权益）
                                </td>
                                <td colspan="2">
                                    少数股东权益
                                </td>
                                <td class="syzqy3 plus">
                                    <g:textField name="info.zcfzb.fzb.ssgdqy3Begin" value="${reportInfo.zcfzb?.fzb?.ssgdqy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy4 plus">
                                    <g:textField name="info.zcfzb.fzb.ssgdqy3End" value="${reportInfo.zcfzb?.fzb?.ssgdqy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy2 plus">
                                    <g:textField name="info.zcfzb.fzb.ssgdqy2End" value="${reportInfo.zcfzb?.fzb?.ssgdqy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy1 plus">
                                    <g:textField name="info.zcfzb.fzb.ssgdqy1End" value="${reportInfo.zcfzb?.fzb?.ssgdqy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    实收资本（或股本）
                                </td>
                                <td class="syzqy3 plus">
                                    <g:textField name="info.zcfzb.fzb.sszb3Begin" value="${reportInfo.zcfzb?.fzb?.sszb3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy4 plus">
                                    <g:textField name="info.zcfzb.fzb.sszb3End" value="${reportInfo.zcfzb?.fzb?.sszb3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy2 plus">
                                    <g:textField name="info.zcfzb.fzb.sszb2End" value="${reportInfo.zcfzb?.fzb?.sszb2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy1 plus">
                                    <g:textField name="info.zcfzb.fzb.sszb1End" value="${reportInfo.zcfzb?.fzb?.sszb1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    资本公积
                                </td>
                                <td class="syzqy3 plus">
                                    <g:textField name="info.zcfzb.fzb.zbgj3Begin" value="${reportInfo.zcfzb?.fzb?.zbgj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy4 plus">
                                    <g:textField name="info.zcfzb.fzb.zbgj3End" value="${reportInfo.zcfzb?.fzb?.zbgj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy2 plus">
                                    <g:textField name="info.zcfzb.fzb.zbgj2End" value="${reportInfo.zcfzb?.fzb?.zbgj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy1 plus">
                                    <g:textField name="info.zcfzb.fzb.zbgj1End" value="${reportInfo.zcfzb?.fzb?.zbgj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    减：库存股
                                </td>
                                <td class="">
                                    <g:textField name="info.zcfzb.fzb.kcg3Begin" value="${reportInfo.zcfzb?.fzb?.kcg3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.zcfzb.fzb.kcg3End" value="${reportInfo.zcfzb?.fzb?.kcg3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.zcfzb.fzb.kcg2End" value="${reportInfo.zcfzb?.fzb?.kcg2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.zcfzb.fzb.kcg1End" value="${reportInfo.zcfzb?.fzb?.kcg1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    盈余公积
                                </td>
                                <td class="syzqy3 plus">
                                    <g:textField name="info.zcfzb.fzb.yygj3Begin" value="${reportInfo.zcfzb?.fzb?.yygj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy4 plus">
                                    <g:textField name="info.zcfzb.fzb.yygj3End" value="${reportInfo.zcfzb?.fzb?.yygj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy2 plus">
                                    <g:textField name="info.zcfzb.fzb.yygj2End" value="${reportInfo.zcfzb?.fzb?.yygj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy1 plus">
                                    <g:textField name="info.zcfzb.fzb.yygj1End" value="${reportInfo.zcfzb?.fzb?.yygj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    未分配利润
                                </td>
                                <td class="syzqy3 plus">
                                    <g:textField name="info.zcfzb.fzb.wfplr3Begin" value="${reportInfo.zcfzb?.fzb?.wfplr3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy4 plus">
                                    <g:textField name="info.zcfzb.fzb.wfplr3End" value="${reportInfo.zcfzb?.fzb?.wfplr3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy2 plus">
                                    <g:textField name="info.zcfzb.fzb.wfplr2End" value="${reportInfo.zcfzb?.fzb?.wfplr2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="syzqy1 plus">
                                    <g:textField name="info.zcfzb.fzb.wfplr1End" value="${reportInfo.zcfzb?.fzb?.wfplr1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>所有者权益（或股东权益）合计</strong>
                                </td>
                                <td class="syzqy3-sum fzhsyzqyzj3 plus">
                                    <g:textField name="info.zcfzb.fzb.syzqyhj3Begin" value="${reportInfo.zcfzb?.fzb?.syzqyhj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="syzqy4-sum fzhsyzqyzj4 plus">
                                    <g:textField name="info.zcfzb.fzb.syzqyhj3End" value="${reportInfo.zcfzb?.fzb?.syzqyhj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="syzqy2-sum fzhsyzqyzj2 plus">
                                    <g:textField name="info.zcfzb.fzb.syzqyhj2End" value="${reportInfo.zcfzb?.fzb?.syzqyhj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="syzqy1-sum fzhsyzqyzj1 plus">
                                    <g:textField name="info.zcfzb.fzb.syzqyhj1End" value="${reportInfo.zcfzb?.fzb?.syzqyhj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="info">
                                    <strong>负债和所有者权益（或股东权益）总计</strong>
                                </td>
                                <td class="fzhsyzqyzj3-sum">
                                    <g:textField name="info.zcfzb.fzb.fzhsyzqyzj3Begin" value="${reportInfo.zcfzb?.fzb?.fzhsyzqyzj3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fzhsyzqyzj4-sum">
                                    <g:textField name="info.zcfzb.fzb.fzhsyzqyzj3End" value="${reportInfo.zcfzb?.fzb?.fzhsyzqyzj3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fzhsyzqyzj2-sum">
                                    <g:textField name="info.zcfzb.fzb.fzhsyzqyzj2End" value="${reportInfo.zcfzb?.fzb?.fzhsyzqyzj2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="fzhsyzqyzj1-sum">
                                    <g:textField name="info.zcfzb.fzb.fzhsyzqyzj1End" value="${reportInfo.zcfzb?.fzb?.fzhsyzqyzj1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                        </table>

                        <g:submitButton name="submit" value="暂存" class="btn btn-lg btn-primary"/>
                    </g:form>

                    <script>
                        jQuery(document).ready(function() {
                            jQuery("input").change(function(){
                                calAll("ldzc");//流动资产
                                calAll("gdzcjz");//固定资产净值
                                calAll("gdzcje");//固定资产净额
                                calAll("fldzc");//非流动资产
                                calAll("zczj");//资产总计
                                calAll("ldfz");//流动负债
                                calAll("fldfz");//非流动负债
                                calAll("fzhj");//负债合计
                                calAll("syzqy");//所有者权益（或股东权益）合计
                                calAll("fzhsyzqyzj");//负债和所有者权益（或股东权益）总计
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
