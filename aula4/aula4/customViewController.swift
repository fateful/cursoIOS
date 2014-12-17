//
//  customViewController.swift
//  aula4
//
//  Created by Devios on 17/12/14.
//  Copyright (c) 2014 Daniel 'FatefuL' Pedrosa. All rights reserved.
//


import UIKit

class customViewController: UIViewController {
    var cartaImage: UIImageView! = UIImageView()

    
    var anterior = 0
    let listaDeImagens = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     carregar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func carregar(){
    /*    var label = UILabel(frame: CGRect(x:20,y:20,width:100,height:100))
        label.text = "hOOray!"
        label.backgroundColor=UIColor.redColor()
        super.view.addSubview(label)
      */
              cartaImage.image = UIImage(named:"Ace")
        cartaImage.frame = CGRect(x:100,y:100,width:100,height:100)
        super.view.addSubview(cartaImage)
        mudarCartaButton.addTarget(self, action: "aleatorio", forControlEvents: .TouchUpInside)
        
    }
    
    @IBOutlet weak var mudarCartaButton: UIButton!
    
  
    func aleatorio(){
        var cartaRandom = 0
       
        while(anterior == cartaRandom){
            
            cartaRandom = Int(arc4random_uniform(13))
        }
        
        anterior = cartaRandom

        cartaImage.image = UIImage(named:listaDeImagens[cartaRandom])
    }
    
}