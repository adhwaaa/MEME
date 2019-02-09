//
//  ViewController.swift
//  meme 0.2
//
//  Created by Adhwaa Ahmed on 23/03/1440 AH.
//  Copyright © 1440 Adhwaa Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
      var meme: [Meme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoData()
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        appDelegate.meme.append(contentsOf: meme)
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func demoData()  {
       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // TODO: return number of Product in your array of products
        return meme.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // TODO : Dequqe a reusable cell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
      //  cell.myimage.image = meme[indexPath.row].image
        // TODO : Get the corresponding product from the array and pass the data to your cell
        return cell
        
    }

}

