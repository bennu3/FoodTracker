//
//  SearchViewController.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/22/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    private let searchController = UISearchController(searchResultsController: nil)
    private var restaurants = Restaurant.all()
    

}

extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantCell
        cell.restaurant = restaurants[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    
}

extension SearchViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let contactAction = UITableViewRowAction(style: .default, title: "Contactar") { (_, ip) in        }
        
        //Ejericio: Agregar una acción para enviar mensaje de texto.
        contactAction.backgroundColor = .blue
        
        return [contactAction]
    }
    
 
}

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        guard let searchText = searchController.searchBar.text, !searchText.isEmpty else {
            restaurants = Restaurant.all()
            tableView.reloadData()
            return
        }
        
        var resultRestaurant: [Restaurant] = []
        for restaurant in restaurants {
            if restaurant.name.lowercased().contains(searchText.lowercased()) {
                resultRestaurant.append(restaurant)
            }
        }
        
        restaurants = resultRestaurant
        tableView.reloadData()
        
    }
    
}

extension SearchViewController: RestaurantCellDelegate {
    func restaurantCell(_ restaurantCell: RestaurantCell, didTapLinkedInOptionForTeacher restaurant: Restaurant) {
        
    }
    
}
