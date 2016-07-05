//
//  SecondViewController.swift
//  SwiftyMasonry
//
//  Created by tom on 16/7/5.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit
import Masonry

class SecondViewController: UIViewController {
    
    var oneView : UIView!
    var twoView : UIView!
    var threeView : UIView!
    var fourView : UIView!
    var fiveView : UIView!
    var sixView : UIView!
    
    
    //判断String
    var panduanString : String!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = .None
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "AutoLayout"
        
        
        let padding : CGFloat = 15
        
        //1
        self.oneView = UIView()
        self.oneView.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.oneView)
        
        //2
        self.twoView = UIView()
        self.twoView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(self.twoView)
        
        //3
        self.threeView = UIView()
        self.threeView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(self.threeView)
        
        //4
        self.fourView = UIView()
        self.fourView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.fourView)
        
        
        print("panduanString = \(panduanString)")
        if panduanString == "1" {
            print("1个相同的")
            self.oneView.mas_makeConstraints({ (make) -> Void in
                make.top.and().left().mas_equalTo()(padding)
//                make.top.mas_equalTo()(padding)
//                make.leading.mas_equalTo()(padding)
                make.trailing.mas_equalTo()(-padding)
                make.bottom.equalTo()(self.view.mas_bottom).offset()(-padding)
//                make.leading.mas_equalTo()(10)
//                make.trailing.mas_equalTo()(-10)
            })
        }
        //2个
        else if panduanString == "2"{
            print("2个相同的")
            
            self.oneView.mas_makeConstraints({ (make) in
                make.top.and().left().mas_equalTo()(padding)
//                make.top.mas_equalTo()(padding)
//                make.leading.mas_equalTo()(padding)
//                make.trailing.mas_equalTo()(-padding)
                make.bottom.equalTo()(self.view.mas_bottom).offset()(-padding)
//                make.leading.mas_equalTo()(10)
//                make.trailing.mas_equalTo()(-10)
            })
            
            self.twoView.mas_makeConstraints({ (make) in
                make.top.mas_equalTo()(padding)
                make.leading.equalTo()(self.oneView.mas_trailing).with().offset()(padding)
                make.right.mas_equalTo()(-padding)
                
                make.width.equalTo()(self.oneView.mas_width)
                make.height.equalTo()(self.oneView.mas_height)
            })
            
            
        }
        //3
        else if panduanString == "3"{
            print("3个相同的")
            
            self.oneView.mas_makeConstraints({ (make) in
                make.top.and().left().mas_equalTo()(padding)
                make.bottom.mas_equalTo()(-padding)
            })
            
            self.threeView.mas_makeConstraints({ (make) in
//                make.trailing.and().bottom().mas_equalTo()(-padding)
                make.top.mas_equalTo()(padding)
                make.right.mas_equalTo()(-padding)
                
                make.width.equalTo()(self.oneView)
                make.height.equalTo()(self.oneView)
            })
            
            self.twoView.mas_makeConstraints({ (make) in
                make.top.mas_equalTo()(padding)
//                make.bottom.mas_equalTo()(-padding)
                make.left.equalTo()(self.oneView.mas_right).with().offset()(padding)
                make.right.equalTo()(self.threeView.mas_left).with().offset()(-padding)
                
                make.width.equalTo()(self.oneView)
                make.height.equalTo()(self.oneView)
            })
            
        }
        else if panduanString == "4"{
            print("4个")
            self.oneView.mas_makeConstraints({ (make) in
                make.top.and().left().mas_equalTo()(padding)//上 左
                make.bottom.equalTo()(self.threeView.mas_top).offset()(-padding)
                make.right.equalTo()(self.twoView.mas_left).offset()(-padding)
                
                make.width.mas_equalTo()(self.twoView.mas_width)
                make.height.mas_equalTo()(self.twoView.mas_height)
            })
            
            self.twoView.mas_makeConstraints({ (make) in
                make.top.mas_equalTo()(padding)//上
                make.left.equalTo()(self.oneView.mas_right).offset()(padding)
                make.bottom.equalTo()(self.fourView.mas_top).offset()(-padding)
                make.right.equalTo()(self.view.mas_right).offset()(-padding)//右
                
                make.width.mas_equalTo()(self.oneView.mas_width)
                make.height.mas_equalTo()(self.oneView.mas_height)
            })
            
            self.threeView.mas_makeConstraints({ (make) in
                make.top.equalTo()(self.oneView.mas_bottom).offset()(padding)
//                make.left.equalTo()(self.view.mas_left).offset()(padding)
//                make.bottom.equalTo()(self.view.mas_bottom).offset()(-padding)
                make.left.mas_equalTo()(padding)
                make.bottom.mas_equalTo()(-padding)
                make.right.equalTo()(self.fourView.mas_left).offset()(-padding)
                
                make.width.equalTo()(self.oneView.mas_width)
                make.height.equalTo()(self.oneView.mas_height)
            })
            
            self.fourView.mas_makeConstraints({ (make) in
                make.top.equalTo()(self.twoView.mas_bottom).offset()(padding)
                make.left.equalTo()(self.threeView.mas_right).offset()(padding)
                make.bottom.and().right().mas_equalTo()(-padding)//下 右
                
                make.width.equalTo()(self.oneView.mas_width)
                make.height.equalTo()(self.oneView.mas_height)
            })
        }
        else if panduanString == "5"{
            
        }
        
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
