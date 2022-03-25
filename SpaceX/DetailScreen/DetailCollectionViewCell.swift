//
//  DetailTableViewCell.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 25.03.2022.
//

import UIKit

struct DetailViewModel {
    let name: String
    let date: String
    let ok: Bool
}

final class DetailCollectionViewCell: UICollectionViewCell {
    
    let viewModel: DetailViewModel? = nil

    static let reuseID = "Cell"
    
    let nameLabel = UILabel()
    let dataLabel = UILabel()
    let statusImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .squareBackground
        layer.cornerRadius = 24
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = .preferredFont(forTextStyle: .title2)
        nameLabel.textColor = .white
        nameLabel.text = "Falcon Sat"
        
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        dataLabel.font = .preferredFont(forTextStyle: .subheadline)
        dataLabel.textColor = .systemGray2
        dataLabel.text = "2 февраля, 2022"
        
        statusImage.translatesAutoresizingMaskIntoConstraints = false
        statusImage.image = UIImage(systemName: "airplane")?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        statusImage.contentMode = .scaleAspectFit
    }
    
    private func layout() {
        addSubview(nameLabel)
        addSubview(dataLabel)
        addSubview(statusImage)
        
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: centerYAnchor, constant: -4).isActive = true
        
        dataLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        dataLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        
        statusImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        statusImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        statusImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        statusImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

extension DetailCollectionViewCell {
    func configure(with vm: DetailViewModel) {
        
        nameLabel.text = vm.name
        dataLabel.text = vm.date
        
        if vm.ok {
            statusImage.image = UIImage(systemName: "airplane")?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        } else {
            statusImage.image = UIImage(systemName: "airplane")?.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
        }
    }
}
