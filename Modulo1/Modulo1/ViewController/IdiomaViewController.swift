//
//  IdiomaViewController.swift
//  Modulo1
//
//  Created by Jaime Lombana on 3/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class IdiomaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
