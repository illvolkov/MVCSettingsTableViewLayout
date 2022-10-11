//
//  ProfileTableViewCell.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation
import UIKit

final class ProfileTableViewCell: UITableViewCell {
    
    //MARK: - Identifier
    
    static let identifier = Strings.profileCellIdentifier
    
    //MARK: - Views
    
    private lazy var profileImage: UIImageView = {
        let image = UIImageView()
        
        image.layer.cornerRadius = SettingsView.displayAdaptationToiPod(
                                   withiPodValue: contentView.frame.width * Sizes.profileImageCornerRadiusiPod,
                                   andiPhoneValue: contentView.frame.width *  Sizes.profileImageCornerRadiusiPhone)
        
        image.layer.masksToBounds = true
        
        return image
    }()
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: SettingsView.displayAdaptationToiPod(
                                         withiPodValue: contentView.frame.width * Sizes.profileNameLabelFontiPodSize,
                                         andiPhoneValue: contentView.frame.width * Sizes.profileNameLabelFontiPhoneSize))
        
        return label
    }()
    
    private lazy var profileDetailedLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: SettingsView.displayAdaptationToiPod(
                                         withiPodValue: contentView.frame.width * Sizes.profileDetailedLabelFontiPodSize,
                                         andiPhoneValue: contentView.frame.width * Sizes.profileDetailedLabelFontiPhoneSize))
                                 
        return label
    }()
    
    //MARK: - Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError(Strings.fatalErrorMessage)
    }
    
    //MARK: - Settings
    
    private func setupHierarchy() {
        
        contentView.addSubview(profileImage)
        contentView.addSubview(profileNameLabel)
        contentView.addSubview(profileDetailedLabel)
        accessoryType = .disclosureIndicator
    }
    
    private func setupLayout() {
        
        //Высота ячейки профиля
        contentView.heightAnchor.constraint(equalTo: contentView.widthAnchor,
                                            multiplier: Sizes.contentViewHeightMultiplierSize).isActive = true
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor,
                                           constant: Offsets.profileImageLeftOffset).isActive = true
        profileImage.widthAnchor.constraint(equalTo: contentView.widthAnchor,
                                            multiplier: Sizes.profileImageWidthMultiplierSize).isActive = true
        profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor).isActive = true
        
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,
                                              constant: Offsets.profileNameLabelTopOffset).isActive = true
        profileNameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor,
                                               constant: Offsets.leftOffset15).isActive = true
        
        profileDetailedLabel.translatesAutoresizingMaskIntoConstraints = false
        profileDetailedLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor,
                                                  constant: Offsets.profileDetailedLabelTopOffset).isActive = true
        profileDetailedLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor,
                                                   constant: Offsets.leftOffset15).isActive = true
    }
    
    //MARK: - Configure
    
    func configure(with model: Settings) {
        profileImage.image = UIImage(named: model.image)
        profileNameLabel.text = model.name
        profileDetailedLabel.text = model.detailedTitle
    }
}
