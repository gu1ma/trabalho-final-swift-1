//
//  FilmeDetail.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 11/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import UIKit

class FilmeDetail: UIViewController{
    
    var filme: Filme?
    
    @IBOutlet weak var filmeDetail: UILabel!
    @IBOutlet var imageFilme: UIImageView?
    @IBOutlet var filmeDesc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameFilme:String? = filme?.name as String?
        let descFilme:String? = filme?.description as String?
        filmeDetail.text = "\(String(describing: nameFilme))"
        filmeDesc.text = "\(String(describing: descFilme))"
        
        imageFilme?.image = filme?.image
        
    }
}
