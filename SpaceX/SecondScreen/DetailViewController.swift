//
//  DetailViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        navigationItem.title = "Falcon Heavy"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.isHidden = false
    }
    

}
