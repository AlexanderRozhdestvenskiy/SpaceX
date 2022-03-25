//
//  SquareView.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 23.03.2022.
//

import UIKit

class SquareView: UIView {

    let stackView = UIStackView()
    
    let valueLabel = UILabel()
    let titleLabel = UILabel()
    
    init(value: String, title: String) {
        super.init(frame: .zero)
        
        valueLabel.text = value
        titleLabel.text = title
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 96, height: 96)
    }
    
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .squareBackground
        layer.cornerRadius = 32
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.font = .preferredFont(forTextStyle: .body)
        valueLabel.textColor = .white
        valueLabel.textAlignment = .center
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .preferredFont(forTextStyle: .subheadline)
        titleLabel.textColor = .systemGray
        titleLabel.textAlignment = .center
    }
    
    private func layout() {
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(titleLabel)
        
        addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
