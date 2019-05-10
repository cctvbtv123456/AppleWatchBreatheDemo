//
//  ViewController.swift
//  AppleWatchBreathe
//
//  Created by mac on 2019/5/10.
//  Copyright © 2019 zhihuiketang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let breathView = BreathView(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(breathView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewTapped(sender:)))
        view.addGestureRecognizer(tap)
    }
    
    override func viewDidLayoutSubviews() {
        breathView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        breathView.animate()
    }

    @objc func viewTapped(sender: UITapGestureRecognizer) {
        breathView.animate()
    }

}

