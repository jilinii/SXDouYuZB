//
//  UIBarButtonItem-Extension.swift
//  DouYuZB
//
//  Created by 李少雄 on 2017/4/1.
//  Copyright © 2017年 LSX. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    /*  类方法
    class func createItem(imageName : String, hightImageName : String, size : CGSize) -> UIBarButtonItem {
     
        let button = UIButton()
        button.setImage(UIImage(named: imageName), for: .normal)
        button.setImage(UIImage(named: hightImageName), for: .highlighted)
        button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        return UIBarButtonItem(customView: button)
    }
    */
    
    // 构造函数 便利构造函数需要满足2个条件  
    // 1.convenience 开头, 2.在构造函数中必须明确调用1个设计的构造函数（self）
    convenience init(imageName : String, hightImageName : String = "", size : CGSize = CGSize.zero) {
        
        let button = UIButton()
        button.setImage(UIImage(named: imageName), for: .normal)
        if hightImageName != "" {
            button.setImage(UIImage(named: hightImageName), for: .highlighted)
        }
        if size == CGSize.zero {
            button.sizeToFit()
        } else {
            button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        }
        
        self.init(customView : button)
    }
    
}
