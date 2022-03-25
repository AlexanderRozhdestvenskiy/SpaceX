//
//  DetailViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var detailViewModel: [DetailViewModel] = [
        DetailViewModel(name: "Falcon Sat", date: "22 июня, 2021", ok: true),
        DetailViewModel(name: "Heavy God", date: "14 сентября, 2020", ok: false),
        DetailViewModel(name: "Sweet Win", date: "3 августа, 2021", ok: true),
        DetailViewModel(name: "Start All Gane", date: "12 января, 2019", ok: false)
    ]
    
    private let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        style()
        layout()
    }
    
    private func setup() {
        collection.dataSource = self
        collection.delegate = self
        
        collection.register(DetailCollectionViewCell.self, forCellWithReuseIdentifier: DetailCollectionViewCell.reuseID)
    }
    
    private func style() {
        view.backgroundColor = .black
        navigationItem.title = "Falcon Heavy"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.isHidden = false
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .black
    }
    
    private func layout() {
        view.addSubview(collection)
        
        collection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        collection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        collection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        collection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

}

extension DetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailViewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let detail = detailViewModel[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCollectionViewCell.reuseID, for: indexPath) as! DetailCollectionViewCell
        cell.configure(with: detail)
        
        return cell
    }
}

extension DetailViewController: UICollectionViewDelegate {
    
}

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collection.frame.size.width, height: 100)
    }
}
