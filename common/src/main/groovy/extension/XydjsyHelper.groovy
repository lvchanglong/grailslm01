package extension

/**
 * 信用等级释义
 */
class XydjsyHelper {
    static HashMap hm = [
            "AAA":["jffw":"≥90", "xyts":"信用极好", "sy":"企业信用程度极好。"],
            "AA":["jffw":"≥80＜90", "xyts":"信用优良", "sy":"企业信用程度良好。"],
            "A":["jffw":"≥70＜80", "xyts":"信用较好", "sy":"企业信用程度较好。"],
            "BBB":["jffw":"≥60＜70", "xyts":"信用一般", "sy":"企业信用程度一般。"],
            "BB":["jffw":"≥50＜60", "xyts":"信用欠佳", "sy":"企业信用程度较差。"],
            "B":["jffw":"≥40＜50", "xyts":"信用较差", "sy":"企业信用程度差。"],
            "CCC":["jffw":"≥30＜40", "xyts":"信用很低", "sy":"企业信用程度很差。"],
            "CC":["jffw":"≥20＜30", "xyts":"信用极差", "sy":"企业信用程度极差。"],
            "C":["jffw":"≥10＜20", "xyts":"没有信用", "sy":"企业无信用。"],
            "D":["jffw":"＜10", "xyts":"没有信用", "sy":"企业已濒临破产。"]
    ]

    static HashMap getKey(String key) {
        return hm.get(key)
    }
}
