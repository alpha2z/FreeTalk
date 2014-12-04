//
//  LoginViewController.swift
//  FishChat
//
//  Created by riddick on 14-11-25.
//  Copyright (c) 2014年 riddick. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var accText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    
    var done:Bool!
    
    
    @IBAction func onLogin(sender: AnyObject) {
        println("click login.")
        let parent = self.parentViewController as UINavigationController
        parent.popViewControllerAnimated(false)
        parent.setNavigationBarHidden(false, animated: false)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("login view controller")
        // Do any additional setup after loading the view.
        
        
        
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
    


    

}
