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
    var cartaImage2: UIImageView! = UIImageView()
    var cartaImage3: UIImageView! = UIImageView()

    @IBOutlet weak var comprarButton: UIButton!
    @IBOutlet weak var saldoEditText: UITextField!
    
    var saldo = 5.00
    
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
       self.saldoEditText.enabled = false
        
        saldoEditText.text = String(format:"%.2f", saldo)
        
        let largura = (super.view.frame.width-80)/3
        let altura = super.view.frame.height/6
        
           cartaImage.image = UIImage(named:"Ace")
        cartaImage.frame = CGRect(x: 20,y:self.view.center.y-100,width:largura,height:altura)
        
        super.view.addSubview(cartaImage)
        
        cartaImage2.image = UIImage(named:"Ace")
        cartaImage2.frame = CGRect(x:cartaImage.frame.width+20,y:self.view.center.y-100 ,width:largura,height:altura)
        super.view.addSubview(cartaImage2)
        
        
        cartaImage3.image = UIImage(named:"Ace")
        cartaImage3.frame = CGRect(x:cartaImage2.frame.width+140,y:self.view.center.y-100,width:largura,height:altura)
        super.view.addSubview(cartaImage3)

        
        mudarCartaButton.addTarget(self, action: "aleatorio", forControlEvents: .TouchUpInside)
        comprarButton.addTarget(self, action: "compra", forControlEvents: .TouchUpInside)
    }
    
    @IBOutlet weak var mudarCartaButton: UIButton!
    
    func compra(){
        saldo += 100
        saldoEditText.text = String(format:"%.2f", saldo)
    
    }
  
    func aleatorio(){
        
        if saldo < 5{
            var alert = UIAlertController(title: "Pobre!", message: "Você tem apenas R$ "+self.saldoEditText.text+" e não pode mais jogar, compre créditos pra seguir adiante.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

            return
        }
        
        var cartaRandom = 0
        var cartaRandom2 = 0
        var cartaRandom3 = 0
       
      //  while(anterior == cartaRandom){
            
            cartaRandom = Int(arc4random_uniform(13))
            cartaRandom2 = Int(arc4random_uniform(13))
            cartaRandom3 = Int(arc4random_uniform(13))
            
        //}
        
        //anterior = cartaRandom

        cartaImage.image = UIImage(named:listaDeImagens[cartaRandom])
        cartaImage2.image = UIImage(named:listaDeImagens[cartaRandom2])
        cartaImage3.image = UIImage(named:listaDeImagens[cartaRandom3])
        
        saldo -= 5.00
        saldoEditText.text = String(format:"%.2f", saldo)
        
        if(cartaRandom == cartaRandom2 && cartaRandom == cartaRandom3){
            
            var alert = UIAlertController(title: "Parabéns!", message: "É TETRA, PORRA! Você acaba de ganhar mais R$ 666,00", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Aí como to filiz! :)", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            saldo+=666.00
            saldoEditText.text = String(format:"%.2f", saldo)
        }
    }
    
}