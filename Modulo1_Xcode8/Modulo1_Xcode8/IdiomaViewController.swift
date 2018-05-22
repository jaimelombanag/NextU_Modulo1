//
//  IdiomaViewController.swift
//  Modulo1_Xcode8
//
//  Created by Jaime Lombana on 10/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class IdiomaViewController: UIViewController {

    @IBOutlet weak var btn_espanol: UIButton!
    @IBOutlet weak var btn_ingles: UIButton!
    @IBOutlet weak var lbl_titulo: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let tipoLnguaje = TipoIdioma()
        var rta = tipoLnguaje.setLenguage()
        print("El Lenguaje Actual es: ", rta)
        
        
        if(rta == "español"){
            
            
            btn_espanol.setTitle("ESPAÑOL",for: .normal)
            btn_ingles.setTitle("INGLES",for: .normal)
            lbl_titulo.text = "Seleccione idioma de su preferencia."
            
            
            
        }else{
            
            btn_espanol.setTitle("SPANISH",for: .normal)
            btn_ingles.setTitle("ENGLISH",for: .normal)
            lbl_titulo.text = "Select lenguage of your preference"
            
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func idiomaEspanol(_ sender: Any) {
        
        TipoIdioma.changueLenguage(lenguague: "español")
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func idiomaIngles(_ sender: Any) {
        
        TipoIdioma.changueLenguage(lenguague: "ingles")
        self.dismiss(animated: true, completion: nil)
    }


}
