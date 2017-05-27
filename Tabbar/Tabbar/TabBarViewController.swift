//
//  TabBarViewController.swift
//  Tabbar
//
//  Created by 皇家少爷齐熠 on 17/3/13.
//  Copyright © 2017年 NetWork. All rights reserved.
//





import UIKit


class TabBarViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = UIColor.white
        self.setTabBarChildController()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  

    func setTabBarChildController(){
    
        let firstVC  = OneViewController ()
        let item1 : UITabBarItem = UITabBarItem (title: "首页", image: UIImage(named: "2x_15@2x"), selectedImage: UIImage(named: "2x_03@2x"))
        
//        
//        let label:UIScrollView = UIScrollView.init()
//        label.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
//        label.delegate = self as? UIScrollViewDelegate
//        label.contentSize.height = 110;
//        label.contentSize.width = 110;
//        label.backgroundColor = UIColor.red
//        tabBar.addSubview(label)
//        
        
        firstVC.tabBarItem = item1
        
       
        let firstVC2  = TwoViewController ()
        let item2 : UITabBarItem = UITabBarItem (title: "首页1", image: UIImage(named: "2x_16@2x"), selectedImage: UIImage(named: "2x_05@2x"))
        firstVC2.tabBarItem = item2
        
        let firstVC3  = ThreeViewController ()
        let item3 : UITabBarItem = UITabBarItem (title: "首页2", image: UIImage(named: "2x_17@2x"), selectedImage: UIImage(named: "2x_07@2x"))
        firstVC3.tabBarItem = item3
        
        
        let firstVC4  = FourthViewController ()
        let item4 : UITabBarItem = UITabBarItem (title: "首页3", image: UIImage(named: "2x_18@2x"), selectedImage: UIImage(named: "2x_09@2x"))
        firstVC4.tabBarItem = item4
        
        
        let tabArray = [firstVC,firstVC2,firstVC3,firstVC4]
        self.viewControllers = tabArray
        
        
    }

}
