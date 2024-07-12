//
//  ColorsDetailsVC.swift
//  Colors table view Project
//
//  Created by Rizwan on 12/07/2024.
//

import UIKit

class ColorsDetailsVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
    
}
