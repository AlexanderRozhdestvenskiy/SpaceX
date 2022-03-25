//
//  MainViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 22.03.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    private lazy var verticalScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = .black
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    private lazy var contentView: UIView = {
        let content = UIView()
        content.translatesAutoresizingMaskIntoConstraints = false
        content.backgroundColor = .black
        return content
    }()
    
    let mainBlackView = UIView()
    
    let imageRocket = UIImageView()
    let titleLabel = UILabel()
    let settingButton = UIButton()
    
    let infoScrollView = InfoScrollView()
    
    let firstLaunchLabel = UILabel()
    let firstLaunchData = UILabel()
    let countryLabel = UILabel()
    let countryData = UILabel()
    let costLabel = UILabel()
    let costData = UILabel()
    
    let firstStorage = StageView(title: "Первая ступень",
                                 engineData: "27",
                                 fuelData: "308,6",
                                 timeData: "593")
    
    let secondStorage = StageView(title: "Вторая ступень",
                                  engineData: "56",
                                  fuelData: "476.6",
                                  timeData: "354")
    
    let buttonDetail = UIButton(type: .system)
    
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
        
        firstLaunchLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLaunchLabel.textColor = .systemGray4
        firstLaunchLabel.text = "Первый запуск"
        firstLaunchLabel.textAlignment = .left
        
        firstLaunchData.translatesAutoresizingMaskIntoConstraints = false
        firstLaunchData.textColor = .systemGray5
        firstLaunchData.text = "7 февраля, 2018"
        firstLaunchData.textAlignment = .right
        
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.textColor = .systemGray4
        countryLabel.text = "Страна"
        countryLabel.textAlignment = .left
        
        countryData.translatesAutoresizingMaskIntoConstraints = false
        countryData.textColor = .systemGray5
        countryData.text = "США"
        countryData.textAlignment = .right
        
        costLabel.translatesAutoresizingMaskIntoConstraints = false
        costLabel.textColor = .systemGray4
        costLabel.text = "Стоимость запуска"
        costLabel.textAlignment = .left
        
        costData.translatesAutoresizingMaskIntoConstraints = false
        costData.textColor = .systemGray5
        costData.text = "$90 млн"
        costData.textAlignment = .right

        buttonDetail.translatesAutoresizingMaskIntoConstraints = false
        buttonDetail.setTitle("Посмотреть запуски", for: .normal)
        buttonDetail.backgroundColor = .squareBackground
        buttonDetail.layer.cornerRadius = 16
        buttonDetail.tintColor = .white
    }
    
    private func layout() {
        verticalScrollView.addSubview(contentView)
        view.addSubview(verticalScrollView)
        
        verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        verticalScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        verticalScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.widthAnchor.constraint(equalTo: verticalScrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: verticalScrollView.topAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: verticalScrollView.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: verticalScrollView.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: verticalScrollView.bottomAnchor).isActive = true
        
        contentView.addSubview(imageRocket)
        imageRocket.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageRocket.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        imageRocket.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        imageRocket.heightAnchor.constraint(equalTo: imageRocket.widthAnchor, multiplier: 2778 / 1284).isActive = true
        
        contentView.addSubview(mainBlackView)
        mainBlackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 248).isActive = true
        mainBlackView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        mainBlackView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        mainBlackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        contentView.addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        titleLabel.topAnchor.constraint(equalTo: mainBlackView.topAnchor, constant: 32).isActive = true
        
        contentView.addSubview(settingButton)
        settingButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        settingButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(infoScrollView)
        infoScrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32).isActive = true
        infoScrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        infoScrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
        contentView.addSubview(firstLaunchLabel)
        firstLaunchLabel.topAnchor.constraint(equalTo: infoScrollView.bottomAnchor, constant: 32).isActive = true
        firstLaunchLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        
        contentView.addSubview(firstLaunchData)
        firstLaunchData.topAnchor.constraint(equalTo: firstLaunchLabel.topAnchor).isActive = true
        firstLaunchData.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        contentView.addSubview(countryLabel)
        countryLabel.topAnchor.constraint(equalTo: firstLaunchLabel.bottomAnchor, constant: 16).isActive = true
        countryLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        
        contentView.addSubview(countryData)
        countryData.topAnchor.constraint(equalTo: countryLabel.topAnchor).isActive = true
        countryData.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        contentView.addSubview(costLabel)
        costLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 16).isActive = true
        costLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        
        contentView.addSubview(costData)
        costData.topAnchor.constraint(equalTo: costLabel.topAnchor).isActive = true
        costData.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        contentView.addSubview(firstStorage)
        firstStorage.topAnchor.constraint(equalTo: costLabel.bottomAnchor, constant: 32).isActive = true
        firstStorage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        firstStorage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true

        contentView.addSubview(secondStorage)
        secondStorage.topAnchor.constraint(equalTo: firstStorage.bottomAnchor, constant: 32).isActive = true
        secondStorage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        secondStorage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        contentView.addSubview(buttonDetail)
        buttonDetail.topAnchor.constraint(equalTo: secondStorage.bottomAnchor, constant: 32).isActive = true
        buttonDetail.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 32).isActive = true
        buttonDetail.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -32).isActive = true
        buttonDetail.heightAnchor.constraint(equalToConstant: 64).isActive = true
        buttonDetail.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24).isActive = true
    }
}
