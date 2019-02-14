//
//  ViewController.swift
//  ColorPicker
//
//  Created by Brandon on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "pickColor"){
            let delegateVC = segue.destination as! ColorPickerViewController
            delegateVC.completionHandler = userDidChooseColor
        }
    }

}

extension ViewController {
    func userDidChooseColor(color: UIColor) {
        let lastColor = self.view.backgroundColor
        view.backgroundColor = color
        dismiss(animated: true, completion: nil)
        let alert = UIAlertController(title: "ColorPicker", message: "Voulez-vous garder cette nouvelle couleur ou revenir à l'ancienne", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Garder cette couleur", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            
        }))
        alert.addAction(UIAlertAction(title: NSLocalizedString("Revenir à l'ancienne couleur", comment: "Default action"), style: .destructive, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            UIView.animate(withDuration: 2, animations: {
            self.view.backgroundColor = lastColor
            }, completion: nil)
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

