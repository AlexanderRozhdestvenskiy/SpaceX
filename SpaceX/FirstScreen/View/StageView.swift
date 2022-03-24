//
//  StageView.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

class StageView: UIView {

    let titleStage = UILabel()
    
    let numberOfEnginesLabel = UILabel()
    let numberOfEnginesData = UILabel()
    
    let amountOfFuelInTonsLabel = UILabel()
    let amountOfFuelInTonsData = UILabel()
    
    let combustionTimeInSecondLabel = UILabel()
    let combustionTimeInSecondData = UILabel()
    
    init(title: String, engineData: String, fuelData: String, timeData: String) {
        super.init(frame: .zero)
        
        titleStage.text = title
        numberOfEnginesData.text = engineData
        amountOfFuelInTonsData.text = fuelData
        combustionTimeInSecondData.text = timeData
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
        
        titleStage.translatesAutoresizingMaskIntoConstraints = false
        titleStage.textColor = .white
        titleStage.font = .preferredFont(forTextStyle: .title2)
        
        numberOfEnginesLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfEnginesLabel.textColor = .systemGray4
        numberOfEnginesLabel.text = "Количество двигателей"
        
        numberOfEnginesData.translatesAutoresizingMaskIntoConstraints = false
        numberOfEnginesData.textColor = .systemGray5
        
        amountOfFuelInTonsLabel.translatesAutoresizingMaskIntoConstraints = false
        amountOfFuelInTonsLabel.textColor = .systemGray4
        amountOfFuelInTonsLabel.text = "Количество топлива"
        
        amountOfFuelInTonsData.translatesAutoresizingMaskIntoConstraints = false
        amountOfFuelInTonsData.textColor = .systemGray5
        
        combustionTimeInSecondLabel.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeInSecondLabel.textColor = .systemGray4
        combustionTimeInSecondLabel.text = "Время сгорания"
        
        combustionTimeInSecondData.translatesAutoresizingMaskIntoConstraints = false
        combustionTimeInSecondData.textColor = .systemGray5
    }
    
    private func layout() {
        addSubview(titleStage)
        addSubview(numberOfEnginesLabel)
        addSubview(numberOfEnginesData)
        addSubview(amountOfFuelInTonsLabel)
        addSubview(amountOfFuelInTonsData)
        addSubview(combustionTimeInSecondLabel)
        addSubview(combustionTimeInSecondData)
        
        titleStage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleStage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        numberOfEnginesLabel.topAnchor.constraint(equalTo: titleStage.bottomAnchor, constant: 16).isActive = true
        numberOfEnginesLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        numberOfEnginesData.topAnchor.constraint(equalTo: titleStage.bottomAnchor, constant: 16).isActive = true
        numberOfEnginesData.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        amountOfFuelInTonsLabel.topAnchor.constraint(equalTo: numberOfEnginesLabel.bottomAnchor, constant: 16).isActive = true
        amountOfFuelInTonsLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        amountOfFuelInTonsData.topAnchor.constraint(equalTo: numberOfEnginesData.bottomAnchor, constant: 16).isActive = true
        amountOfFuelInTonsData.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        combustionTimeInSecondLabel.topAnchor.constraint(equalTo: amountOfFuelInTonsLabel.bottomAnchor, constant: 16).isActive = true
        combustionTimeInSecondLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        combustionTimeInSecondData.topAnchor.constraint(equalTo: amountOfFuelInTonsData.bottomAnchor, constant: 16).isActive = true
        combustionTimeInSecondData.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
