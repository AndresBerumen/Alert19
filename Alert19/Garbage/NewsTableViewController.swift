//
//  NewsTableViewController.swift
//  Alert19
//
//  Created by Andrés Berumen on 03/05/20.
//  Copyright © 2020 Andrés Berumen. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSample()

        
    }
    
    // MARK: Properties
    var news = [News]()
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "NewsTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? NewsTableViewCell else {
            fatalError()
        }
        
        let new = news[indexPath.row]
        
        cell.newsTitle.text = new.name
        cell.newsPhoto.image = new.photo
        cell.newsInfo.text = new.infoe


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: Private Methods
    private func loadSample() {
        let photo1 = UIImage(named: "brainDamage")
        let photo2 = UIImage(named: "vaccine")
        let photo3 = UIImage(named: "trump")
        
        guard let news1 = News(name: "El coronavirus también puede causar daños cerebrales", photo: photo1, infoe: "El Hospital General Universitario de Madrid afirma que además de los síntomas respiratorios que representa el COVID 19, éste tambien trae consigo complicaciones cerebrales. Éstos incluyen pérdida de olfato e inflamación de cerebro.") else {
            fatalError("Unable to instantiate news1.")
        }
        guard let news2 = News(name: "¿Qué se sabe de la vacuna contra el COVID 19?", photo: photo2, infoe: "Hay más de 70 grupos científicos, a nivel mundial, que están probando posibles vacunas para prevenir la infección por el nuevo coronavirus. La Universidad de Oxford probó con éxito la vacuna en chimpancés. Ahora en mayo, planean usarla en 6,000 humanos sanos entre 18 y 55 años.") else {
            fatalError("Unable to instantiate news2.")
        }
        guard let news3 = News(name: "Aumentan los intoxicados por sugerencia de Donald Trump", photo: photo3, infoe: "En una de sus recientes ruedas de prensa, el presidente de Estados Unidos propuso el uso inyectado de desinfectante para matar al virus en un minuto. Sus palabras consternaron a los médicos debido a su gran falta de formación científica y advirtieron a la población jamás inyectarse desinfectante. Por lo que dijo Trump, miles de gente probaron el remedio y, en menos de una hora, las muertes por COVID 19 se dispararon. El reportero Josh Buck dijo: -Dejó un mal sabor de boca la irresponsabilidad del mandatario.-") else {
            fatalError("Unable to instantiate news3.")
        }
        
        news += [news1, news2, news3]
    
        
    }
    

}
