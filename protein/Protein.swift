//
//  Proteins.swift
//  protein
//
//  Created by kudakwashe on 2019/11/13.
//  Copyright © 2019 WeThinkCode. All rights reserved.
//

import Foundation

struct Protein {
    let ligandName: String
    
    static func GetAllProteins() -> [Protein] {
        let fileName: String = "ligands"
        var ligands: [Protein] = [];
        if let filepath = Bundle.main.path(forResource: fileName, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                let ligandsRaw = contents.components(separatedBy: "\n");
                for ligand in ligandsRaw{
                    ligands.append(Protein(ligandName: ligand));
                }
            } catch (let e) {
                print(e)
            }
        } else {
            print("Something went wrong.");
        }
        
        return ligands
    }
}

