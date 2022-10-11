//
//  Settings.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation

struct Section {
    let sectionType: String
    let option: [Settings]
}

struct Settings {
    let image: String
    let name: String
    let detailedTitle: String?
}
