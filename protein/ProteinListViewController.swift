//
//  ProteinListViewController.swift
//  protein
//
//  Created by kudakwashe on 2019/11/13.
//  Copyright © 2019 WeThinkCode. All rights reserved.
//

import UIKit

class ProteinListViewController: UIViewController {
    
    let searchBar = UISearchBar()
        
    var filteredLigands = [Protein]()
    
    let ligands = Protein.GetAllProteins()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.delegate = self
        tv.dataSource = self
        tv.register(ProteinCell.self , forCellReuseIdentifier: "cell")
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setupElements()

    }
    
    @objc func handleShowSearchBar() {
        search(shouldShow: true)
        searchBar.becomeFirstResponder()
    }
    
    func configureUI() {
        
        view.backgroundColor = .white
        
        searchBar.sizeToFit()
        searchBar.delegate = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Protein List"
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        self.navigationItem.setHidesBackButton(true, animated:true);

        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        showSearchBarButton(shouldShow: true)
        
    }
    
    func showSearchBarButton(shouldShow: Bool) {
        if shouldShow {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleShowSearchBar))
        } else {
            navigationItem.rightBarButtonItem = nil
        }
    }
    
    func search(shouldShow: Bool) {
        showSearchBarButton(shouldShow: !shouldShow)
        searchBar.showsCancelButton = shouldShow
        navigationItem.titleView = shouldShow ? searchBar : nil
    }
    
    func filterContentForSearchText(searchText: String ) {
        filteredLigands = ligands.filter({ (ligand: Protein ) -> Bool in
            return ligand.ligandName.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    func isSearchBarEmpty() -> Bool {
        return searchBar.text?.isEmpty ?? true
    }
    
    func isFiltering() -> Bool {
        return !isSearchBarEmpty()
    }
}

// the search bar
extension ProteinListViewController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        search(shouldShow: false)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("Searching has ended")
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("Search has begun")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContentForSearchText(searchText: searchText)
    }
}


extension ProteinListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
            filterContentForSearchText(searchText: searchBar.text!)
    }
}

// the table view with all the proteins
extension ProteinListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() { return filteredLigands.count }
        return ligands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProteinCell else { return UITableViewCell() }
        
        let currentLigand: Protein
        
        if isFiltering() {
            currentLigand = filteredLigands[indexPath.row]
        } else {
            currentLigand = ligands[indexPath.row]
        }
        
        cell.titleLbl.text = currentLigand.ligandName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var ligandName: String = ""
        
        if isFiltering() {
            ligandName = filteredLigands[indexPath.row].ligandName
        } else {
            ligandName = ligands[indexPath.row].ligandName
        }
//        self.performSegue(withIdentifier: "proteinView", sender: self)
//        let vc: ProteinViewController =
        
        let vc = ProteinViewController()
        vc.ligandName = ligandName
        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true, completion: nil)
    }
}


// constrain the table view
extension ProteinListViewController {
    
    func setupElements() {
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
}
