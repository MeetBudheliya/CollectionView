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
    
    var dataList = Data()
    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    @IBOutlet weak var collection3: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataList = Data(image: [#imageLiteral(resourceName: "Skype"),#imageLiteral(resourceName: "SnapChat"),#imageLiteral(resourceName: "Shopify"),#imageLiteral(resourceName: "Calculator"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "DropBox"),#imageLiteral(resourceName: "DropBox")], name: ["Skype","SnapChat","Shopify","Calculator","DropBox","Skype","SnapChat","Shopify","Calculator","DropBox"])
        
       
       collection1.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection1.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.cellImage.image = dataList.image[indexPath.row]
        cell.cellLabel.text = dataList.name[indexPath.row]
        return cell
    }
}

