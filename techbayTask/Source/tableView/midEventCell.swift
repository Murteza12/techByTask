//
//  midEventCell.swift
//  techbayTask
//
//  Created by Murteza on 14/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit

class midEventCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
  
    var eventArray:[(names:String,image:String)] =
        []
    
   
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
            
            self.collectionView.register(UINib(nibName: "EventsCell", bundle: nil), forCellWithReuseIdentifier: "cell")
            self.collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        eventArray.append((names: "Concert", image: "concert"))
         eventArray.append((names: "Sports", image: "sport"))
         eventArray.append((names: "Education", image: "education"))
         eventArray.append((names: "Concert", image: "concert"))
     }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventArray.count
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EventsCell
        cell.nameLabel.text = self.eventArray[indexPath.row].names
        
        cell.image.image = UIImage(named:self.eventArray[indexPath.row].image)
      
        return cell
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let width = (self.frame.size.width - 20) //some width
      
        return CGSize(width: width/2.7, height: 150)
       
         
      }
    

}
