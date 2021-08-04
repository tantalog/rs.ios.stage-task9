//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Anton Kushnerov
// On: 2.08.21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class CollectionViewController: UIViewController  {
    
    let fillingData = FillingData.data
    let itemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        itemsCollectionView.dataSource = self
        itemsCollectionView.delegate = self
        itemsCollectionView.backgroundColor = .white
        itemsCollectionView.register(ItemCollectionViewCell.self, forCellWithReuseIdentifier: "ItemCollectionViewCell")
        self.view.addSubview(itemsCollectionView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        itemsCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        itemsCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        itemsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        itemsCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        itemsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    

        

        
    

}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return fillingData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCollectionViewCell", for: indexPath) as! ItemCollectionViewCell
        itemCell.setupItemCollectionViewCell(index: indexPath.row)

        return itemCell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (itemsCollectionView.frame.size.width-16)/2
        let height = width*1.23
        return CGSize(width: width, height: height)
    }


}
