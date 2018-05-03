//
//  Tema5ViewController.swift
//  Modulo1
//
//  Created by Jaime Lombana on 3/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class Tema5ViewController: UIViewController {
    
    
    
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
            
            titulo.text = "HERENCIA"
            descripcion.text = "En programación orientada a objetos, la herencia es, después de la agregación o composición, el mecanismo más utilizado para alcanzar algunos de los objetivos más preciados en el desarrollo de software como lo son la reutilización y la extensibilidad. A través de ella los diseñadores pueden crear nuevas clases partiendo de una clase o de una jerarquía de clases preexistente (ya comprobadas y verificadas) evitando con ello el rediseño, la modificación y verificación de la parte ya implementada. La herencia facilita la creación de objetos a partir de otros ya existentes e implica que una subclase obtiene todo el comportamiento (métodos) y eventualmente los atributos (variables) de su superclase.\nEs la relación entre una clase general y otra clase más específica. Por ejemplo: Si declaramos una clase párrafo derivada de una clase texto, todos los métodos y variables asociadas con la clase texto, son automáticamente heredados por la subclase párrafo.\nLa herencia es uno de los mecanismos de los lenguajes de programación orientada a objetos basados en clases, por medio del cual una clase se deriva de otra de manera que extiende su funcionalidad. La clase de la que se hereda se suele denominar clase base, clase padre, superclase, clase ancestro (el vocabulario que se utiliza suele depender en gran medida del lenguaje de programación).\nEn los lenguajes que cuentan con un sistema de tipos fuerte y estrictamente restrictivo con el tipo de datos de las variables, la herencia suele ser un requisito fundamental para poder emplear el Polimorfismo, al igual que un mecanismo que permita decidir en tiempo de ejecución qué método debe invocarse en respuesta a la recepción de un mensaje, conocido como enlace tardío (late binding) o enlace dinámico (dynamic binding). "
            
            
            btn_wilkipedia.setTitle("Fuente Wilkipedia",for: .normal)
            
        }else{
            
            
            titulo.text = "INHERITANCE"
            descripcion.text = "In object-oriented programming, inheritance is when an object or class is based on another object (prototypal inheritance) or class (class-based inheritance), using the same implementation. Inheritance in most class-based object-oriented languages is a mechanism in which one object acquires all the properties and behaviours of the parent object. Inheritance allows programmers to: create classes that are built upon existing classes,[1] to specify a new implementation to maintain the same behaviour (realizing an interface), to reuse code and to independently extend original software via public classes and interfaces. The relationships of objects or classes through inheritance give rise to a directed graph.\nAn inherited class is called a subclass of its parent class or super class. The term \"inheritance\" is loosely used for both class-based and prototype-based programming, but in narrow use is reserved for class-based programming (one class inherits from another), with the corresponding technique in prototype-based programming being instead called delegation (one object delegates to another).\nInheritance should not be confused with subtyping.[2][3] In some languages inheritance and subtyping agree,[a] whereas in others they differ; in general, subtyping establishes an is-a relationship, whereas inheritance only reuses implementation and establishes a syntactic relationship, not necessarily a semantic relationship (inheritance does not ensure behavioral subtyping). To distinguish these concepts, subtyping is also known as interface inheritance, whereas inheritance as defined here is known as implementation inheritance or code inheritance.[4] Still, inheritance is a commonly used mechanism for establishing subtype relationships.\nInheritance is contrasted with object composition, where one object contains another object (or objects of one class contain objects of another class); see composition over inheritance. Composition implements a has-a relationship, in contrast to the is-a relationship of subtyping."
            
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
            
            let url = URL(string: "https://es.wikipedia.org/wiki/Herencia_(informatica)")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let url = URL(string: "https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
}
