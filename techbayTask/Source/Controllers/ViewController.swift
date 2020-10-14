//
//  ViewController.swift
//  techbayTask
//
//  Created by Murteza on 13/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit
import Alamofire
import DateScrollPicker
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,DateScrollPickerDelegate {

    var EventArray: [(title:String,date:String,loc:String,image:String)] = []
    
    @IBOutlet weak var tableView: UITableView!{
    didSet{
            self.tableView.delegate = self
           self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addData()
        self.CallApi()

    }


    func addData(){
        EventArray.append((title: "Sport Meet in Galaxy Fields", date: "12 , jan 2019", loc: "Green Field Sector Faridobad", image: "sport_art"))
         EventArray.append((title: "Art & Meet in Street Plaza", date: "12 , jan 2019", loc: "Green Field Sector Faridobad", image: "art"))
          EventArray.append((title: "Youth Music in Galleria", date: "12 , jan 2019", loc: "Green Field Sector Faridobad", image: "youth"))
    }


  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 7
       }
       
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         switch indexPath.row {
         case 0:
             self.tableView.register(UINib(nibName: "topCell", bundle: nil), forCellReuseIdentifier: "topcell")
          
             let cell = self.tableView.dequeueReusableCell(withIdentifier:"topcell" , for: indexPath) as! topCell
             //cell.datePicker.delegate = self

             return cell
             
         case 1:
           
            
               self.tableView.register(UINib(nibName: "titleCell", bundle: nil), forCellReuseIdentifier: "titlecel1")
             let cell = self.tableView.dequeueReusableCell(withIdentifier:"titlecel1" , for: indexPath) as! titleCell
               cell.titLabel.text = "All Events"
             return cell
             
         case 2:
           
            
             let cell = self.tableView.dequeueReusableCell(withIdentifier:"cell" , for: indexPath) as! midEventCell
           
             return cell
         case 3:
            self.tableView.register(UINib(nibName: "titleCell", bundle: nil), forCellReuseIdentifier: "titlecel2")
                     let cell = self.tableView.dequeueReusableCell(withIdentifier:"titlecel2" , for: indexPath) as! titleCell
                       cell.titLabel.text = "Popular Events"
                     return cell
           
     
         default:
            
            self.tableView.register(UINib(nibName: "botEventCell", bundle: nil), forCellReuseIdentifier: "botCell")
            let cell = self.tableView.dequeueReusableCell(withIdentifier:"botCell" , for: indexPath) as! botEventCell
            cell.tittlelabel.text = EventArray[indexPath.row - 4].title
            cell.dateLabel.text = EventArray[indexPath.row - 4].date
            cell.locLabel.text = EventArray[indexPath.row - 4].loc
            cell.eventImage?.image = UIImage(named: EventArray[indexPath.row - 4].image)
            return cell
         }
     }
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
           let cell = self.tableView.dequeueReusableCell(withIdentifier:"topcell" , for: indexPath) as! topCell
        cell.datePicker.selectToday()
        
    }
     
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         switch indexPath.row {
         case 0:
             return  206
         case 1:
             return  45
         case 2:
               return  150
         case 3:
             return  45
     default:
             return 100
         }
    }
    
    
    // call api
    func CallApi(){
      Alamofire.request("https://pokeapi.co/api/v2/pokemon/ditto", method: .get, parameters:nil ,encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            switch response.result
            {
            case .success(let json):
                let jsonData = json
                print(jsonData)
                if let JSON = response.result.value {
                    print("JSON Result is : \(JSON)")
                }
                case .failure(let error):
               
                print(error.localizedDescription)
            }
        }
        
    }

}
