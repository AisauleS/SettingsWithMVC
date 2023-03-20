//
//  SettingsView.swift
//  SettingsWithMVC
//
//  Created by Aisaule Sibatova on 19.03.2023.
//

import UIKit
import SnapKit

final class SettingsView: UIView {
    
    
    
    // MARK: - Propersties


   var models = [Settings]()
    
    // MARK: - Configuration
    
func  configureView(with model: [Settings]) {
     self.models = model

    }
    
    // MARK: - Views
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        tableView.register(SwitchTableViewCell.self,forCellReuseIdentifier: SwitchTableViewCell.identifier)
        tableView.register(StatusTableViewCell.self,forCellReuseIdentifier: StatusTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    
    // MARK: - Initial
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints {make in
            make.edges.equalTo(self)
        }
    }

    
   

}
