//
//  RGBUIColor.swift
//  RGB
//
//  Created by leichunfeng on 16/1/22.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

import Curry

public func RGBUIColor(red red: Int, green: Int, blue: Int) -> UIColor {
    return curry(createColor)(red)(green)(blue)
}

private func createColor(red: Int, green: Int, blue: Int) -> UIColor {
    return UIColor(
        red: CGFloat(red/255),
        green: CGFloat(green/255),
        blue: CGFloat(blue/255),
        alpha: 1
    )
}
