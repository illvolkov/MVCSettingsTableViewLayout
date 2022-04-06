//
//  ViewController.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 04.04.2022.
//

import UIKit

class SettingsController: UIViewController {
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    var model: SettingsModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = SettingsView()
        model = SettingsModel()
        configureView()
    }

    private func configureView() {
        guard let models = model?.createModel() else { return }
        settingsView?.configureView(with: models)
    }

}

