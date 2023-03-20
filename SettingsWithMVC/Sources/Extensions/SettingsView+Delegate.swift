//
//  UITableView+Delegate.swift
//  SettingsWithMVC
//
//  Created by Aisaule Sibatova on 19.03.2023.
//

import UIKit

// MARK: - UITableViewDataSource

extension SettingsView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        viewController.model = models[indexPath.section].options[indexPath.row]
        
        switch type {
        case .regularCell(let model):
//            navigationController?.pushViewController(viewController, animated: true)
            viewController.fillSettings(with: model.title)
        case .switchCell(_):
            print("nothing happens")
        case .statusCell(let model):
//            navigationController?.pushViewController(viewController, animated: true)
            viewController.fillSettings(with: model.title)
        }
    }
    
    
}
