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
    
    let firstStorage = StageView(title: "Первая ступень",
                                 engineData: "27",
                                 fuelData: "308,6",
                                 timeData: "593")
    
    let secondStorage = StageView(title: "Вторая ступень",
                                  engineData: "56",
                                  fuelData: "476.6",
                                  timeData: "354")
    
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
        buttonDetail.setTitle("Go", for: .normal)
        buttonDetail.backgroundColor = .systemBlue
    }
    
    private func layout() {
        view.addSubview(verticalScrollView)
        verticalScrollView.addSubview(contentView)
        
        contentView.addSubview(imageRocket)
        contentView.addSubview(mainBlackView)
        contentView.addSubview(buttonDetail)
        
        verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        verticalScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        verticalScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.widthAnchor.constraint(equalTo: verticalScrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: verticalScrollView.topAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: verticalScrollView.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: verticalScrollView.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: verticalScrollView.bottomAnchor).isActive = true
        
        imageRocket.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageRocket.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        imageRocket.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        imageRocket.heightAnchor.constraint(equalTo: imageRocket.widthAnchor, multiplier: 2778 / 1284).isActive = true
        
        mainBlackView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        mainBlackView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        mainBlackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 360).isActive = true
        mainBlackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        buttonDetail.widthAnchor.constraint(equalToConstant: 200).isActive = true
        buttonDetail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonDetail.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        buttonDetail.topAnchor.constraint(equalTo: imageRocket.bottomAnchor, constant: 24).isActive = true
        buttonDetail.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24).isActive = true
    }
}
