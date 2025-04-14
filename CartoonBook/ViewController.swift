//
//  ViewController.swift
//  CartoonBook
//
//  Created by Esra Arı on 14.04.2025.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  


    @IBOutlet weak var tableView: UITableView!
    
    var myCartoons = [Cartoons]()
    var choosenCartoon : Cartoons?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // cartoon objects
        let arthur = Cartoons(img:UIImage(named: "arthur")!, name: "Arthur", episode: "253")
        let avatar = Cartoons(img: UIImage(named: "avatar")!, name: "Avatar the Last Airbender", episode: "61")
        let adventureTime = Cartoons(img: UIImage(named: "adventure-time")!, name: "Adventure Time", episode: "283")
        let regularShow = Cartoons(img: UIImage(named: "regular-show")!, name: "Regular Show", episode: "261")
        let scoobyDoo = Cartoons(img: UIImage(named: "scooby-doo")!, name: "Scooby Doo", episode: "414")
        myCartoons.append(arthur)
        myCartoons.append(avatar)
        myCartoons.append(adventureTime)
        myCartoons.append(regularShow)
        myCartoons.append(scoobyDoo)
    
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCartoons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myCartoons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenCartoon = myCartoons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedCartoon = choosenCartoon
        }
    }
    


}

