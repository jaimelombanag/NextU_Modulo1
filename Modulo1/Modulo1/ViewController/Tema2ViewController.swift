//
//  Tema2ViewController.swift
//  Modulo1
//
//  Created by Jaime Lombana on 3/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class Tema2ViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descripcion: UITextView!
    @IBOutlet weak var btn_wilkipedia: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        let tipoLenguaje = TipoIdioma()
        print("========Este es el lenguaje: ", tipoLenguaje.setLenguage())
        
        if( tipoLenguaje.setLenguage() == "español" ){
            
            titulo.text = "LENGUAJE UNIFICADO DE MODELADO"
            descripcion.text = "El lenguaje unificado de modelado (UML, por sus siglas en inglés, Unified Modeling Language) es el lenguaje de modelado de sistemas de software más conocido y utilizado en la actualidad; está respaldado por el Object Management Group (OMG). \nEs un lenguaje gráfico para visualizar, especificar, construir y documentar un sistema. UML ofrece un estándar para describir un plano del sistema (modelo), incluyendo aspectos conceptuales tales como procesos, funciones del sistema, y aspectos concretos como expresiones de lenguajes de programación, esquemas de bases de datos y compuestos reciclados.\nEs importante remarcar que UML es un lenguaje de modelado para especificar o para describir métodos o procesos. Se utiliza para definir un sistema, para detallar los artefactos en el sistema y para documentar y construir. En otras palabras, es el lenguaje en el que está descrito el modelo.\nSe puede aplicar en el desarrollo de software gran variedad de formas para dar soporte a una metodología de desarrollo de software (tal como el Proceso Unificado Racional, Rational Unified Process o RUP), pero no especifica en sí mismo qué metodología o proceso usar.\nUML no puede compararse con la programación estructurada, pues UML significa Lenguaje Unificado de Modelado, no es programación, solo se diagrama la realidad de una utilización en un requerimiento. Mientras que programación estructurada es una forma de programar como lo es la orientación a objetos, la programación orientada a objetos viene siendo un complemento perfecto de UML, pero no por eso se toma UML solo para lenguajes orientados a objetos.\nUML cuenta con varios tipos de diagramas, los cuales muestran diferentes aspectos de las entidades representadas. "
            
            
            btn_wilkipedia.setTitle("Fuente Wilkipedia",for: .normal)
            
        }else{
            
            
            titulo.text = "UNIFIED MODELING LANGUAGE"
            descripcion.text = "He Unified Modeling Language (UML) is a general-purpose, developmental, modeling language in the field of software engineering, that is intended to provide a standard way to visualize the design of a system.\nThe creation of UML was originally motivated by the desire to standardize the disparate notational systems and approaches to software design. It was developed by Grady Booch, Ivar Jacobson and James Rumbaugh at Rational Software in 1994–1995, with further development led by them through 1996.\nIn 1997 UML was adopted as a standard by the Object Management Group (OMG), and has been managed by this organization ever since. In 2005 UML was also published by the International Organization for Standardization (ISO) as an approved ISO standard.[2] Since then the standard has been periodically revised to cover the latest revision of UML."
            
            btn_wilkipedia.setTitle("Source Wilkipedia",for: .normal)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func urlWilkipedia(_ sender: Any) {
        
        let tipoLenguaje = TipoIdioma()
        print("========Este es el lenguaje: ", tipoLenguaje.setLenguage())
        if( tipoLenguaje.setLenguage() == "español" ){
            
            let url = URL(string: "https://es.wikipedia.org/wiki/Lenguaje_unificado_de_modelado")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let url = URL(string: "https://en.wikipedia.org/wiki/Unified_Modeling_Language")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }


}
