//
//  FilmeCell.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 11/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import Foundation
import UIKit

class FilmeCell: UITableViewCell {
    var name:String?
    var mainDescription:String?
    var mainImage:UIImage?
    
    var nameView: UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 24)
        return textView
    }()
    
    var descriptionView: UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 14)
        return textView
    }()
    
    var mainImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView;
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //adicionando imageview(img do filme) a celula
        self.addSubview(mainImageView)
        //adicionando nome do filme a celula
        self.addSubview(nameView)
        //adicionando descricao do filme a celula
        self.addSubview(descriptionView)
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        nameView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        nameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        nameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        nameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
        descriptionView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        //descriptionView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //descriptionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        descriptionView.topAnchor.constraint(equalTo: self.nameView.bottomAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let name = name {
            nameView.text = name
        }
        if let mainDescription = mainDescription {
            descriptionView.text = mainDescription
        }
        if let image = mainImage {
            mainImageView.image = image
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
