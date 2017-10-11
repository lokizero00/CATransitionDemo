//
//  FirstViewController.swift
//  CATransitionDemo
//
//  Created by lokizero00 on 2017/10/11.
//  Copyright © 2017年 lokizero00. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var button1:UIButton?
    @IBOutlet weak var button2:UIButton?
    @IBOutlet weak var button3:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title="首页"
        self.view.backgroundColor=UIColor.white

        let redView=UIView(frame: CGRect(x: 0, y: 70, width: UIScreen.main.bounds.width, height: 400))
        redView.backgroundColor=UIColor.red
        self.view.insertSubview(redView, at: 0)
        
        let blueView=UIView(frame: CGRect(x: 0, y: 70, width: UIScreen.main.bounds.width, height: 400))
        blueView.backgroundColor=UIColor.blue
        self.view.insertSubview(blueView, at: 1)
        
        button1?.addTarget(self, action: #selector(self.caAnimationChange1), for: .touchUpInside)
        button2?.addTarget(self, action: #selector(self.caAnimationChange2), for: .touchUpInside)
        button3?.addTarget(self, action: #selector(self.caAnimationChange3), for: .touchUpInside)
    }
    
    @objc func caAnimationChange1(){
        let transition=CATransition()
        transition.duration=1.0
        transition.type=kCATransitionPush
        transition.subtype=kCATransitionFromLeft
        self.view.exchangeSubview(at: 1, withSubviewAt: 0)
        self.view.layer.add(transition, forKey: nil)
    }
    
    @objc func caAnimationChange2(){
        let transition=CATransition()
        transition.duration=1.0
        transition.type=kCATransitionMoveIn
        transition.subtype=kCATransitionFromTop
        self.view.exchangeSubview(at: 0, withSubviewAt: 1)
        self.view.layer.add(transition, forKey: nil)
    }
    
    @objc func caAnimationChange3(){
        let transition=CATransition()
        transition.duration=1.0
        transition.type="cube"
        transition.subtype=kCATransitionFromTop
        self.view.exchangeSubview(at: 0, withSubviewAt: 1)
        self.view.layer.add(transition, forKey: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
