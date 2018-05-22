//
//  TipoIdioma.swift
//  Modulo1_Xcode8
//
//  Created by Jaime Lombana on 10/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import Foundation

class TipoIdioma {
    
    static var idioma = "ingles"
    
    
    class func changueLenguage(lenguague : String) -> String  {
        
        print("La clase TipoIdioma el idioma es: ", idioma)
        idioma = lenguague
        return idioma
    }
    
    
    func setLenguage() -> String {
        print("La clase TipoIdioma el idioma es: ", TipoIdioma.idioma)
        let idiomaActual = TipoIdioma.idioma
        return idiomaActual
    }
    
}
