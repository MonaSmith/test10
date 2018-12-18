//
//  ViewController.swift
//  实验十
//
//  Created by apple on 2018/12/15.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myvView: UIView!
    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer =  Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak weakSelf=self](mytimer) in
            weakSelf?.myvView.center.x += 20
        })
    }

    @IBAction func btnClicked(_ sender: Any) {
        timer?.invalidate()
//        UIView.animate(withDuration: 2) {
//            self.myvView.alpha=0
//        }
        UIView.animate(withDuration: 4, delay: 1, options: [.curveLinear,.autoreverse], animations: {
            self.myvView.alpha = 0
            self.myvView.center.x = self.view.bounds.width
            self.myvView.backgroundColor = UIColor.blue
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
            self.myvView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))//.scaledBy(x: 0.5, y: 0.5)
            self.myvView.transform = CGAffineTransform.identity
        }) { (finished) in
            if finished {
                self.myvView.removeFromSuperview()
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

