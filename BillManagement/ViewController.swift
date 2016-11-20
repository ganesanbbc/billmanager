//
//  ViewController.swift
//  BillManagement
//
//  Created by Varshika on 19/11/16.
//  Copyright © 2016 SwiftPlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let name = ["a","b"]

    @IBAction func homeButtonAction(_ sender: Any) {
        
       print("i'm in button a click")
        
        self.performSegue(withIdentifier: "Test1", sender: nil)
        
        
    }
    
    
    
    @IBAction func showView2(_ sender: Any) {
        self.performSegue(withIdentifier: "Test2", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.allowsSelection = NO
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myCell")
        cell.textLabel?.text = name[indexPath.row]
        cell.selectionStyle = .none
              return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(name[indexPath.row])
        
        self.performSegue(withIdentifier: "Test1", sender: nil)


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        ProductListViewController listView = segue.destination;
        let pro: ProductListViewController = segue.destination as! ProductListViewController
        pro.carryValue = "Root ViewController"
        
    }
    
    }



    
