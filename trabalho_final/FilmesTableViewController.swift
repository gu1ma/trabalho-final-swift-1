//
//  FilesTableViewController.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 11/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import UIKit

class FilmesTableViewController: UITableViewController {
    
    var filmes = [Filme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmes = [Filme(name: "Vingadores", description: "Homem de Ferro, Thor, Hulk e os Vingadores se unem para combater seu inimigo mais poderoso, o maligno Thanos. Em uma missão para coletar todas as seis pedras infinitas, Thanos planeja usá-las para infligir sua vontade maléfica sobre a realidade.", image:#imageLiteral(resourceName: "vingadores.jpg")),
                  Filme(name: "Capitã Marvel", description: "Capitã Marvel, parte do exército de elite dos Kree, uma raça alienígena, encontra-se no meio de uma batalha entre seu povo e os Skrulls. Ao tentar impedir uma invasão de larga escala na Terra, em 1995, ela tem memórias recorrentes de uma outra vida, como Carol Danvers, agente da Força Aérea norte-americana.", image: #imageLiteral(resourceName: "capita_marvel.jpg")),
                  Filme(name: "Homem Formiga", description: "Forçado a sair de sua própria empresa, Dr. Hank Pym transforma um talentoso ladrão em Homem-Formiga para impedir que seu antigo pupilo consiga replicar a fórmula da roupa que dá o poder do encolhimento, força sobre-humana e a capacidade de controlar um exército de formigas.", image: #imageLiteral(resourceName: "homem_formiga.jpg"))]
        
        self.tableView.register(FilmeCell.self, forCellReuseIdentifier: "filmeCell")
        
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "filmeCell") as! FilmeCell
        cell.mainImage = filmes[indexPath.row].image
        cell.name = filmes[indexPath.row].name
        cell.mainDescription = filmes[indexPath.row].description
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FilmeDetail {
            destination.filme = filmes[(self.tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showFilmeDetail", sender: self)
    }
}
