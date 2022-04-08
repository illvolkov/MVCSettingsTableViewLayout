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
    
    static let identifier = "SettingsTableViewCell"
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        return icon
    }()
    
    //MARK: - Views
    
    private lazy var settingNameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: 0.045, andValueiPhone: 0.053))
        
        return label
    }()
    
    private lazy var settingInformerLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: 0.045, andValueiPhone: 0.053))
        label.alpha = 0.6
        label.textAlignment = .right
        
        return label
    }()
    
    private lazy var settingIndicatorBadge: UILabel = {
        let label = UILabel()
        
        label.backgroundColor = .systemRed
        label.textColor = .white
        label.layer.cornerRadius = displayAdaptationToiPodTouch(withValueiPod: 0.03, andValueiPhone: 0.0375)
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: displayAdaptationToiPodTouch(withValueiPod: 0.045, andValueiPhone: 0.053), weight: .medium)
        
        return label
    }()
    
    private lazy var settingSwitch: UISwitch = {
        let settingSwitch = UISwitch()
        return settingSwitch
    }()
    
    //MARK: - Functions
    
    private func displayAdaptationToiPodTouch(withValueiPod: CGFloat, andValueiPhone: CGFloat) -> CGFloat {
        let device = UIDevice()
        
        return device.name == "iPod touch (7th generation)" ?
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
        settingIcon.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        settingIcon.widthAnchor.constraint(equalTo: contentView.widthAnchor,
                                           multiplier: model.name == "Авиарежим" || model.name == "VPN" ? 0.088 : 0.095).isActive = true
        settingIcon.heightAnchor.constraint(equalTo: settingIcon.widthAnchor).isActive = true
        
        settingNameLabel.translatesAutoresizingMaskIntoConstraints = false
        settingNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        settingNameLabel.leftAnchor.constraint(equalTo: settingIcon.rightAnchor, constant: 15).isActive = true
        
    }
    
    private func setupDisplayForSpecificCells(with model: Settings) {
        
        if model.name == "Авиарежим" || model.name == "VPN" {
            contentView.addSubview(settingSwitch)
            
            settingSwitch.translatesAutoresizingMaskIntoConstraints = false
            settingSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingSwitch.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -22).isActive = true
            accessoryType = .none
            
        } else if model.name == "Wi-Fi" || model.name == "Bluetooth" {
            contentView.addSubview(settingInformerLabel)
            
            settingInformerLabel.translatesAutoresizingMaskIntoConstraints = false
            settingInformerLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingInformerLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
            settingInformerLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.55).isActive = true
            
        } else if model.name == "Основные" {
            contentView.addSubview(settingIndicatorBadge)
            
            settingIndicatorBadge.translatesAutoresizingMaskIntoConstraints = false
            settingIndicatorBadge.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingIndicatorBadge.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -18).isActive = true
            settingIndicatorBadge.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.075).isActive = true
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
