//
//  IMC.swift
//  IMC CALCULATOR
//
//  Created by LARHCHIM ISMAIL on 5/16/21.
//  Copyright © 2021 LARHCHIM ISMAIL. All rights reserved.
//

import Foundation
import UIKit

class IMC {
    
    var taille : Float
    
    var poids : Float
    
    var evaluation : Float {
        
        get {
            return poids/pow(taille, 2)
        }
        
    }
    
    var remarque : String {
        get {
            return calculer().0
        }
    }
    
    var couleur : UIColor {
        get {
            return calculer().1
        }
    }
    
    
    init( taille : Float, poid : Float) {
         
        self.taille = taille
        self.poids = poid
        
     }
    
    func calculer() ->(String,UIColor){
        
        var evaluation : Float {
            
            get {
                return poids/pow(taille, 2)
            }
            
        }
        
         switch evaluation {
               case 0..<18.5:
               return ("Poids faible: votre IMC =\(String(format: "%.2f",evaluation))",.black)
               case  18.5..<25:
                return ("Poids normale: votre IMC =\(String(format: "%.2f",evaluation))",.green)
               case 25..<30:
                return ("Surpoids: votre IMC =\(String(format: "%.2f",evaluation))",.yellow)
               case 30..<35:
                return("Obésité modérée: votre IMC =\(String(format: "%.2f",evaluation))",.cyan)
               case 35..<40:
                return("Obésité sévère: votre IMC =\(String(format: "%.2f",evaluation))",.red)
                default :
                return ("Obésité massive: votre IMC =\(String(format: "%.2f",evaluation))",.brown)
               }
        
    }
    

}


