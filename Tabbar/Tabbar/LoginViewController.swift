//
//  LoginViewController.swift
//  Tabbar
//
//  Created by 皇家少爷齐熠 on 17/3/13.
//  Copyright © 2017年 NetWork. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 80, height: 80))
        
        btn.backgroundColor = UIColor.cyan
        btn.setTitle("下一步", for: .normal)
        btn.addTarget(self, action: #selector(self.nextClick), for: .touchUpInside)
        btn.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(btn)
    }
    
    func nextClick(){
    
        print("1")
        
        let vc = TabBarViewController()
        
        self.present(vc, animated: true, completion: nil)
        
        
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
