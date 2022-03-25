//
//  DetailViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var detailViewModel: [DetailViewModel] = [DetailViewModel(name: "Go", date: "454545545454", ok: true), DetailViewModel(name: "hfggfgf", date: "6554646474746", ok: false)]
    
    private let table = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        setup()
        style()
        layout()
    }
    
    private func setup() {
        table.dataSource = self
        table.delegate = self
        
        table.register(DetailTableViewCell.self, forCellReuseIdentifier: DetailTableViewCell.reuseID)
        table.rowHeight = DetailTableViewCell.rowHeight
    }
    
    private func style() {
        view.backgroundColor = .black
        navigationItem.title = "Falcon Heavy"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.isHidden = false
        
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .black
    }
    
    private func layout() {
        view.addSubview(table)
        
        table.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        table.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        table.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        table.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

}

extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detail = detailViewModel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.reuseID, for: indexPath) as! DetailTableViewCell
        cell.configure(with: detail)
        
        return cell
    }
    
}

extension DetailViewController: UITableViewDelegate {
    
}
