//
//  FirstViewController.swift
//  NVShopping
//
//  Created by Chiara Amato on 13/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameProduct_1: UILabel!
    @IBOutlet weak var nameProduct_2: UILabel!
    @IBOutlet weak var nameProduct_3: UILabel!
    
    
    var myManager: Negoziante?
    var index = 0
    var myDataSource = [Negoziante]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myManager = Negoziante.init()
        viewMyData()
        // Do any additional setup after loading the view.
    }
    
    
    func viewMyData(){
        self.nameProduct_1.text = myManager!.allJeans[0].name
        self.nameProduct_2.text = myManager!.allJeans[1].name
        self.nameProduct_3.text = myManager!.allJeans[2].name
    }
    
    
    @IBAction func btnAction_1(_ sender: Any) {
        print("btnAction_1")
        index = 0
        self.performSegue(withIdentifier: "ShowSecondVC", sender: self)
    }
    
    @IBAction func btnAction_2(_ sender: Any) {
        print("btnAction_2")
        index = 1
        self.performSegue(withIdentifier: "ShowSecondVC", sender: self)
    }
    
    @IBAction func btnAction_3(_ sender: Any) {
        print("btnAction_3")
        index = 2
        self.performSegue(withIdentifier: "ShowSecondVC", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            
            if index == 0 {
                let item1 =  self.myManager!.allJeans[0]
                destinationVC.dataItem = item1
            }
            else if index == 1 {
                let item2 =  self.myManager!.allJeans[1]
                destinationVC.dataItem = item2
            }
            else if index == 2 {
                let item3 =  self.myManager!.allJeans[2]
                destinationVC.dataItem = item3
            }
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
