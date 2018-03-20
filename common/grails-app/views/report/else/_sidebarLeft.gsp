<%@ page import="common.User; extension.Report;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarLeft" style="font-size:12px;">
	<ul class="nav nav-pills nav-stacked">
		<g:each in="${["信用报告首页":"xybgsy", "信用报告概述":"xybggs", "企业基本信息":"qyjbxx", "股东信息":"gdxx",
					   "历史沿革":"llyg", "分支机构":"fzjg", "组织机构设置":"zzjgsz", "经营能力":"jynl", "高管人员素质":"ggrysz",
					   "从业人员情况":"cyryqk", "国家产业政策情况":"gjcyzcqk", "债务情况":"zwqk", "研发能力":"yfnl",
					   "行政监管信用记录":"xzjgxyjl", "司法监管信用记录":"sfjgxyjl", "银行信贷履约情况":"yhxdlyqk",
					   "管理制度情况":"glzdqk", "管理认证情况":"glrzqk", "招标投标领域重点建设项目中标及履约情况":"ztzbjlyqk",
					   "业务情况":"ywqk", "发展能力":"fznl", "资金信用状况":"zjxyzk", "资产营运状况":"zcyyzk", "财务效益状况":"cwxyzk",
					   "社会贡献状况":"shgxzk", "社会公益":"shgy", "企业荣誉":"qyry", "基本结论及风险提示":"jbjljfxts",
					   "信用等级":"xydj", "声明":"sm", "跟踪评级安排":"gzpjap", "资产负债表":"zcfzb", "利润表":"lrb",
					   "现金流量表":"xjllb", "企业打分":"qydf"]}" status="i" var="hm">
			<li role="presentation" class="${hm.value.equals(params.action)?"active":""}">
				<g:link controller="${params.controller}" action="${hm.value}" id="${params.id}">
					${hm.key}
				</g:link>
			</li>
		</g:each>
	</ul>
</div>