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
    
    static let identifier = Strings.cellIdentifier
    
    //MARK: - Views
    
    private lazy var profileImage: UIImageView = {
        let image = UIImageView()
        
        image.layer.cornerRadius = displayAdaptationToiPodTouch(withiPodValue: Sizes.profileImageCornerRadiusiPod,
                                                                andiPhoneValue: Sizes.profileImageCornerRadiusiPhone)
        image.layer.masksToBounds = true
        
        return image
    }()
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withiPodValue: Sizes.profileNameLabelFontiPodSize,
                                                                      andiPhoneValue: Sizes.profileNameLabelFontiPhoneSize))
        
        return label
    }()
    
    private lazy var profileDetailedLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withiPodValue: Sizes.profileDetailedLabelFontiPodSize,
                                                                      andiPhoneValue: Sizes.profileDetailedLabelFontiPhoneSize))
                                 
        return label
    }()
    
    //MARK: - Functions

    private func displayAdaptationToiPodTouch(withiPodValue: CGFloat, andiPhoneValue: CGFloat) -> CGFloat {
        let device = UIDevice()
        
        return device.name == Strings.iPodTouchName ?
        contentView.frame.width * withiPodValue : contentView.frame.width * andiPhoneValue
    }
    
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

//MARK: - Constants

extension ProfileTableViewCell {
    enum Offsets {
        static let profileImageLeftOffset: CGFloat = 17
        static let profileNameLabelTopOffset: CGFloat = 20
        static let profileDetailedLabelTopOffset: CGFloat = 4
        static let leftOffset15: CGFloat = 15
    }
    
    enum Sizes {
        static let profileImageCornerRadiusiPod: CGFloat = 0.08
        static let profileImageCornerRadiusiPhone: CGFloat = 0.1
        static let profileImageWidthMultiplierSize: CGFloat = 0.2
        static let profileNameLabelFontiPodSize: CGFloat = 0.06
        static let profileNameLabelFontiPhoneSize: CGFloat = 0.07
        static let profileDetailedLabelFontiPodSize: CGFloat = 0.03
        static let profileDetailedLabelFontiPhoneSize: CGFloat = 0.038
        static let contentViewHeightMultiplierSize: CGFloat = 0.28
    }
    
    enum Strings {
        static let cellIdentifier: String = "ProfileTableViewCell"
        static let iPodTouchName: String = "iPod touch (7th generation)"
        static let fatalErrorMessage: String = "init(coder:) has not been implemented"
    }
}
