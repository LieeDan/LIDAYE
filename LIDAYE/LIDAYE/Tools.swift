//
//  Tools.swift
//  LIDAYE
//
//  Created by 李丹 on 2017/11/9.
//  Copyright © 2017年 李丹. All rights reserved.
//

import UIKit

// 时间戳转时间
func timeStampToString(_ timeStamp: String) -> String {
  
  let timeSta = NSString(string: timeStamp).doubleValue
  let dateFormatter = DateFormatter()
  dateFormatter.dateFormat = "yyyy年MM月HH:mm:ss"
  let date = Date(timeIntervalSince1970: timeSta)
  return dateFormatter.string(from: date)
}

// 时间转时间戳
func stringToTimeStamp(_ stringTime:String) -> String {
  
  let dfmatter = DateFormatter()
  dfmatter.dateFormat="yyyy年MM月dd日HH:mm:ss"
  let date = dfmatter.date(from: stringTime)
  let dateStamp = date?.timeIntervalSince1970
  let dateSt = Int(dateStamp!)
  return String(dateSt)
}

// MARK: -- TransitionAnimation

enum TransitionAnimation: String {
  
  case rippleEffect = "rippleEffect"  //波纹效果
  case cube = "cube"  //立体翻转效果
  case suckEffect = "suckEffect"  //像被吸入瓶子的效果
  case oglflip = "oglflip"  //翻转
  case pageCurl = "pageCurl"  //翻页效果
  case pageUnCurl = "pageUnCurl"  //反翻页效果
  case cameraIrisHollowOpen = "cameraIrisHollowOpen"  //开镜头效果
  case cameraIrisHollowClose = "cameraIrisHollowClose"  //关镜头效果
  case fade = "fade"  //淡入淡出
  case push = "push"  //推进效果
  case reveal = "reveal"  //揭开效果
  case moveIn = "moveIn"  //慢慢进入并覆盖效果
  case fromBottom = "fromBottom"  //下翻页效果
  case fromTop = "fromTop"  //上翻页效果
  case fromLeft = "fromLeft"  //左翻转效果
  case fromRight = "fromRight"  //右翻转效果
}

@discardableResult
func push(with animationType: TransitionAnimation, from: UIViewController & CAAnimationDelegate) -> CATransition {
  
  let transition = CATransition()
  transition.duration = 0.5
  transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
  transition.type = animationType.rawValue
  transition.subtype = kCATransitionMoveIn
  transition.delegate = from
  from.navigationController?.view.layer.add(transition, forKey: nil)
  return transition
}

