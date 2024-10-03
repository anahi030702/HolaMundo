//
//  ViewController.swift
//  HolaMundo
//
//  Created by imac on 25/09/24.
//

import UIKit

class ViewController: UIViewController {

    // si no aparece como weak es porque es strong
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var lblSaludo: UILabel!
    
    @IBOutlet weak var swtImagen: UISwitch!
    
    @IBOutlet weak var lblTransparencia: UILabel!
    
    @IBOutlet weak var sldTransparencia: UISlider!
    
    @IBOutlet weak var imvSaludo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mostrarSaludo() {
        if txtNombre.text!.count >= 2{
            lblSaludo.text = "Bienvenido \(txtNombre.text!) "
            imvSaludo.isHidden = false
            swtImagen.isHidden = false
            sldTransparencia.isHidden = false
            lblTransparencia.isHidden = false
            
            txtNombre.resignFirstResponder()
        }
    }
    
    @IBAction func cambiarColor(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .blue
        case 2:
            view.backgroundColor = .green
        case 3:
            view.backgroundColor = .yellow
        default:
            view.backgroundColor = .gray
        }
    }
    
    @IBAction func ocultarImagen() {
        imvSaludo.isHidden = !swtImagen.isOn
    }
    
    @IBAction func cambiarTransparencia() {
    }
}

