//
//  MainViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 22.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let verticalScrollView = UIScrollView()
    
    let mainBlackView = UIView()
    
    let imageRocket = UIImageView()
    let titleLabel = UILabel()
    let settingButton = UIButton()
    
    let horizontalScrollView = UIScrollView()
    let heightView = SquareView(value: "229.6", title: "Высота, ft")
    let diameterView = SquareView(value: "39.9", title: "Диаметр, ft")
    let massView = SquareView(value: "3,125,735", title: "Масса, lb")
    let idLeoView = SquareView(value: "4,547.65", title: "Нагрузка, tn")
    
    let firstLaunchLabel = UILabel()
    let firstLaunchData = UILabel()
    let countryLabel = UILabel()
    let countryData = UILabel()
    let costLabel = UILabel()
    let costData = UILabel()
    
    let firstStage = UILabel()
    let firstStagenumberOfEnginesLabel = UILabel()
    let firstStagenumberOfEnginesData = UILabel()
    let firstStageamountOfFuelInTonsLabel = UILabel()
    let firstStageamountOfFuelInTonsData = UILabel()
    let firstStagecombustionTimeInSecondLabel = UILabel()
    let firstStagecombustionTimeInSecondData = UILabel()
    
    let secondStage = UILabel()
    let secondStagenumberOfEnginesLabel = UILabel()
    let secondStagenumberOfEnginesData = UILabel()
    let secondStageamountOfFuelInTonsLabel = UILabel()
    let secondStageamountOfFuelInTonsData = UILabel()
    let secondStagecombustionTimeInSecondLabel = UILabel()
    let secondStagecombustionTimeInSecondData = UILabel()
    
    let buttonDetail = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        style()
        layout()
    }
    
    private func setup() {
        view.backgroundColor = .systemBackground
    }
    
    private func style() {
        imageRocket.translatesAutoresizingMaskIntoConstraints = false
        imageRocket.contentMode = .scaleAspectFit
        imageRocket.image = UIImage(named: "2")
        
        mainBlackView.translatesAutoresizingMaskIntoConstraints = false
        mainBlackView.backgroundColor = .black
        mainBlackView.layer.cornerRadius = 32
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Falcon Heavy"
        titleLabel.font = .preferredFont(forTextStyle: .title1)
        titleLabel.textColor = .white
        
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        settingButton.setImage(UIImage(systemName: "gearshape")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        
        heightView.translatesAutoresizingMaskIntoConstraints = false
        diameterView.translatesAutoresizingMaskIntoConstraints = false
        massView.translatesAutoresizingMaskIntoConstraints = false
        idLeoView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        view.addSubview(imageRocket)
        view.addSubview(mainBlackView)
        view.addSubview(titleLabel)
        view.addSubview(settingButton)
        
        view.addSubview(heightView)
        view.addSubview(diameterView)
        view.addSubview(massView)
        view.addSubview(idLeoView)
        
        imageRocket.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageRocket.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -132).isActive = true
        imageRocket.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        mainBlackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainBlackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainBlackView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -132).isActive = true
        mainBlackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: mainBlackView.topAnchor, constant: 32).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: mainBlackView.leadingAnchor, constant: 24).isActive = true
        
        settingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        settingButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
        heightView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        heightView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
        
        diameterView.leadingAnchor.constraint(equalTo: heightView.trailingAnchor, constant: 16).isActive = true
        diameterView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
        
        massView.leadingAnchor.constraint(equalTo: diameterView.trailingAnchor, constant: 16).isActive = true
        massView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
        
        idLeoView.leadingAnchor.constraint(equalTo: massView.trailingAnchor, constant: 16).isActive = true
        idLeoView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
    }
}
