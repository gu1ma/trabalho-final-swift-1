//
//  Filme.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 11/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import UIKit

class Filme {
    var name:String
    var description:String
    var image:UIImage?
    
    init(name:String, description:String, image:UIImage?){
        self.name = name
        self.description = description
        self.image = image
    }
    
    func setName(name:String){
        self.name = name
    }
    
    func getName()->String{
        return name
    }
    
    func setDescription(description:String){
        self.description = description
    }
    
    func getDescription()->String{
        return description
    }
    
    func setImage(image:UIImage?){
        self.image = image
    }
    
    func getImage()->UIImage?{
        return image
    }
}
