//
//  ColorAsset.swift
//  ColorPicker
//
//  Created by Brandon on 14/02/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

enum ColorAsset : String {
    case green
    case orange
    case purple
}

extension ColorAsset {
    var color : UIColor {
        return UIColor(named: self.rawValue)!
    }
}
