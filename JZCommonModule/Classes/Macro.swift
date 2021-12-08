

import Foundation
import UIKit

// ---- frame
public let kDeviceWidth  = UIScreen.main.bounds.size.width
public let kDeviceHeight = UIScreen.main.bounds.size.height
public let kWidthRatio = kDeviceWidth/375.00

// iphone X
public let kIsiPhoneX = kDeviceHeight >= 812 ? true : false
// navigationBarHeight
public let kNavigationBarHeight: CGFloat = kIsiPhoneX ? 88 : 64
// 获取状态栏高度
public let kStatusBarHeight: CGFloat = kIsiPhoneX ? 44:20;
// tabBarHeight
public let kTabBarHeight: CGFloat = kIsiPhoneX ? 49 + 34 : 49
// alert 时间
public let kHUDTime = 1.6
// 透明bar 透明度
public let kBlurBarAlpha: CGFloat = 0.65

// MARK: - UIcolor
public let kThemeColor = kSetRGB(r: 125, g: 179, b: 255)
public let kLoginThemeColor = kSetRGB(r: 182, g: 172, b: 128)
public let kLoginBtnTextColor = kSetRGB(r: 85, g: 81, b: 63)
public let kButtonDisabledColor = UIColor.init(hex: 0xe0e0e0)
public let kNanBackColor = kSetRGB(r: 108, g: 185, b: 262)
public let kNvBackColor = kSetRGB(r: 236, g: 101, b: 138)
public let kKeywordSelectBackgroudColor = kSetRGB(r: 245, g: 245, b: 245)

// MARK: -  UIFont - PingFang
public func kSetPingFangRegular(_ font: CGFloat) -> UIFont {
    return UIFont(name: "PingFang-SC-Regular", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kSetPingFangMedium(_ font: CGFloat) -> UIFont {
    return UIFont(name: "PingFang-SC-Medium", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kSetPingFangLight(_ font: CGFloat) -> UIFont {
    return UIFont(name: "PingFang-SC-Light", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kSetPingFangBlod(_ font: CGFloat) -> UIFont {
    return UIFont(name: "PingFang-SC-Semibold", size: font) ?? UIFont.systemFont(ofSize: font)
}

// MARK: -  UIFont - Other
public func kNewSourceHanSerifCNHeavy(_ font: CGFloat) -> UIFont {
    return UIFont(name: "NewSourceHanSerifCNHeavy", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kNewSourceHanSeifCNRegular(_ font: CGFloat) -> UIFont {
    return UIFont(name: "NewSourceHanSeifCNRegular", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kNewKyokashoYokoBold(_ font: CGFloat) -> UIFont {
    return UIFont(name: "KyokashoYokoBold-Bold", size: font) ?? UIFont.systemFont(ofSize: font)
}
public func kDisplayFreeTFB(_ font: CGFloat) -> UIFont {
    return UIFont(name: "DISPLAYFREETFB", size: font) ?? UIFont.systemFont(ofSize: font)
}

// MARK: -  UIColor
public func kSetRGBA(r: CGFloat,g: CGFloat,b: CGFloat,a: CGFloat) -> UIColor {
    if #available(iOS 10.0, *) {
        return UIColor(displayP3Red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    } else {
        // Fallback on earlier versions
        return UIColor(R: r, G: g, B: b)
    }
}
public func kSetRGB(r: CGFloat,g: CGFloat,b: CGFloat) -> UIColor {
    return kSetRGBA(r: r, g: g, b: b, a: 1.0)
}
