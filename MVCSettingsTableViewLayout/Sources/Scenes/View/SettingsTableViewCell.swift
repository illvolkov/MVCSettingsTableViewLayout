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
    
}
