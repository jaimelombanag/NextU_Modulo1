//
//  Tema1ViewController.swift
//  Modulo1_Xcode8
//
//  Created by Jaime Lombana on 10/05/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class Tema1ViewController: UIViewController {

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
            
            titulo.text = "ALGORITMO"
            descripcion.text = "En matemáticas, lógica, ciencias de la computación y disciplinas relacionadas, un algoritmo (del griego y latín, dixit algorithmus y este del griego arithmos, que significa «número», quizá también con influencia del nombre del matemático persa Al-Juarismi)1​ es un conjunto prescrito de instrucciones o reglas bien definidas, ordenadas y finitas que permite llevar a cabo una actividad mediante pasos sucesivos que no generen dudas a quien deba hacer dicha actividad.2​ Dados un estado inicial y una entrada, siguiendo los pasos sucesivos se llega a un estado final y se obtiene una solución. Los algoritmos son el objeto de estudio de la algoritmia. \n En la vida cotidiana, se emplean algoritmos frecuentemente para resolver problemas. Algunos ejemplos son los manuales de usuario, que muestran algoritmos para usar un aparato, o las instrucciones que recibe un trabajador de su patrón. Algunos ejemplos en matemática son el algoritmo de multiplicación, para calcular el producto, el algoritmo de la división para calcular el cociente de dos números, el algoritmo de Euclides para obtener el máximo común divisor de dos enteros positivos, o el método de Gauss para resolver un sistema de ecuaciones lineales. \n En términos de programación, un algoritmo es una secuencia de pasos lógicos que permiten solucionar un problema. "
            
            
            btn_wilkipedia.setTitle("Fuente Wilkipedia",for: .normal)
            
        }else{
            
            
            titulo.text = "ALGORITHM"
            descripcion.text = "In mathematics and computer science, an algorithm (/ˈælɡərɪðəm/ (About this sound listen) AL-gə-ridh-əm) is an unambiguous specification of how to solve a class of problems. Algorithms can perform calculation, data processing and automated reasoning tasks. \nAs an effective method, an algorithm can be expressed within a finite amount of space and time[1] and in a well-defined formal language[2] for calculating a function.[3] Starting from an initial state and initial input (perhaps empty),[4] the instructions describe a computation that, when executed, proceeds through a finite[5] number of well-defined successive states, eventually producing  and terminating at a final ending state. The transition from one state to the next is not necessarily deterministic; some algorithms, known as randomized algorithms, incorporate random input. \nThe concept of algorithm has existed for centuries and the use of the concept can be ascribed to Greek mathematicians, e.g. the sieve of Eratosthenes and Euclid's algorithm;[8] the term algorithm itself derives from the 9th Century mathematician Muḥammad ibn Mūsā al'Khwārizmī, latinized 'Algoritmi'. A partial formalization of what would become the modern notion of algorithm began with attempts to solve the Entscheidungsproblem (the decision problem) posed by David Hilbert in 1928. Subsequent formalizations were framed as attempts to define effective calculability or effective method those formalizations included the Gödel–Herbrand–Kleene recursive functions of 1930, 1934 and 1935, Alonzo Church's lambda calculus of 1936, Emil Post's Formulation 1 of 1936, and Alan Turing's Turing machines of 1936–7 and 1939."
            
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
            
            let url = URL(string: "https://es.wikipedia.org/wiki/Algoritmo")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let url = URL(string: "https://en.wikipedia.org/wiki/Algorithm")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
    

}
