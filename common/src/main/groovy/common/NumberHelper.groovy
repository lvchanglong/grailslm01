package common

import java.text.DecimalFormat

/**
 * Created by Administrator on 2018/4/2.
 */
class NumberHelper {

    /**
     * 千分位-格式化
     * @param money 123456789.125
     * @return "123,456,789.13"
     */
    static String codeMoney(def money) {
        return new DecimalFormat(",###.00").format(money.toDouble())
    }

    /**
     * 千分位-格式解析
     * @param money "123,456,789.13"
     * @return 123456789.13
     */
    static Double decodeMoney(String money) {
        return new DecimalFormat(",###.00").parse(money).doubleValue()
    }

    /**
     * 数字格式化
     * @param number
     * @return
     */
    static String format(def number) {
        return new DecimalFormat("0.00").format(number.toDouble())
    }

    static main(args) {

    }

}
