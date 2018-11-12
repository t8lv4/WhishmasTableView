//
//  ListViewController.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! // 1.

    @IBAction func unwindToList(segue:UIStoryboardSegue) { }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 8. rechargerles données dans la table
        tableView.reloadData()
    }

}

extension ListViewController: UITableViewDataSource {

    // 1. delegate dataSource, créer un outlet pour le tableView in storyboard
    // 2. adopt UITableViewDataSource protocol
    // 3.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // ie pas de section
    }

    // 4.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToyService.shared.toys.count
    }

    // 5. ajouter une cell dans l'IB
    // 6. lui donner un identifiant et un style
    // 7. construire les cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToyCell", for: indexPath)
        // fetch data
        let toy = ToyService.shared.toys[indexPath.row]
        // display data
        cell.textLabel?.text = toy.name
        cell.detailTextLabel?.text = toy.brand

        return cell
    }

}
