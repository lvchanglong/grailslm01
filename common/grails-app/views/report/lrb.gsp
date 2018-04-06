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
                                    <span style="font-size: 14px; font-weight: bold;">利润表（单位：人民币元）</span>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <strong>年份</strong>
                                </td>
                                <td class="form_th p5 tc h20 lh20" colspan="2">
                                    <g:textField name="info.nf3" value="${reportInfo.nf3}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20 ">
                                    <g:textField name="info.nf2" value="${reportInfo.nf2}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
                                </td>
                                <td class="form_th p5 tc h20 lh20">
                                    <g:textField name="info.nf1" value="${reportInfo.nf1}" class="form-control" readonly="readonly" placeholder="详见-信用报告概述"/>
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
                                <td class="info">
                                    <strong>一、营业收入</strong>
                                </td>
                                <td class="yylr3 plus">
                                    <g:textField name="info.lrb.yysr3Begin" value="${reportInfo.lrb?.yysr3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 plus">
                                    <g:textField name="info.lrb.yysr3End" value="${reportInfo.lrb?.yysr3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 plus">
                                    <g:textField name="info.lrb.yysr2End" value="${reportInfo.lrb?.yysr2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 plus">
                                    <g:textField name="info.lrb.yysr1End" value="${reportInfo.lrb?.yysr1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    其中：主营业务收入
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywsr3Begin" value="${reportInfo.lrb?.zyywsr3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywsr3End" value="${reportInfo.lrb?.zyywsr3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywsr2End" value="${reportInfo.lrb?.zyywsr2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywsr1End" value="${reportInfo.lrb?.zyywsr1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    减：营业成本
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.yycb3Begin" value="${reportInfo.lrb?.yycb3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.yycb3End" value="${reportInfo.lrb?.yycb3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.yycb2End" value="${reportInfo.lrb?.yycb2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.yycb1End" value="${reportInfo.lrb?.yycb1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    其中：主营业务成本
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywcb3Begin" value="${reportInfo.lrb?.zyywcb3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywcb3End" value="${reportInfo.lrb?.zyywcb3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywcb2End" value="${reportInfo.lrb?.zyywcb2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.zyywcb1End" value="${reportInfo.lrb?.zyywcb1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    营业税金及附加
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.yysjjfj3Begin" value="${reportInfo.lrb?.yysjjfj3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.yysjjfj3End" value="${reportInfo.lrb?.yysjjfj3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.yysjjfj2End" value="${reportInfo.lrb?.yysjjfj2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.yysjjfj1End" value="${reportInfo.lrb?.yysjjfj1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    销售费用
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.xsfy3Begin" value="${reportInfo.lrb?.xsfy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.xsfy3End" value="${reportInfo.lrb?.xsfy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.xsfy2End" value="${reportInfo.lrb?.xsfy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.xsfy1End" value="${reportInfo.lrb?.xsfy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    管理费用
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.glfy3Begin" value="${reportInfo.lrb?.glfy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.glfy3End" value="${reportInfo.lrb?.glfy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.glfy2End" value="${reportInfo.lrb?.glfy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.glfy1End" value="${reportInfo.lrb?.glfy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    财务费用
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.cwfy3Begin" value="${reportInfo.lrb?.cwfy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.cwfy3End" value="${reportInfo.lrb?.cwfy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.cwfy2End" value="${reportInfo.lrb?.cwfy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.cwfy1End" value="${reportInfo.lrb?.cwfy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    其中：利息支出
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.lxzc3Begin" value="${reportInfo.lrb?.lxzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.lxzc3End" value="${reportInfo.lrb?.lxzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.lxzc2End" value="${reportInfo.lrb?.lxzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.lxzc1End" value="${reportInfo.lrb?.lxzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    资产减值损失
                                </td>
                                <td class="yylr3 minus">
                                    <g:textField name="info.lrb.zcjzss3Begin" value="${reportInfo.lrb?.zcjzss3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 minus">
                                    <g:textField name="info.lrb.zcjzss3End" value="${reportInfo.lrb?.zcjzss3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 minus">
                                    <g:textField name="info.lrb.zcjzss2End" value="${reportInfo.lrb?.zcjzss2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 minus">
                                    <g:textField name="info.lrb.zcjzss1End" value="${reportInfo.lrb?.zcjzss1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    加：公允价值变动收益（损失以“-”号填列）
                                </td>
                                <td class="yylr3 plus">
                                    <g:textField name="info.lrb.gyjzbdsy3Begin" value="${reportInfo.lrb?.gyjzbdsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 plus">
                                    <g:textField name="info.lrb.gyjzbdsy3End" value="${reportInfo.lrb?.gyjzbdsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 plus">
                                    <g:textField name="info.lrb.gyjzbdsy2End" value="${reportInfo.lrb?.gyjzbdsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 plus">
                                    <g:textField name="info.lrb.gyjzbdsy1End" value="${reportInfo.lrb?.gyjzbdsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    投资收益（损失以“-”号填列）
                                </td>
                                <td class="yylr3 plus">
                                    <g:textField name="info.lrb.tzsy3Begin" value="${reportInfo.lrb?.tzsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr4 plus">
                                    <g:textField name="info.lrb.tzsy3End" value="${reportInfo.lrb?.tzsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr2 plus">
                                    <g:textField name="info.lrb.tzsy2End" value="${reportInfo.lrb?.tzsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="yylr1 plus">
                                    <g:textField name="info.lrb.tzsy1End" value="${reportInfo.lrb?.tzsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    其中：对联营企业和合营企业的投资收益
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.dlyqyhhyqydtzsy3Begin" value="${reportInfo.lrb?.dlyqyhhyqydtzsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.dlyqyhhyqydtzsy3End" value="${reportInfo.lrb?.dlyqyhhyqydtzsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.dlyqyhhyqydtzsy2End" value="${reportInfo.lrb?.dlyqyhhyqydtzsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.dlyqyhhyqydtzsy1End" value="${reportInfo.lrb?.dlyqyhhyqydtzsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>二、营业利润（损失以“-”号填列）</strong>
                                </td>
                                <td class="yylr3-sum lrze3 plus">
                                    <g:textField name="info.lrb.yylr3Begin" value="${reportInfo.lrb?.yylr3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="yylr4-sum lrze4 plus">
                                    <g:textField name="info.lrb.yylr3End" value="${reportInfo.lrb?.yylr3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="yylr2-sum lrze2 plus">
                                    <g:textField name="info.lrb.yylr2End" value="${reportInfo.lrb?.yylr2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="yylr1-sum lrze1 plus">
                                    <g:textField name="info.lrb.yylr1End" value="${reportInfo.lrb?.yylr1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    加：营业外收入
                                </td>
                                <td class="lrze3 plus">
                                    <g:textField name="info.lrb.yywsr3Begin" value="${reportInfo.lrb?.yywsr3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze4 plus">
                                    <g:textField name="info.lrb.yywsr3End" value="${reportInfo.lrb?.yywsr3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze2 plus">
                                    <g:textField name="info.lrb.yywsr2End" value="${reportInfo.lrb?.yywsr2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze1 plus">
                                    <g:textField name="info.lrb.yywsr1End" value="${reportInfo.lrb?.yywsr1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    减：营业外支出
                                </td>
                                <td class="lrze3 minus">
                                    <g:textField name="info.lrb.yywzc3Begin" value="${reportInfo.lrb?.yywzc3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze4 minus">
                                    <g:textField name="info.lrb.yywzc3End" value="${reportInfo.lrb?.yywzc3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze2 minus">
                                    <g:textField name="info.lrb.yywzc2End" value="${reportInfo.lrb?.yywzc2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="lrze1 minus">
                                    <g:textField name="info.lrb.yywzc1End" value="${reportInfo.lrb?.yywzc1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    其中：非流动资产处置损失
                                </td>
                                <td>
                                    <g:textField name="info.lrb.fldzcczss3Begin" value="${reportInfo.lrb?.fldzcczss3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td>
                                    <g:textField name="info.lrb.fldzcczss3End" value="${reportInfo.lrb?.fldzcczss3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td>
                                    <g:textField name="info.lrb.fldzcczss2End" value="${reportInfo.lrb?.fldzcczss2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td>
                                    <g:textField name="info.lrb.fldzcczss1End" value="${reportInfo.lrb?.fldzcczss1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>三、利润总额（损失以“-”号填列）</strong>
                                </td>
                                <td class="lrze3-sum jlr3 plus">
                                    <g:textField name="info.lrb.lrze3Begin" value="${reportInfo.lrb?.lrze3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="lrze4-sum jlr4 plus">
                                    <g:textField name="info.lrb.lrze3End" value="${reportInfo.lrb?.lrze3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="lrze2-sum jlr2 plus">
                                    <g:textField name="info.lrb.lrze2End" value="${reportInfo.lrb?.lrze2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="lrze1-sum jlr1 plus">
                                    <g:textField name="info.lrb.lrze1End" value="${reportInfo.lrb?.lrze1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    减：所得税费用
                                </td>
                                <td class="jlr3 minus">
                                    <g:textField name="info.lrb.sdsfy3Begin" value="${reportInfo.lrb?.sdsfy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jlr4 minus">
                                    <g:textField name="info.lrb.sdsfy3End" value="${reportInfo.lrb?.sdsfy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jlr2 minus">
                                    <g:textField name="info.lrb.sdsfy2End" value="${reportInfo.lrb?.sdsfy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="jlr1 minus">
                                    <g:textField name="info.lrb.sdsfy1End" value="${reportInfo.lrb?.sdsfy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>四、净利润</strong>
                                </td>
                                <td class="jlr3-sum">
                                    <g:textField name="info.lrb.jlr3Begin" value="${reportInfo.lrb?.jlr3Begin?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jlr4-sum">
                                    <g:textField name="info.lrb.jlr3End" value="${reportInfo.lrb?.jlr3End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jlr2-sum">
                                    <g:textField name="info.lrb.jlr2End" value="${reportInfo.lrb?.jlr2End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                                <td class="jlr1-sum">
                                    <g:textField name="info.lrb.jlr1End" value="${reportInfo.lrb?.jlr1End?:"0.00"}" class="form-control" readonly="readonly"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="info">
                                    <strong>五、每股收益</strong>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.mgsy3Begin" value="${reportInfo.lrb?.mgsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.mgsy3End" value="${reportInfo.lrb?.mgsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.mgsy2End" value="${reportInfo.lrb?.mgsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.mgsy1End" value="${reportInfo.lrb?.mgsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    （一）基本每股收益
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.jbmgsy3Begin" value="${reportInfo.lrb?.jbmgsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.jbmgsy3End" value="${reportInfo.lrb?.jbmgsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.jbmgsy2End" value="${reportInfo.lrb?.jbmgsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.jbmgsy1End" value="${reportInfo.lrb?.jbmgsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    （二）稀释每股收益
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.xsmgsy3Begin" value="${reportInfo.lrb?.xsmgsy3Begin?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.xsmgsy3End" value="${reportInfo.lrb?.xsmgsy3End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.xsmgsy2End" value="${reportInfo.lrb?.xsmgsy2End?:"0.00"}" class="form-control"/>
                                </td>
                                <td class="">
                                    <g:textField name="info.lrb.xsmgsy1End" value="${reportInfo.lrb?.xsmgsy1End?:"0.00"}" class="form-control"/>
                                </td>
                            </tr>
                        </table>

                        <g:submitButton name="submit" value="暂存" class="btn btn-lg btn-primary"/>
                    </g:form>

                    <script>
                        jQuery(document).ready(function() {
                            jQuery("input").change(function(){
                                calAll("yylr");//营业利润
                                calAll("lrze");//利润总额
                                calAll("jlr");//净利润
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
