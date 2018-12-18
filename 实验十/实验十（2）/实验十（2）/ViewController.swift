//
//  ViewController.swift
//  实验十（2）
//
//  Created by apple on 2018/12/15.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClicked(_ sender: Any) {
//        UIView.transition(with: myView, duration: 2, options: .transitionCurlUp, animations: {
//            self.myView.backgroundColor = UIColor.blue
//        }, completion: nil)
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imageView.image = UIImage(named: "image")
        UIView.transition(from: myView, to: imageView, duration: 2, options: .transitionFlipFromLeft, completion: nil)
        
    }
    
}

