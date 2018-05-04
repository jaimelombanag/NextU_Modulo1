//
//  MaterTableViewController.swift
//  Modulo1
//
//  Created by Jaime Lombana on 3/05/18.
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
  
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
