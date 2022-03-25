//
//  SettingViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

final class SettingViewController: UIViewController {
    
    private let heightAndDiameterArray = ["m", "ft"]
    private let massAndIdLeoArray = ["kg", "lb"]
    
    private let widthSegment: CGFloat = 128
    private let heightSegment: CGFloat = 36
    
    private let heightLabel = UILabel()
    private let diameterLabel = UILabel()
    private let massLabel = UILabel()
    private let idLeoLabel = UILabel()
    
    private lazy var heightSegmentControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: heightAndDiameterArray)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.tintColor = .white
        segment.backgroundColor = .squareBackground
        segment.selectedSegmentIndex = 0
        segment.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        segment.setTitleTextAttributes([.foregroundColor: UIColor.squareBackground], for: .selected)
        return segment
    }()
    
    private lazy var diameterSegmentControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: heightAndDiameterArray)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.tintColor = .white
        segment.backgroundColor = .squareBackground
        segment.selectedSegmentIndex = 0
        segment.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        segment.setTitleTextAttributes([.foregroundColor: UIColor.squareBackground], for: .selected)
        return segment
    }()
    
    private lazy var massSegmentControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: massAndIdLeoArray)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.tintColor = .white
        segment.backgroundColor = .squareBackground
        segment.selectedSegmentIndex = 0
        segment.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        segment.setTitleTextAttributes([.foregroundColor: UIColor.squareBackground], for: .selected)
        return segment
    }()
    
    private lazy var idLeoSegmentControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: massAndIdLeoArray)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.tintColor = .white
        segment.backgroundColor = .squareBackground
        segment.selectedSegmentIndex = 0
        segment.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        segment.setTitleTextAttributes([.foregroundColor: UIColor.squareBackground], for: .selected)
        return segment
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        style()
        layout()
    }
    
    private func setup() {
        view.backgroundColor = .black
        navigationItem.title = "Настройки"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Закрыть", style: .plain, target: self, action: #selector(cancelTap))
    }
    
    private func style() {
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.text = "Высота"
        heightLabel.textColor = .white
        heightLabel.font = .preferredFont(forTextStyle: .body)
        
        diameterLabel.translatesAutoresizingMaskIntoConstraints = false
        diameterLabel.text = "Диаметр"
        diameterLabel.textColor = .white
        diameterLabel.font = .preferredFont(forTextStyle: .body)
        
        massLabel.translatesAutoresizingMaskIntoConstraints = false
        massLabel.text = "Масса"
        massLabel.textColor = .white
        massLabel.font = .preferredFont(forTextStyle: .body)
        
        idLeoLabel.translatesAutoresizingMaskIntoConstraints = false
        idLeoLabel.text = "Полезная нагрузка"
        idLeoLabel.textColor = .white
        idLeoLabel.font = .preferredFont(forTextStyle: .body)
    }
    
    private func layout() {
        view.addSubview(heightLabel)
        view.addSubview(diameterLabel)
        view.addSubview(massLabel)
        view.addSubview(idLeoLabel)
        
        view.addSubview(heightSegmentControl)
        view.addSubview(diameterSegmentControl)
        view.addSubview(massSegmentControl)
        view.addSubview(idLeoSegmentControl)
        
        heightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        heightLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        diameterLabel.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 40).isActive = true
        diameterLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        massLabel.topAnchor.constraint(equalTo: diameterLabel.bottomAnchor, constant: 40).isActive = true
        massLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        idLeoLabel.topAnchor.constraint(equalTo: massLabel.bottomAnchor, constant: 40).isActive = true
        idLeoLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        heightSegmentControl.widthAnchor.constraint(equalToConstant: widthSegment).isActive = true
        heightSegmentControl.heightAnchor.constraint(equalToConstant: heightSegment).isActive = true
        heightSegmentControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        heightSegmentControl.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor).isActive = true
        
        diameterSegmentControl.widthAnchor.constraint(equalToConstant: widthSegment).isActive = true
        diameterSegmentControl.heightAnchor.constraint(equalToConstant: heightSegment).isActive = true
        diameterSegmentControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        diameterSegmentControl.centerYAnchor.constraint(equalTo: diameterLabel.centerYAnchor).isActive = true
        
        massSegmentControl.widthAnchor.constraint(equalToConstant: widthSegment).isActive = true
        massSegmentControl.heightAnchor.constraint(equalToConstant: heightSegment).isActive = true
        massSegmentControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        massSegmentControl.centerYAnchor.constraint(equalTo: massLabel.centerYAnchor).isActive = true
        
        idLeoSegmentControl.widthAnchor.constraint(equalToConstant: widthSegment).isActive = true
        idLeoSegmentControl.heightAnchor.constraint(equalToConstant: heightSegment).isActive = true
        idLeoSegmentControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        idLeoSegmentControl.centerYAnchor.constraint(equalTo: idLeoLabel.centerYAnchor).isActive = true
    }
}

extension SettingViewController {
    @objc func cancelTap(_ sender: UIBarButtonItem) {
        
    }
}
