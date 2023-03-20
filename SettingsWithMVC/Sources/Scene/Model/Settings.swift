//
//  Settings.swift
//  SettingsWithMVC
//
//  Created by Aisaule Sibatova on 19.03.2023.
//

import UIKit

struct Settings {
    let options: [SettingsCellType]
}

enum SettingsCellType {
    case regularCell(model: RegularSettings)
    case switchCell(model: SwitchSettings)
    case statusCell(model: StatusSettings)
}

protocol SettingCell {
    var title: String {get}
    var icon: UIImage? {get}
    var iconBackgroundColor: UIColor {get}
}

struct SwitchSettings: SettingCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct RegularSettings: SettingCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct StatusSettings: SettingCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let statusTitle: String
}
