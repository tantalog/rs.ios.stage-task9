//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Anton Kushnerov
// On: 2.08.21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    let fillingData = FillingData.data
    let imageView: UIImageView = UIImageView()
    let titleLabel = UILabel()
    let typeLabel = UILabel()
    
    func setupItemCollectionViewCell(index: Int) {
        // configure contentView
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 18
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.black.cgColor
        // configure imageView
        self.addSubview(self.imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10), self.imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
                                     self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8), self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)])
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        
        let gradientView = UIView(frame: imageView.bounds)
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.7, 1.0]
        gradientView.layer.insertSublayer(gradient, at: 0)
        imageView.addSubview(gradientView)
        gradientView.bringSubviewToFront(imageView)


        // configure titleLabel
        imageView.addSubview(titleLabel)
        titleLabel.font = UIFont(name: "Rockwell-Regular", size: 16)
        titleLabel.textColor = .white
        titleLabel.frame.size.height = 19
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([titleLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -30),
                                     self.titleLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10), self.titleLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15)])
        
        // configure typeLabel
        imageView.addSubview(typeLabel)
        typeLabel.font = UIFont(name: "Rockwell-Regular", size: 12)
        typeLabel.textColor = UIColor(red: 0.712, green: 0.712, blue: 0.712, alpha: 1)
        typeLabel.frame.size.height = 14
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([typeLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -13),
                                     self.typeLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10), self.typeLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15)])

        let filling = fillingData[index]
        switch filling {
        case .story (let story):
            imageView.image = story.coverImage
            titleLabel.text = story.title
            typeLabel.text = story.type
        case .gallery (let gallery):
            imageView.image = gallery.coverImage
            titleLabel.text = gallery.title
            typeLabel.text = gallery.type

        }
        
    }

    
}

