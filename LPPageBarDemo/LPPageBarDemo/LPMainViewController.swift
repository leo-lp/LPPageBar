//
//  LPMainViewController.swift
//  LPPageBarDemo
//
//  Created by pengli on 2018/5/22.
//  Copyright © 2018年 pengli. All rights reserved.
//

import UIKit
import LPPageBar

class LPMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let titles = ["热门", "关注", "最新", "附近"]
        
        let rect = CGRect(x: 0,
                          y: 100,
                          width: view.frame.width,
                          height: 40)
        
        let bar = LPPageBar(frame: rect)
        bar.titles = titles
        view.addSubview(bar)
        bar.selectedItemIndex = 0
    }
}

