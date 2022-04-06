//
//  ProfileTableViewCell.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation
import UIKit

final class ProfileTableViewCell: UITableViewCell {
    
    static let identifier = "ProfileTableViewCell"
    
    private lazy var profileImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var profileDetailedLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        contentView.addSubview(profileImage)
        contentView.addSubview(profileNameLabel)
        contentView.addSubview(profileDetailedLabel)
        accessoryType = .disclosureIndicator
    }
    
    private func setupLayout() {
        
        contentView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5).isActive = true
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        profileNameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 20).isActive = true
        
        profileDetailedLabel.translatesAutoresizingMaskIntoConstraints = false
        profileDetailedLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        profileDetailedLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20).isActive = true
    }
    
    func configure(with model: Settings) {
        profileImage.image = UIImage(named: model.image)
        profileNameLabel.text = model.name
        profileDetailedLabel.text = model.detailedTitle
    }
}
