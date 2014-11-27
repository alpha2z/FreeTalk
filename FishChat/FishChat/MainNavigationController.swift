//
//  MainNavigationController.swift
//  FishChat
//
//  Created by riddick on 14-11-25.
//  Copyright (c) 2014年 riddick. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("on load Main Navigation Controller.")
        // Do any additional setup after loading the view.
        let account = NSUserDefaults.standardUserDefaults().stringForKey("account")
        let pwd = NSUserDefaults.standardUserDefaults().stringForKey("passwd")
        
        if account == nil || pwd == nil {
            self.performSegueWithIdentifier("toLogin", sender: self)
//            var loginView = LoginViewController()
//            self.pushViewController(loginView, animated: false)
            self.setNavigationBarHidden(true, animated: false)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        println("on prepareForSegue.")
        if segue.identifier == "toLogin" {
            let login = segue.destinationViewController as LoginViewController
            println("prepare to login.")
            
        } else {
            self.setNavigationBarHidden(false, animated: false)
        }
    }
    
    


}
