//
//  ViewController.swift
//  Actividad4iOS
//
//  Created by Maricarmen Pedro on 16/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    var operacion = 0
    var primerNumero = ""
    var segundoNumero = ""
    
    @IBOutlet weak var pantalla: UITextField!
    
    @IBOutlet weak var siete: UIButton!
    
    @IBOutlet weak var cuatro: UIButton!
    
    @IBOutlet weak var uno: UIButton!

    @IBOutlet weak var ocho: UIButton!
    
    @IBOutlet weak var cinco: UIButton!
    
    @IBOutlet weak var dos: UIButton!
    
    @IBOutlet weak var nueve: UIButton!
    
    @IBOutlet weak var seis: UIButton!
    
    @IBOutlet weak var tres: UIButton!
    
    @IBOutlet weak var cero: UIButton!
    
    @IBOutlet weak var limpiar: UIButton!
    
    @IBOutlet weak var division: UIButton!
    
    @IBOutlet weak var multiplicacion: UIButton!
    
    @IBOutlet weak var resta: UIButton!
    
    @IBOutlet weak var suma: UIButton!
    
    @IBOutlet weak var igual: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func num7(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "7"
    }
    
    @IBAction func num4(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "4"
    }
    
    @IBAction func num1(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "1"
    }
    
    @IBAction func num8(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "8"
    }
    
    @IBAction func num5(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "5"
    }
    
    @IBAction func num2(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "2"
    }
    
    @IBAction func num9(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "9"
    }
    
    @IBAction func num6(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "6"
    }
    
    @IBAction func num3(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "3"
    }
    
    @IBAction func num0(_ sender: UIButton) {
        pantalla.text = pantalla.text! + "0"
    }
    
    @IBAction func blimpiar(_ sender: UIButton) {
        primerNumero = ""
        segundoNumero = ""
        operacion = 0
        pantalla.text = ""
    }
    
    @IBAction func Div(_ sender: UIButton) {
        primerNumero = pantalla.text!
        operacion = 1
        pantalla.text = ""
    }
    
    @IBAction func multi(_ sender: UIButton) {
        primerNumero = pantalla.text!
        operacion = 2
        pantalla.text = ""
    }
    
    @IBAction func rest(_ sender: UIButton) {
        primerNumero = pantalla.text!
        operacion = 3
        pantalla.text = ""
    }
    
    @IBAction func sum(_ sender: UIButton) {
        primerNumero = pantalla.text!
        operacion = 4
        pantalla.text = ""
    }
    
    @IBAction func blgual(_ sender: UIButton) {
        guard let num1 = Int(primerNumero), let num2 = Int((pantalla.text ?? "")) else {
                    pantalla.text = "Error"
                    return
                }

                switch operacion {
                case 1:
                    if num2 != 0 {
                        pantalla.text = "\(num1 / num2)"
                    } else {
                        pantalla.text = "Error"
                    }
                case 2:
                    pantalla.text = "\(num1 * num2)"
                case 3:
                    pantalla.text = "\(num1 - num2)"
                case 4:
                    pantalla.text = "\(num1 + num2)"
                default:
                    pantalla.text = "Error"
        }
    }
    
}
