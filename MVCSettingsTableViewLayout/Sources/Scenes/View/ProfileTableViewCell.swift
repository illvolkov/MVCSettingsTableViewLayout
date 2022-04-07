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
        
        image.layer.cornerRadius = displayAdaptationToiPodTouch(withiPodValue: 0.08, andiPhoneValue: 0.1)
        image.layer.masksToBounds = true
        
        return image
    }()
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withiPodValue: 0.06, andiPhoneValue: 0.07))
        
        return label
    }()
    
    private lazy var profileDetailedLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withiPodValue: 0.03, andiPhoneValue: 0.038))
                                 
        return label
    }()
    
    private func displayAdaptationToiPodTouch(withiPodValue: CGFloat, andiPhoneValue: CGFloat) -> CGFloat {
        let device = UIDevice()
        
        return device.name == "iPod touch (7th generation)" ?
        contentView.frame.width * withiPodValue : contentView.frame.width * andiPhoneValue
    }
    
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
        
        contentView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.28).isActive = true
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 17).isActive = true
        profileImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2).isActive = true
        profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor).isActive = true
        
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        profileNameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 15).isActive = true
        
        profileDetailedLabel.translatesAutoresizingMaskIntoConstraints = false
        profileDetailedLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 4).isActive = true
        profileDetailedLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 15).isActive = true

    }
    
    func configure(with model: Settings) {
        profileImage.image = UIImage(named: model.image)
        profileNameLabel.text = model.name
        profileDetailedLabel.text = model.detailedTitle
    }
}
