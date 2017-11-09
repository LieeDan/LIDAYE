//
//  Tools.swift
//  LIDAYE
//
//  Created by 李丹 on 2017/11/9.
//  Copyright © 2017年 李丹. All rights reserved.
//

import Foundation

// 时间戳转时间
func timeStampToString(_ timeStamp: String) -> String {
  
  let timeSta = NSString(string: timeStamp).doubleValue
  let dateFormatter = DateFormatter()
  dateFormatter.dateFormat = "yyyy年MM月"
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
