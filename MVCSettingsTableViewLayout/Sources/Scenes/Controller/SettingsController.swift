//
//  ViewController.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 04.04.2022.
//

import UIKit

class SettingsController: UIViewController {
    
    //MARK: - References
    
    //Преобразование типа родительской view в SettingsView
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    var model: SettingsModel?
    
    //MARK: - Lifecycle

    //Сборка модуля
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = SettingsView()
        model = SettingsModel()
        configureView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationController()
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
    //MARK: - Settings
    
    private func setupNavigationController() {

        let searchView = UISearchController()
        searchView.searchBar.tintColor = .systemBlue
        searchView.searchBar.placeholder = Strings.searchBarPlaceholder
        searchView.searchBar.setValue(Strings.searchBarButtonName, forKey: Strings.searchBarButtonKey)

        navigationItem.title = Strings.navigationItemTitle
        navigationItem.searchController = searchView
        navigationController?.navigationBar.prefersLargeTitles = true

        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .clear
        appearance.shadowColor = .clear
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }
    
    //MARK: - Configure

    //Подготовка данных к их отображению
    private func configureView() {
        guard let models = model?.createModel() else { return }
        settingsView?.configureView(with: models)
    }
}

//MARK: - Constants

extension SettingsController {
    
    enum Strings {
        static let searchBarPlaceholder: String = "Поиск"
        static let searchBarButtonName: String = "Отменить"
        static let searchBarButtonKey: String = "cancelButtonText"
        static let navigationItemTitle: String = "Настройки"
    }
}

