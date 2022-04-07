//
//  SettingsView.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 04.04.2022.
//

import UIKit

final class SettingsView: UIView, UITableViewDelegate {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: ProfileTableViewCell.identifier)
        tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        tableView.separatorInset.left = displayAdaptationSeparatorLeftInsetToIpod(withiPodValue: 56, andiPhoneValue: 62)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    private func setupView() {
        backgroundColor = .white
    }
    
    var models = [Section]()
    
    func configureView(with models: [Section]) {
        self.models = models
    }
    
    private func displayAdaptationSeparatorLeftInsetToIpod(withiPodValue: CGFloat, andiPhoneValue: CGFloat) -> CGFloat {
        let device = UIDevice()
        return device.name == "iPod touch (7th generation)" ? withiPodValue : andiPhoneValue
    }
}

extension SettingsView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].option.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section]
        let modelCell = models[indexPath.section].option[indexPath.row]
        
        if model.sectionType == "Profile" {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: ProfileTableViewCell.identifier,
                for: indexPath) as? ProfileTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: modelCell)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SettingsTableViewCell.identifier,
                for: indexPath) as? SettingsTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: modelCell)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let modelCell = models[indexPath.section].option[indexPath.row].name
        
        modelCell == "Илья Волков" ? print("Нажата ячейка Профиль") : print("Нажата ячейка", modelCell)
    }
}
