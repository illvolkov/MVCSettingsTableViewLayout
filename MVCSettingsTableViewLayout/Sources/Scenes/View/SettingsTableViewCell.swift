//
//  SettingsTableViewCell.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation
import UIKit

final class SettingsTableViewCell: UITableViewCell {
    
    static let identifier = "SettingsTableViewCell"
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        //TODO: backgroundColor = .white
        return icon
    }()
    
    private lazy var settingNameLabel: UILabel = {
       let label = UILabel()
       return label
    }()
    
    private lazy var settingInformerLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var settingIndicatorBadge: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var settingSwitch: UISwitch = {
        let settingSwitch = UISwitch()
        return settingSwitch
    }()
    
    private func setupDisplay(with model: Settings) {
        contentView.addSubview(settingIcon)
        contentView.addSubview(settingNameLabel)
        accessoryType = .disclosureIndicator
        
        settingIcon.translatesAutoresizingMaskIntoConstraints = false
        settingIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        settingIcon.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        
        settingNameLabel.translatesAutoresizingMaskIntoConstraints = false
        settingNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        settingNameLabel.leftAnchor.constraint(equalTo: settingIcon.rightAnchor, constant: 15).isActive = true
    }
    
    private func setupDisplayForSpecificCells(with model: Settings) {
        if model.name == "Авиарежим" || model.name == "VPN" {
            contentView.addSubview(settingSwitch)
            
            settingSwitch.translatesAutoresizingMaskIntoConstraints = false
            settingSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingSwitch.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 15).isActive = true
            
        } else if model.name == "Wi-Fi" || model.name == "Bluetooth" {
            contentView.addSubview(settingInformerLabel)
            
            settingInformerLabel.translatesAutoresizingMaskIntoConstraints = false
            settingInformerLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingInformerLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 15).isActive = true
            
        } else if model.name == "Основные" {
            contentView.addSubview(settingIndicatorBadge)
            
            settingIndicatorBadge.translatesAutoresizingMaskIntoConstraints = false
            settingIndicatorBadge.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
            settingIndicatorBadge.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 15).isActive = true
        }
    }
    
    func configure(with model: Settings) {
        settingIcon.image = UIImage(named: model.image)
        settingNameLabel.text = model.name
        settingInformerLabel.text = model.detailedTitle
        settingIndicatorBadge.text = model.detailedTitle
        
        setupDisplay(with: model)
        setupDisplayForSpecificCells(with: model)
    }
}
