//
//  ViewController.swift
//  TicTacToe
//
//  Created by admin on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btTopL: UIButton!
    @IBOutlet weak var btTopC: UIButton!
    @IBOutlet weak var btTopR: UIButton!
    
    @IBOutlet weak var btCenterL: UIButton!
    @IBOutlet weak var btCenterC: UIButton!
    @IBOutlet weak var btCenterR: UIButton!
    
    
    @IBOutlet weak var btBottomR: UIButton!
    @IBOutlet weak var btBottomL: UIButton!
    @IBOutlet weak var btBottomC: UIButton!
    
    var player1Or2 = true
    var draw = 0
    
    @IBAction func btBottomR(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    @IBAction func btBottomC(_ sender: UIButton) { //
        changeColor(sender: sender)
    }
    @IBAction func btBottomL(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    @IBAction func btCenterR(_ sender: UIButton) { //
        changeColor(sender: sender)
    }
    @IBAction func btCenterC(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    @IBAction func btCenterL(_ sender: UIButton) {
        changeColor(sender: sender)
    }

    @IBAction func btTopR(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    @IBAction func btTopC(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    @IBAction func btTopL(_ sender: UIButton) {
        changeColor(sender: sender)
    }
    

    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func resetBt(_ sender: UIButton) {
        player1Or2 = true
        draw = 0
        start()
    }
    
    func checkWin() -> Bool{
        if(btTopL.backgroundColor == btTopC.backgroundColor && btTopL.backgroundColor == btTopR.backgroundColor && !(btTopL.backgroundColor == UIColor.gray)){
             return true
         }
         if(btCenterL.backgroundColor == btCenterC.backgroundColor && btCenterL.backgroundColor == btCenterR.backgroundColor
         && !(btCenterL.backgroundColor == UIColor.gray)
         ){
             return true
         }
         if(btBottomL.backgroundColor == btBottomC.backgroundColor && btBottomL.backgroundColor == btBottomR.backgroundColor
            && !(btBottomL.backgroundColor == UIColor.gray)
         ){
             return true
         }
         if(btTopL.backgroundColor == btCenterL.backgroundColor &&
            btTopL.backgroundColor == btBottomL.backgroundColor
            && !(btTopL.backgroundColor == UIColor.gray)

         ){
             return true
         }
         if(btTopC.backgroundColor == btCenterC.backgroundColor &&
            btTopC.backgroundColor == btBottomC.backgroundColor
            && !(btTopC.backgroundColor == UIColor.gray)
         ){
             return true
         }
         if(btTopR.backgroundColor == btCenterR.backgroundColor &&
            btTopR.backgroundColor == btBottomR.backgroundColor
            && !(btTopR.backgroundColor == UIColor.gray)

         ){
             return true
         }
         if(btTopL.backgroundColor == btCenterC.backgroundColor &&
            btTopL.backgroundColor == btBottomR.backgroundColor
            && !(btTopL.backgroundColor == UIColor.gray)

         ){
    
             return true
         }
         if(btBottomL.backgroundColor == btCenterC.backgroundColor && btBottomL.backgroundColor == btTopR.backgroundColor
            && !(btBottomL.backgroundColor == UIColor.gray)

         ){
             return true
         }
         return false
     }
    
    func start(){
        winnerLabel.isHidden=true
        btBottomR.backgroundColor = UIColor.gray
        btBottomC.backgroundColor=UIColor.gray
        btBottomL.backgroundColor = UIColor.gray
        btTopC.backgroundColor=UIColor.gray
        btTopL.backgroundColor = UIColor.gray
        btTopR.backgroundColor=UIColor.gray
        btCenterC.backgroundColor = UIColor.gray
        btCenterL.backgroundColor=UIColor.gray
        btCenterR.backgroundColor = UIColor.gray
    }
    
     func gameOver(player: Int){
        if(player>0){
            winnerLabel.isHidden = false
            winnerLabel.text = "Player \(player) Wins!"
        }else{
            winnerLabel.isHidden = false
            winnerLabel.text = "Draw"
        }
    }

    func changeColor(sender: UIButton){
        draw += 1
        if(player1Or2){
            sender.backgroundColor = UIColor.blue
            if(checkWin()){
                gameOver(player: 1)
            }else{
            player1Or2 = false
            }
        }else{
            sender.backgroundColor = UIColor.red
            if(checkWin()){
                gameOver(player: 2)
            }else{
            player1Or2 = true
            }
        }
        if(draw==9){
            gameOver(player: 0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        start()
    }

}

