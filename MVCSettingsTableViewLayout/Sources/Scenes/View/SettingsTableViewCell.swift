//
//  SettingsTableViewCell.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation
import UIKit

final class SettingsTableViewCell: UITableViewCell {
    
    //MARK: - Identifier
    
    static let identifier = Strings.settingCellIdentifier
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        return icon
    }()
    
    //MARK: - Views
    
    private lazy var settingNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: SettingsView.displayAdaptationToiPod(
                                         withiPodValue: contentView.frame.width * Sizes.iPodFontSize0_045,
                                         andiPhoneValue: contentView.frame.width * Sizes.iPhoneFontSize0_053))
        
        return label
    }()
    
    private lazy var settingInformerLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: SettingsView.displayAdaptationToiPod(
                                         withiPodValue: contentView.frame.width * Sizes.iPodFontSize0_045,
                                         andiPhoneValue: contentView.frame.width * Sizes.iPhoneFontSize0_053))
        label.alpha = Display.settingInformerLabelAlpha
        label.textAlignment = .right
        
        return label
    }()
    
    private lazy var settingIndicatorBadge: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = .systemRed
        label.textColor = .white
        label.layer.cornerRadius = SettingsView.displayAdaptationToiPod(
                                   withiPodValue: contentView.frame.width * Sizes.settingIndicatorBadgeCornerRadiusiPod,
                                   andiPhoneValue: contentView.frame.width * Sizes.settingIndicatorBadgeCornerRadiusiPhone)
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: SettingsView.displayAdaptationToiPod(
                                         withiPodValue: contentView.frame.width * Sizes.iPodFontSize0_045,
                                         andiPhoneValue: contentView.frame.width * Sizes.iPhoneFontSize0_053), weight: .medium)
        
        return label
    }()
    
    private lazy var settingSwitch: UISwitch = {
        let settingSwitch = UISwitch()
        return settingSwitch
    }()
        
    //MARK: - Settings
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        settingSwitch.removeFromSuperview()
        settingNameLabel.removeFromSuperview()
        settingInformerLabel.removeFromSuperview()
        settingIcon.removeFromSuperview()
        settingIndicatorBadge.removeFromSuperview()
    }
    
    private func setupDisplay(with model: Settings) {
        
        contentView.addSubview(settingIcon)
        contentView.addSubview(settingNameLabel)
        accessoryType = .disclosureIndicator

        settingIcon.translatesAutoresizingMaskIntoConstraints = false
        settingIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        settingIcon.leftAnchor.constraint(equalTo: contentView.leftAnchor,
                                          constant: Offsets.settingIconLeftOffset).isActive = true
        settingIcon.widthAnchor.constraint(equalTo: contentView.widthAnchor,
                                           multiplier: model.name == Strings.cellNameAirplaneMode || model.name == Strings.cellNameVPN ?
                                           Sizes.settingIconWidthMultiplierSizeiPod :
                                           Sizes.settingIconWidthMultiplierSizeiPhone).isActive = true
        settingIcon.heightAnchor.constraint(equalTo: settingIcon.widthAnchor).isActive = true
        
        settingNameLabel.translatesAutoresizingMaskIntoConstraints = false
        settingNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        settingNameLabel.leftAnchor.constraint(equalTo: settingIcon.rightAnchor,
                                               constant: Offsets.leftOffset15).isActive = true
        
    }
    
    private func setupDisplayForSpecificCells(with model: Settings) {
        
        if model.name == Strings.cellNameAirplaneMode || model.name == Strings.cellNameVPN {
            contentView.addSubview(settingSwitch)
            
            settingSwitch.translatesAutoresizingMaskIntoConstraints = false
            settingSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingSwitch.rightAnchor.constraint(equalTo: contentView.rightAnchor,
                                                 constant: Offsets.settingSwitchRightOffset).isActive = true
            accessoryType = .none
            
        } else if model.name == Strings.cellNameWiFi || model.name == Strings.cellNameBluetooth {
            contentView.addSubview(settingInformerLabel)
            
            settingInformerLabel.translatesAutoresizingMaskIntoConstraints = false
            settingInformerLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingInformerLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,
                                                        constant: Offsets.settingInformerLabelRightOffset).isActive = true
            settingInformerLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor,
                                                        multiplier: Sizes.settingInformerLabelWidthMultiplierSize).isActive = true
            
        } else if model.name == Strings.cellNameMain {
            contentView.addSubview(settingIndicatorBadge)
            
            settingIndicatorBadge.translatesAutoresizingMaskIntoConstraints = false
            settingIndicatorBadge.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingIndicatorBadge.rightAnchor.constraint(equalTo: contentView.rightAnchor,
                                                         constant: Offsets.settingIndicatorBadgeRightOffset).isActive = true
            settingIndicatorBadge.widthAnchor.constraint(equalTo: contentView.widthAnchor,
                                                         multiplier: Sizes.settingIndicatorBadgeWidthMultiplierSize).isActive = true
            settingIndicatorBadge.heightAnchor.constraint(equalTo: settingIndicatorBadge.widthAnchor).isActive = true
        }
    }
    
    //MARK: - Configure
    
    func configure(with model: Settings) {
        settingIcon.image = UIImage(named: model.image)
        settingNameLabel.text = model.name
        settingInformerLabel.text = model.detailedTitle
        settingIndicatorBadge.text = model.detailedTitle
        
        setupDisplay(with: model)
        setupDisplayForSpecificCells(with: model)
    }
}
