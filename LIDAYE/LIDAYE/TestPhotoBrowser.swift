//
//  TestPhotoBrowser.swift
//  LIDAYE
//
//  Created by 李丹 on 2017/11/10.
//  Copyright © 2017年 李丹. All rights reserved.
//

import UIKit

class Model: NSObject {
  var name = ""
  var age = 0
  var height = 0
  var weight = 0
  var isMale = true
}

class TestPhotoBrowser {
  
  func test() {
    var a = 10
    var b = 20
    swapeTwoValue(a: &a, b: &b)
  }

}

func swapeTwoValue<T>(a: inout T, b: inout T) {
  
}
