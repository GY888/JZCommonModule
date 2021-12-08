
import UIKit

extension UIColor {
    public convenience init(hex h: Int,alpha a: CGFloat = 1) {
        let r = CGFloat((h & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((h & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(h & 0x0000FF) / 255.0
        self.init(red: r, green: g, blue: b, alpha: a)
    }
    convenience init(R: CGFloat, G: CGFloat, B:CGFloat) {
        self.init(red: R/255.0 , green: G/255.0, blue: B/255.0, alpha: 1)
    }

}

extension UIColor{
    public convenience init(hexString:String){
        //处理数值
        var cString = hexString.uppercased().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let length = (cString as NSString).length
        //错误处理
        if (length < 6 || length > 7 || (!cString.hasPrefix("#") && length == 7)){
            //返回whiteColor
            self.init(red: 161.0/255, green: 161.0/255, blue:161.0/255, alpha: 1.0)
            return
        }
        
        if cString.hasPrefix("#"){
            cString = (cString as NSString).substring(from: 1)
        }
        
        //字符chuan截取
        var range = NSRange()
        range.location = 0
        range.length = 2
        
        let rString = (cString as NSString).substring(with: range)
        
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        //存储转换后的数值
        var r:UInt64 = 0,g:UInt64 = 0,b:UInt64 = 0
        //进行转换
        Scanner(string: rString).scanHexInt64(&r)
        Scanner(string: gString).scanHexInt64(&g)
        Scanner(string: bString).scanHexInt64(&b)
        //根据颜色值创建UIColor
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
    }
}
