//
//  ViewController.swift
//  exemplos1
//
//  Created by Devios on 15/12/14.
//  Copyright (c) 2014 Daniel 'FatefuL' Pedrosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saudacaoEditText: UITextField!
    
    @IBOutlet weak var nomeEditText: UITextField!
    
    @IBOutlet weak var resultadoEditText: UILabel!
    
    @IBOutlet weak var textoBotao: UIButton!
    @IBAction func clickMudanca(sender: UIButton) {
        
        resultadoEditText.hidden = false
        resultadoEditText.text = saudacaoEditText.text + " " + nomeEditText.text
        nomeEditText.text = nil
        saudacaoEditText.text = nil
        
        saudacaoEditText.resignFirstResponder()
        nomeEditText.resignFirstResponder()

        resultadoEditText.textColor = UIColor.redColor()
        textoBotao.setTitle("Opa", forState:UIControlState.Normal )
        textoBotao.setTitle("Pressionado", forState:UIControlState.Highlighted )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

