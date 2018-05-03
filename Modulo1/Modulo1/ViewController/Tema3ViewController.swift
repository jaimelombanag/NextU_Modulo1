//
//  Tema3ViewController.swift
//  Modulo1
//
//  Created by Jaime Lombana on 3/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class Tema3ViewController: UIViewController {
    
    
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
            
            titulo.text = "COMENTARIO"
            descripcion.text = "En la programación de computadoras, un comentario es una construcción del lenguaje de programación1​ destinada a incrustar anotaciones legibles al programador en el código fuente de un Programa informático.2​ Estas anotaciones son potencialmente significativas para los programadores, pero usualmente ignorados por los compiladores e intérpretes.3​4​ Los comentarios son añadidos usualmente con el propósito de hacer el código fuente más fácil de entender con vistas a su mantenimiento o reutilización. La sintaxis y reglas para los comentarios varían y usualmente son definidas en la especificación del lenguaje de programación.\nSe ha de tener en cuenta que los comentarios necesitan mantenimiento igual que el código y, por tanto, que un comentario preciso y conciso es más fácil de mantener que uno largo, repetitivo y complicado.\nLos comentarios tienen una amplia gama de posibles usos: desde la mejora del código fuente con descripciones básicas hasta la generación de documentación externa. También se utilizan para la integración con sistemas de control de versiones y otros tipos de herramientas de programación externas.\nLa flexibilidad proporcionada por los comentarios da pie a un amplio abanico de formas de uso distintas y a la inclusión de información inútil dentro del código fuente. Para evitar este inconveniente, muchos programadores y analistas de software adoptan alguna de las \"filosofías\" o metodologías para la correcta utilización de los comentarios.  "
            
            
            btn_wilkipedia.setTitle("Fuente Wilkipedia",for: .normal)
            
        }else{
            
            
            titulo.text = "COMMENT"
            descripcion.text = "For comments in Wikipedia markup, see Help:Wiki markup#Character formatting and WP:COMMENT.\nAn illustration of Java source code with prologue comments indicated in red and inline comments in green. Program code is in blue.\nIn computer programming, a comment is a programmer-readable explanation or annotation in the source code of a computer program. They are added with the purpose of making the source code easier for humans to understand, and are generally ignored by compilers and interpreters.[1][2] The syntax of comments in various programming languages varies considerably.\nComments are sometimes processed in various ways to generate documentation external to the source code itself by documentation generators, or used for integration with source code management systems and other kinds of external programming tools.\nThe flexibility provided by comments allows for a wide degree of variability, but formal conventions for their use are commonly part of programming style guides."
            
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
            
            let url = URL(string: "https://es.wikipedia.org/wiki/Comentario_(informatica)")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let url = URL(string: "https://en.wikipedia.org/wiki/Comment_(computer_programming)")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }

}
