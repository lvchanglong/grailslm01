package common

import com.aspose.words.Document

class WordHelper {

    static {
        AsposeLicense.setLicense()
    }

    static def convertTo(File srcFile, File tarFile) {
        try {
            def fileName = srcFile.getName()
            def fileType = FileHelper.getFileType(fileName).toLowerCase()
            switch (fileType) {
                case "doc":
                case "docx":
                    Document document = new Document(srcFile.newInputStream())
                    document.removeMacros()
                    document.save(tarFile.getAbsolutePath())
                    break
                default :
//					println "未支持的格式"
                    return false
            }
            return true
        } catch (Exception e) {
//			e.printStackTrace()
        }
        return false
    }

    public static void main(String[] args ) {

    }

}
