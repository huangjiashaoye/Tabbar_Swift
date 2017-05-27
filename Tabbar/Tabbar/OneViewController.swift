//
//  OneViewController.swift
//  Tabbar
//
//  Created by 皇家少爷齐熠 on 17/3/13.
//  Copyright © 2017年 NetWork. All rights reserved.
//

import UIKit
import SDWebImage
import AFNetworking

class OneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.PostUrlDat()
    }

    
    func PostUrlDat(){
        
        let StringUrl = "http://u.ikuaichuan.com:8080/olms2/api/account/login";
        
        let dicStr = NSMutableDictionary();
        
        dicStr .setValue("bbb", forKey: "name")
        dicStr .setValue("11111111", forKey: "password")
        
        
        print(dicStr);
        
        let manager = AFHTTPSessionManager();
        manager.post(StringUrl, parameters: dicStr, progress: { (Progress) in
            
        }, success: { (URLSessionDataTask, responseObject) in
            
            let dic = responseObject as! NSDictionary
		
            
            print(dic.value(forKey: "message")!)
            
            
            
        }) { (URLSessionDataTask, nil) in
            
        }
        
        
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
