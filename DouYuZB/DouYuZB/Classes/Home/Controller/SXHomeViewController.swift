//
//  SXHomeViewController.swift
//  DouYuZB
//
//  Created by 李少雄 on 2017/3/31.
//  Copyright © 2017年 LSX. All rights reserved.
//

import UIKit

class SXHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

// mark 设置UI界面
extension SXHomeViewController {
    func setupUI() {
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        
        // 左边
        let leftBtn = UIButton()
        leftBtn.setImage(UIImage(named: "logo"), for: .normal)
        leftBtn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
        
        // 右边
        let size = CGSize(width: 30, height: 30)
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", hightImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", hightImageName: "btn_search_clicked", size: size)
        
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", hightImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
}

