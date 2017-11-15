//
//  ViewController.swift
//  LIDAYE
//
//  Created by 李丹 on 2017/9/29.
//  Copyright © 2017年 李丹. All rights reserved.
//

import UIKit

// sui bian gai yi dian dong xi ba
class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "TEST", style: .plain, target: self, action: #selector(testFunc))
  }

  @objc private func testFunc() {
    
    push(with: .cameraIrisHollowOpen, from: self)
    
    let vc = UIViewController()
    vc.view.backgroundColor = .lightGray
    navigationController?.pushViewController(vc, animated: true)
  }
}

extension ViewController: CAAnimationDelegate {
  

}
