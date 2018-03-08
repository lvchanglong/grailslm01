<a href="#fakelink" data-toggle="modal" data-target="#showCompanyModal${instance.id}">
    <span class="glyphicon glyphicon-eye-open" data-toggle="tooltip" title="查看"></span>
</a>

<div class="modal fade" id="showCompanyModal${instance.id}" tabindex="-1" role="dialog" aria-labelledby="showCompanyModal${instance.id}Title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="showCompanyModal${instance.id}Title">信息查看</h3>
            </div>
            <div class="modal-body">
                <ol style="list-style-type:none;" class="companyShow">
                    <li>企业名称：<strong>${instance.name}</strong></li>
                    <li>企业编号：<strong>${instance.companyId?:"未知"}</strong></li>
                    <li>法定代表人：<strong>${instance.legalPerson?:"未知"}</strong></li>
                    <li>注册资本：<strong>${instance.capital?:"未知"}</strong></li>
                    <li>行业划分：<strong>${instance.industry?:"未知"}</strong></li>
                    <li>统一社会信用代码/注册码：<strong>${instance.code?:"未知"}</strong></li>
                    <li>注册地：<strong>${instance.registerAddr?:"未知"}</strong></li>
                    <li>实际经营地：<strong>${instance.actualAddr?:"未知"}</strong></li>
                    <li>成立日期：<strong>${instance.registerDate?:"未知"}</strong></li>
                    <li>核准日期：<strong>${instance.approvalDate?:"未知"}</strong></li>
                    <li>营业期限：<strong>${instance.businessTerm?:"未知"}</strong></li>
                    <li>登记机关：<strong>${instance.registerDept?:"未知"}</strong></li>
                    <li>经营状况：<strong>${instance.businessState?:"未知"}</strong></li>
                    <li>企业职工人数：<strong>${instance.employeeNum?:"未知"}</strong></li>
                    <li>联系人：<strong>${instance.contact?:"未知"}</strong></li>
                    <li>实际负责人：<strong>${instance.actualContact?:"未知"}</strong></li>
                    <li>信用等级：<strong>${instance.rank?:"未知"}</strong></li>
                    <li>是否被列入企业黑名单：<strong>${instance.blacklist?:"未知"}</strong></li>
                    <li>基本账户所在行：<strong>${instance.bankName?:"未知"}</strong></li>
                    <li>企业类型：<strong>${instance.businessForm?:"未知"}</strong></li>
                    <li>经营范围（主营产品）：<strong>${instance.businessScope?:"未知"}</strong></li>
                    <li>专利技术：<strong>${instance.patent?:"未知"}</strong></li>
                    <li>资质/认证/经营/许可情况：<strong>${instance.certificate?:"未知"}</strong></li>
                    <li>企业荣誉：<strong>${instance.honour?:"未知"}</strong></li>
                    <li>企业简介：<strong>${instance.introduction?:"未知"}</strong></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<style>
    .companyShow {
        padding:0 20px;
    }
    .companyShow li {
        line-height:25px;
    }
    .companyShow strong {
        margin-left:8px;
    }
</style>