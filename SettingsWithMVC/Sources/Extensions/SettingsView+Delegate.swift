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
        tableView.deselectRow(at: indexPath, animated: true)
        }
    }

