//
//  ViewController.swift
//  CollectionView
//
//  Created by MAC on 25/10/20.
//

import UIKit
struct Data
{
    var image = [UIImage]()
    var name = [String]()
}
class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    var dataList = [Data()]
    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    @IBOutlet weak var collection3: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataList = [Data(image: [#imageLiteral(resourceName: "Skype"),#imageLiteral(resourceName: "SnapChat"),#imageLiteral(resourceName: "Shopify"),#imageLiteral(resourceName: "Calculator"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "YouTube"),#imageLiteral(resourceName: "Messeges"),#imageLiteral(resourceName: "Chrome"),#imageLiteral(resourceName: "iTunes"),#imageLiteral(resourceName: "ApppStore")], name:["Skype","SnapChat","Shopify","Calculator","DropBox","Youtube","Messages","Chrome","iTunes","Appstore"]),
                    Data(image: [#imageLiteral(resourceName: "Chrome"),#imageLiteral(resourceName: "Shopify"),#imageLiteral(resourceName: "Skype"),#imageLiteral(resourceName: "Calculator"),#imageLiteral(resourceName: "Messeges"),#imageLiteral(resourceName: "iTunes")], name: ["Chrome","Shopify","Skype","Calculator","Messages","iTunes"]),
                    Data(image: [#imageLiteral(resourceName: "ApppStore"),#imageLiteral(resourceName: "FakeCall"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "SnapChat"),#imageLiteral(resourceName: "YouTube"),#imageLiteral(resourceName: "Battlenet"),#imageLiteral(resourceName: "Skype")], name: ["Appstore","Call","Dropbox","Snapchat","Youtube","Spycraft","Skype"])]
        
        collection1.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        collection2.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        collection3.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collection1
        {
            return dataList[0].image.count
        }
        else if collectionView == collection2
        {
            return dataList[1].image.count
        }
        else if collectionView == collection3
        {
            return dataList[2].image.count
        }
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection1.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        if collectionView == collection1
        {
            cell.cellImage.image = dataList[0].image[indexPath.row]
            cell.cellLabel.text = dataList[0].name[indexPath.row]
            
        }
        else if collectionView == collection2
        {
            cell.cellImage.image = dataList[1].image[indexPath.row]
            cell.cellLabel.text = dataList[1].name[indexPath.row]
        }
        else if collectionView == collection3
        {
            cell.cellImage.image = dataList[2].image[indexPath.row]
            cell.cellLabel.text = dataList[2].name[indexPath.row]
        }
        return cell
    }
}

