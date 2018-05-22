//
//  MaterTableViewController.swift
//  Modulo1_Xcode8
//
//  Created by Jaime Lombana on 10/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class MaterTableViewController: UITableViewController {

    @IBOutlet weak var Termino1: UILabel!
    @IBOutlet weak var Termino2: UILabel!
    @IBOutlet weak var Termino3: UILabel!
    @IBOutlet weak var Termino4: UILabel!
    @IBOutlet weak var Termino5: UILabel!
    @IBOutlet weak var lenguaje: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let tipoLnguaje = TipoIdioma()
        var rta = tipoLnguaje.setLenguage()
        print("El Lenguaje Actual es: ", rta)
        
        
        if(rta == "español"){
            
            Termino1.text = "Algoritmo"
            Termino2.text = "Uml"
            Termino3.text = "Comentario"
            Termino4.text = "Lenguaje de Programacion"
            Termino5.text = "Herencia"
            lenguaje.text = "Cambio de Idioma"
            
            
        }else{
            
            Termino1.text = "Algorithm"
            Termino2.text = "Uml"
            Termino3.text = "Comment"
            Termino4.text = "Programming Language"
            Termino5.text = "Inheritance"
            lenguaje.text = "Change of language"
            
        }
        
        tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        print("=====================================,  ",  section)
        
        if section == 0 {
            return 5
        }else{
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.lightGray
        
        let tipoLnguaje = TipoIdioma()
        
        if(tipoLnguaje.setLenguage() == "español" ){
            
            let headerLabel = UILabel(frame: CGRect(x: 30, y: 0, width:
                tableView.bounds.size.width, height: tableView.bounds.size.height))
            headerLabel.font = UIFont(name: "Verdana", size: 20)
            headerLabel.textColor = UIColor.white
            
            if section == 0 {
                headerLabel.text = "TERMINOS"
            }else{
                headerLabel.text = "CONFIGURACIÓN"
            }
            
            
            headerLabel.sizeToFit()
            headerView.addSubview(headerLabel)
            
            return headerView
        }else{
            let headerLabel = UILabel(frame: CGRect(x: 30, y: 0, width:
                tableView.bounds.size.width, height: tableView.bounds.size.height))
            headerLabel.font = UIFont(name: "Verdana", size: 20)
            headerLabel.textColor = UIColor.white
            if section == 0 {
                headerLabel.text = "TERMS"
            }else{
                headerLabel.text = "SETTINGS"
            }
            headerLabel.sizeToFit()
            headerView.addSubview(headerLabel)
            return headerView
        }
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
}
