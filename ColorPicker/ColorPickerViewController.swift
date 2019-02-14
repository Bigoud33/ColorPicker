//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Brandon on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var completionHandler: ((UIColor) -> Void)?
    
    @IBAction func greenButton(_ sender: Any) {
        self.completionHandler?(ColorAsset.green.color)
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        self.completionHandler?(ColorAsset.orange.color)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        self.completionHandler?(ColorAsset.purple.color)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
