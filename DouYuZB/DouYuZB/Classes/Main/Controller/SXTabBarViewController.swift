//
//  SXTabBarViewController.swift
//  DouYuZB
//
//  Created by 李少雄 on 2017/3/31.
//  Copyright © 2017年 LSX. All rights reserved.
//

import UIKit

class SXTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        addChildController()
    }
    
    
    private func addChildController () {
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }

    private func addChildVc(storyName : String) {
        // 1.通过storyBoard获取子控制器
        let homeVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(homeVc)
    }
    
}
