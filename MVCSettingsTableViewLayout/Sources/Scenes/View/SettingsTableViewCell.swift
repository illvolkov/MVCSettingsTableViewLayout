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
    
    static let identifier = Strings.cellIdentifier
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        return icon
    }()
    
    //MARK: - Views
    
    private lazy var settingNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: Sizes.iPodFontSize0_045,
                                                                      andValueiPhone: Sizes.iPhoneFontSize0_053))
        
        return label
    }()
    
    private lazy var settingInformerLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: Sizes.iPodFontSize0_045,
                                                                      andValueiPhone: Sizes.iPhoneFontSize0_053))
        label.alpha = Display.settingInformerLabelAlpha
        label.textAlignment = .right
        
        return label
    }()
    
    private lazy var settingIndicatorBadge: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = .systemRed
        label.textColor = .white
        label.layer.cornerRadius = displayAdaptationToiPodTouch(withValueiPod: Sizes.settingIndicatorBadgeCornerRadiusiPod,
                                                                andValueiPhone: Sizes.settingIndicatorBadgeCornerRadiusiPhone)
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: Sizes.iPodFontSize0_045,
                                                                      andValueiPhone: Sizes.iPhoneFontSize0_053), weight: .medium)
        
        return label
    }()
    
    private lazy var settingSwitch: UISwitch = {
        let settingSwitch = UISwitch()
        return settingSwitch
    }()
    
    //MARK: - Functions
    
    private func displayAdaptationToiPodTouch(withValueiPod: CGFloat, andValueiPhone: CGFloat) -> CGFloat {
        let device = UIDevice()
        
        return device.name == Strings.iPodTouchName ?
        contentView.frame.width * withValueiPod : contentView.frame.width * andValueiPhone
    }
    
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
                                               constant: Offsets.settingNameLabelLeftOffset).isActive = true
        
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

//MARK: - Constants

extension SettingsTableViewCell {
    enum Offsets {
        static let settingIconLeftOffset: CGFloat = 16
        static let settingNameLabelLeftOffset: CGFloat = 15
        static let settingSwitchRightOffset: CGFloat = -22
        static let settingInformerLabelRightOffset: CGFloat = -10
        static let settingIndicatorBadgeRightOffset: CGFloat = -18
    }
    
    enum Sizes {
        static let iPodFontSize0_045: CGFloat = 0.045
        static let iPhoneFontSize0_053: CGFloat = 0.053
        static let settingIndicatorBadgeCornerRadiusiPod: CGFloat = 0.03
        static let settingIndicatorBadgeCornerRadiusiPhone: CGFloat = 0.0375
        static let settingIconWidthMultiplierSizeiPod: CGFloat = 0.088
        static let settingIconWidthMultiplierSizeiPhone: CGFloat = 0.095
        static let settingInformerLabelWidthMultiplierSize: CGFloat = 0.55
        static let settingIndicatorBadgeWidthMultiplierSize: CGFloat = 0.075
    }
    
    enum Strings {
        static let cellIdentifier: String = "SettingsTableViewCell"
        static let iPodTouchName: String = "iPod touch (7th generation)"
        static let cellNameAirplaneMode: String = "Авиарежим"
        static let cellNameVPN: String = "VPN"
        static let cellNameWiFi: String = "Wi-Fi"
        static let cellNameBluetooth: String = "Bluetooth"
        static let cellNameMain: String = "Основные"
    }
    
    enum Display {
        static let settingInformerLabelAlpha: CGFloat = 0.6
    }
}
