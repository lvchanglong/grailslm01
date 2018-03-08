package extension

/**
 * 企业(客户)管理
 */
class Company {

    String name //企业名称
    String companyId //企业编号
    String legalPerson //法定代表人
    String capital //注册资本
	String industry //行业划分
    String code //统一社会信用代码/注册码	
    String registerAddr //注册地
    String actualAddr //实际经营地
	String registerDate //成立日期
    String approvalDate //核准日期
    String businessTerm //营业期限
    String registerDept //登记机关
	String businessState //经营状况
    String employeeNum //企业职工人数
	
    Contact contact //联系人
    Contact actualContact //实际负责人
	
	String rank //信用等级
    String blacklist //是否被列入企业黑名单
    String bankName //基本账户所在行
    String businessForm //企业类型
	String businessScope //经营范围（主营产品）-Text
    String patent //专利技术	
    String certificate //资质/认证/经营/许可情况
    String honour //企业荣誉-Text
	String introduction //企业简介-Text
	
    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        companyId(nullable: true, blank: true)
        legalPerson(nullable: false, blank: false)
		capital(nullable: true, blank: true)   // 分公司没有注册资金
		industry(nullable: true, blank: true)
        code(nullable: true, blank: true) // 有部分企业没有统一信用代码证
        registerAddr(nullable: true, blank: true)
		actualAddr(nullable: true, blank: true)
		registerDate(nullable: true, blank: true)
        approvalDate(nullable: true, blank: true)
        businessTerm(nullable: true, blank: true) // 营业期限分有期限和无期限
		registerDept(nullable: true, blank: true)
		businessState(nullable: true, blank: true)
        employeeNum(nullable: true, blank: true)
        contact(nullable: true, blank: true)
        actualContact(nullable: true, blank: true)
		rank(nullable: true, blank: true)
		blacklist(nullable: true, blank: true)
        bankName(nullable: true, blank: true)
		businessForm(nullable: true, blank: true)
		businessScope(nullable: true, blank: true)
        patent(nullable: true, blank: true)
        certificate(nullable: true, blank: true)
		honour(nullable: true, blank: true)
        introduction(nullable: true, blank: true)
    }

    static mapping = {
        table "extension_company"

        id column: "id"
        name column: "name"
        companyId column: "companyId"
        legalPerson column: "legalPerson"
        capital column: "capital"
		industry column: "industry"
        code column: "code"
        registerAddr column: "registerAddr"
        actualAddr column: "actualAddr"
		registerDate column: "registerDate"
        approvalDate column: "approvalDate"
        businessTerm column: "businessTerm"
        registerDept column: "registerDept"
		businessState column: "businessState"
        employeeNum column: "employeeNum"
        contact column: "contact"
        actualContact column: "actualContact"
		rank column: "rank"
        blacklist column: "blacklist"
        bankName column: "bankName"
		businessForm column: "businessForm"
        businessScope column: "businessScope", sqlType:"Text"
        patent column: "patent"
        certificate column: "certificate"
		honour column: "honour", sqlType:"Text"
        introduction column: "introduction", sqlType:"Text"
		
        dateCreated column: "dateCreated"
        lastUpdated column: "lastUpdated"

        sort id: "desc" //asc
    }

    String toString() {
        return name
    }

}		
