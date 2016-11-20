//
//  ProductListViewController.swift
//  BillManagement
//
//  Created by Varshika on 19/11/16.
//  Copyright © 2016 SwiftPlus. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController{
    
    var carryValue = "";
    

    @IBOutlet weak var collectionVie: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print(carryValue)
        
        // Do any additional setup after loading the view.
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
