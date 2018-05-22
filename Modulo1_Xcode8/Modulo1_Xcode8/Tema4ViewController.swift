//
//  Tema4ViewController.swift
//  Modulo1_Xcode8
//
//  Created by Jaime Lombana on 10/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class Tema4ViewController: UIViewController {

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
            
            titulo.text = "LENGUAJE DE PROGRAMACION"
            descripcion.text = "Un lenguaje de programación es un lenguaje formal que especifica una serie de instrucciones para que una computadora produzca diversas clases de datos. Los lenguajes de programación pueden usarse para crear programas que pongan en práctica algoritmos específicos que controlen el comportamiento físico y lógico de una computadora.\nEstá formado por un conjunto de símbolos y reglas sintácticas y semánticas que definen su estructura y el significado de sus elementos y expresiones. Al proceso por el cual se escribe, se prueba, se depura, se compila (de ser necesario) y se mantiene el código fuente de un programa informático se le llama programación.\nTambién la palabra programación se define como el proceso de creación de un programa de computadora, mediante la aplicación de procedimientos lógicos, a través de los siguientes pasos:\nEl desarrollo lógico del programa para resolver un problema en particular.\nEscritura de la lógica del programa empleando un lenguaje de programación específico (codificación del programa).\nEnsamblaje o compilación del programa hasta convertirlo en lenguaje de máquina.\nPrueba y depuración del programa.\nDesarrollo de la documentación.\nExiste un error común que trata por sinónimos los términos 'lenguaje de programación' y 'lenguaje informático'. Los lenguajes informáticos engloban a los lenguajes de programación y a otros más, como por ejemplo HTML (lenguaje para el marcado de páginas web que no es propiamente un lenguaje de programación, sino un conjunto de instrucciones que permiten estructurar el contenido de los documentos).\nPermite especificar de manera precisa sobre qué datos debe operar una computadora, cómo deben ser almacenados o transmitidos y qué acciones debe tomar bajo una variada gama de circunstancias. Todo esto, a través de un lenguaje que intenta estar relativamente próximo al lenguaje humano o natural. Una característica relevante de los lenguajes de programación es precisamente que más de un programador pueda usar un conjunto común de instrucciones que sean comprendidas entre ellos para realizar la construcción de un programa de forma colaborativa. "
            
            
            btn_wilkipedia.setTitle("Fuente Wilkipedia",for: .normal)
            
        }else{
            
            
            titulo.text = "PROGRAMMING LANGUAGE"
            descripcion.text = "A programming language is a formal language that specifies a set of instructions that can be used to produce various kinds of output. Programming languages generally consist of instructions for a computer. Programming languages can be used to create programs that implement specific algorithms.\nThere are programmable machines that use a limited set of specific instructions, rather than the general programming languages of modern computers. Early ones preceded the invention of the digital computer, the first probably being the automatic flute player described in the 9th century by the brothers Musa in Baghdad, during the Islamic Golden Age.[1] From the early 1800s, programs were used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[2] However, their programs (such as a player piano's scrolls) could not produce different behavior in response to some input or condition.\nThousands of different programming languages have been created, mainly in the computer field, and many more still are being created every year. Many programming languages require computation to be specified in an imperative form (i.e., as a sequence of operations to perform) while other languages use other forms of program specification such as the declarative form (i.e. the desired result is specified, not how to achieve it).\nThe description of a programming language is usually split into the two components of syntax (form) and semantics (meaning). Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard) while other languages (such as Perl) have a dominant implementation that is treated as a reference. Some languages have both, with the basic language defined by a standard and extensions taken from the dominant implementation being common."
            
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
            
            let url = URL(string: "https://es.wikipedia.org/wiki/Lenguaje_de_programacion")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let url = URL(string: "https://en.wikipedia.org/wiki/Programming_language")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
}
