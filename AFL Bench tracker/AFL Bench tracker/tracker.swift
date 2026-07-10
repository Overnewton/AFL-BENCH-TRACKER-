//
//  tracker.swift
//  AFL Bench tracker
//
//  Created by Angus McKay on 8/7/2026.
//

import UIKit

class HomeScreen: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
  
    
    
   
    
    
    //inputs
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtPosition: UITextField!
  
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var segStatus: UISegmentedControl!
    //outputs
   
    @IBOutlet weak var tblPlayers: UITableView!
    
    @IBAction func btnAdd(_ sender: Any) {
        let newPlayer: Player = Player(name: txtName.text!, number: Int(txtNumber.text!)!, position: txtPosition.text!, period: segStatus.selectedSegmentIndex, timeoff: Timer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true), timeon: Timer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true))
        playerList.append(newPlayer)
        tblPlayers.reloadData()
        
    }
    
    @objc func fireTimer() {
        print("Timer fired!")
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //ensure the cell identifier has been labelled "cell"
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = playerList[indexPath.row].toString()
       
        
        
        
        
        return cell
    }
        //tableview functions
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
          }
    
    
}
