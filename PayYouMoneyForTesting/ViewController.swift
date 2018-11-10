//
//  ViewController.swift
//  PayYouMoneyForTesting
//
//  Created by infos on 8/10/18.
//  Copyright © 2018 infos. All rights reserved.
//

import UIKit
import PlugNPlay


class ViewController: UIViewController {

    
  //  var txnParam = PUMTxnParam()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
 
    }

  
    
    
    
    @IBAction func checkOutAction(_ sender: UIButton) {
        PayUServiceHelper.sharedManager()?.getPayment(self, "kumaresan@appoets.com", "9962573948", "kumaresan", "1", "2", "Ls8opZ4M", didComplete: { (dict, error) in
            if let error = error {
                print("Error**********",error)
            }else {
                print("Sucess********",dict)
            }
        }, didFail: { (error) in
            print("Payment Process Breaked*********")
        })
//        PayUServiceHelper.sharedManager().getPayment(self, "sravani.mdr@gmail.com", "9962573948", "Sravani", "10", "743", "szdgzrds", didComplete: { (dict, error) in
//            if let error = error {
//                print("Error**********",error)
//            }else {
//                print("Sucess********",dict)
//            }
//        }) { (error) in
//            print("Payment Process Breaked*********")
//        }
        
        
    }
    
}

