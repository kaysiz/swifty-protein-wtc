//
//  ProteinViewController.swift
//  protein
//
//  Created by kudakwashe on 2019/11/13.
//  Copyright © 2019 WeThinkCode. All rights reserved.
//

import UIKit

class ProteinViewController: UIViewController {
    
    var ligandName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        print(" The name that came is \(ligandName!)")
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
