//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Angela Yu on 23/01/2016.
// Modified by Kripanand Jha on July 8, 2018
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON



class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    let currencySymbol = ["$", "R$", "$", "¥", "€", "£", "$", "Rp", "₪", "₹", "¥", "$", "kr", "$", "zł", "lei", "₽", "kr", "$", "$", "R"]
    var finalURL = ""
    var currSym: String = ""
    
    
    //Pre-setup IBOutlets
    @IBOutlet weak var bitcoinPriceLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        currencyPicker.delegate = self
        currencyPicker.dataSource = self
       
    }

    
    //TODO: Place your 3 UIPickerView delegate methods here
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print (currencyArray[row])
        finalURL = baseURL + currencyArray[row]
        currSym = currencySymbol[row]
        getBitconData(url: finalURL)
        print (finalURL)
    }
    
    

    
    
    
//    
//    //MARK: - Networking
//    /***************************************************************/
//    
    func getBitconData(url: String) {
        
        Alamofire.request(url, method: .get)
            .responseJSON { response in
                if response.result.isSuccess {

                    print("Sucess! Got the Bitcoin data")
                    let bitCoinJSON : JSON = JSON(response.result.value!)
                    print (bitCoinJSON["ask"])
                    let money: String = String(format: "%.2f", bitCoinJSON["ask"].double!)
                    let price:String = "\(self.currSym) \(money)"
                    self.bitcoinPriceLabel.text = price
                    
                   // self.updateUIData(json: bitCoinJSON)

                } else {
                    print("Error: \(String(describing: response.result.error))")
                    self.bitcoinPriceLabel.text = "Connection Issues"
                }
            }

    }

//
//    
//    
//    
//    //MARK: - JSON Parsing
//    /***************************************************************/
//    
    func updateUIData(json : JSON) {
        
//        if let tempResult = json["main"]["temp"].double {
//        }
        // else {
        
    //}
    }
    




}
