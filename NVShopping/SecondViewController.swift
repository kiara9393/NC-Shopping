//
//  SecondViewController.swift
//  NVShopping
//
//  Created by Chiara Amato on 13/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameOfJeans: UILabel!
    @IBOutlet weak var codiceOfJeans: UILabel!
    @IBOutlet weak var prezzoOfJeans: UILabel!
    @IBOutlet weak var scontoOfJeans: UILabel!
    @IBOutlet weak var priceSaled: UILabel!
    
    var count = 0
    var dataItem: Jeans?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMyData()
        // Do any additional setup after loading the view.
        
    }
    
    
    func viewMyData(){
        self.nameOfJeans!.text = dataItem!.name
        self.codiceOfJeans!.text = dataItem!.code
        self.prezzoOfJeans!.text = String(dataItem!.price)
        
        if let sold = dataItem?.sale {
            self.scontoOfJeans!.text = String(sold)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    
    
    func salePrice() -> Double{
        return dataItem!.price - ((dataItem!.price * dataItem!.sale!)/100)
    }
    
    
    @IBAction func btnSale(_ sender: Any) {
        if(dataItem!.sale != nil){
            self.priceSaled.text = String(self.salePrice())
        }
        else{
            self.priceSaled.text = "No sale"
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    @IBAction func closeSecondVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    */
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
