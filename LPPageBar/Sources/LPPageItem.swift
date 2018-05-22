//
//  LPPageItem.swift
//  LPPageBar <https://github.com/leo-lp/LPPageBar>
//
//  Created by pengli on 2018/5/22.
//  Copyright © 2018年 pengli. All rights reserved.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

import UIKit

public class LPPageItem: UIButton {
    
    /// item在PageBar中的index，此属性不能手动设置
    lazy var index: Int = 0
    
    /// 字体宽
    var titleWidth: CGFloat = 0.0
    
    /// 缩放后的字体宽
    var scaleTitleWidth: CGFloat = 0.0
    
    /// 设置item标题
    public var title: String = "" {
        didSet {
            self.setTitle(title, for: .normal)
            self.setTitleWidth()
        }
    }
    
    /// 设置正常状态下的item字体颜色
    public var titleColor: UIColor? {
        didSet {
            self.setTitleColor(titleColor, for: .normal)
        }
    }
    
    /// 设置item被选中后的字体颜色
    public var titleSelectedColor: UIColor? {
        didSet {
            self.setTitleColor(titleSelectedColor, for: .selected)
        }
    }
    
    /// 设置item的字体大小
    public var titleFont: UIFont? {
        didSet {
            self.titleLabel?.font = titleFont
            self.setTitleWidth()
        }
    }
    
    /// 设置item字体宽度
    private func setTitleWidth() {
        if let titleFont = self.titleLabel?.font, title.count > 0 {
            let width = (title as NSString).boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude),
                                                         options: [.usesLineFragmentOrigin, .usesFontLeading],
                                                         attributes: [.font: titleFont],
                                                         context: nil).size.width
            self.titleWidth = width
            self.scaleTitleWidth = width
        }
    }
    
    deinit {
        #if DEBUG
        print("LPPageItem -> release memory.")
        #endif
    }
}
