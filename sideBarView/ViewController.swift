//
//  ViewController.swift
//  sideBarView
//
//  Created by chenBighead on 2017/5/14.
//  Copyright © 2017年 joybien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    var menuShowing = false
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      menuView.layer.shadowOpacity = 3
      menuView.layer.shadowRadius = 6
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing) {
            leadingConstraint.constant = -140
            
            
        }else{
             leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations:{
              self.view.layoutIfNeeded()
            })
        }
      
       menuShowing = !menuShowing
    }


}

