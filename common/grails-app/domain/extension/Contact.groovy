package extension

/**
 * 联系人管理
 */
class Contact {

    static hasMany = [companies:Company, otherCompanies:Company]
    static mappedBy = [companies: "actualContact", otherCompanies: "contactor"]

    String name //姓名
    String duty //职务
    String phone //联系方式
    String email //邮箱
    Date dateCreated //创建时间
    Date lastUpdated //更新时间

    static constraints = {
        name(nullable: false, blank: false)
        duty(nullable: true, blank: true)
        phone(nullable: true, blank: true)
		email(nullable: true, blank: true)
    }

    static mapping = {
        table "extension_contact"

        id column: "id"
        name column: "name"
        duty column: "duty"
        phone column: "phone"
        email column: "email"
        dateCreated column: "dateCreated"
        lastUpdated column: "lastUpdated"

        sort id: "desc" //asc
    }

    String toString() {
        return name
    }

}
