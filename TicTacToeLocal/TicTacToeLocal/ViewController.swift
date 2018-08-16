//
//  ViewController.swift
//  TicTacToeLocal
//
//  Created by Jonathan Cochran on 8/9/18.
//  Copyright © 2018 Jonathan Cochran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSelectEvent(_ sender: Any) {
        let btnSelect = sender as! UIButton
        playGame(btnSelect: btnSelect)
    }
    
    var activePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    func playGame(btnSelect:UIButton){
        if activePlayer == 1 {
            btnSelect.setTitle("X", for: UIControlState.normal)
            btnSelect.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 75/255, alpha: 0.5)
            player1.append(btnSelect.tag)
            activePlayer = 2
            print(player1)
        }else{
            btnSelect.setTitle("O", for: UIControlState.normal)
            btnSelect.backgroundColor = UIColor(red: 88/255, green: 231/255, blue: 147/255, alpha: 0.5)
            player2.append(btnSelect.tag)
            activePlayer = 1
            print(player2)
        }
        btnSelect.isEnabled = false
        findWinner()
    }
    
    func findWinner(){
        var winner = -1
        
        //Mark winner for if utilized row1
        if (player1.contains(1) && player1.contains(2) && player1.contains(3)){
            winner = 1
        }
        
        if (player2.contains(1) && player2.contains(2) && player2.contains(3)){
            winner = 2
        }
        
        //Mark winner for if utilized row2
        if (player1.contains(4) && player1.contains(5) && player1.contains(6)){
            winner = 1
        }
        
        if (player2.contains(4) && player2.contains(5) && player2.contains(6)){
            winner = 2
        }
        
        //Mark winner for if utilized row3
        if (player1.contains(7) && player1.contains(8) && player1.contains(9)){
            winner = 1
        }
        
        if (player2.contains(7) && player2.contains(8) && player2.contains(9)){
            winner = 2
        }
        
        //Mark winner for if utilized col1
        if (player1.contains(1) && player1.contains(4) && player1.contains(7)){
            winner = 1
        }
        
        if (player2.contains(1) && player2.contains(4) && player2.contains(7)){
            winner = 2
        }
        
        //Mark winner for if utilized col2
        if (player1.contains(2) && player1.contains(5) && player1.contains(8)){
            winner = 1
        }
        
        if (player2.contains(2) && player2.contains(5) && player2.contains(8)){
            winner = 2
        }
        
        //Mark winner for if utilized col3
        if (player1.contains(3) && player1.contains(6) && player1.contains(9)){
            winner = 1
        }
        
        if (player2.contains(3) && player2.contains(6) && player2.contains(9)){
            winner = 2
        }
        
        //diagonal left
        if (player1.contains(1) && player1.contains(5) && player1.contains(9)){
            winner = 1
        }
        
        if (player2.contains(1) && player2.contains(5) && player2.contains(9)){
            winner = 2
        }
        
        //diagonal right
        
        if (player1.contains(3) && player1.contains(5) && player1.contains(7)){
            winner = 1
        }
        
        if (player2.contains(3) && player2.contains(5) && player2.contains(7)){
            winner = 2
        }
        
        if winner != -1 {
            var msg = ""
            if winner == 1 {
                msg = "first player wins"
            }else{
                msg = "second player wins"
            }
            //print(msg)
            let alert = UIAlertController(title: "WINNER", message: msg, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
}

