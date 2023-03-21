//
//  SettingsModel.swift
//  SettingsWithMVC
//
//  Created by Aisaule Sibatova on 19.03.2023.
//

import UIKit

final class SettingsModel {
    
    func createSettings() -> [Settings] {
        return [
            (Settings(options: [
                .switchCell(model: SwitchSettings(title: "Airplane mode", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange)),
                .statusCell(model: StatusSettings(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, statusTitle: "Not Connected")),
                .statusCell(model: StatusSettings(title: "Bluetooth", icon: UIImage(named: "blue"), iconBackgroundColor: .systemBlue, statusTitle: "On")),
                .regularCell(model: RegularSettings(title: "Cellular", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen)),
                .regularCell(model: RegularSettings(title: "Personal Hotspot", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen)),
                .switchCell(model: SwitchSettings(title: "VPN", icon: UIImage(named: "vpn"), iconBackgroundColor: .systemBlue))
            ])),
            
            
            (Settings(options: [
                .regularCell(model: RegularSettings(title: "Notifications", icon: UIImage(systemName: "bell.badge"), iconBackgroundColor: .systemRed)),
                .regularCell(model: RegularSettings(title: "Sounds & Haptics", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemPink)),
                .regularCell(model: RegularSettings(title: "Focus", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemPurple)),
                .regularCell(model: RegularSettings(title: "Screen Time", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple))
            ])),
            
            (Settings(options: [
                .regularCell(model: RegularSettings(title: "General", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray)),
                .regularCell(model: RegularSettings(title: "Control Center", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray)),
                .regularCell(model: RegularSettings(title: "Display & Brightness", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue)),
                .regularCell(model: RegularSettings(title: "Home Screen", icon: UIImage(named: "home"), iconBackgroundColor: .blue)),
                .regularCell(model: RegularSettings(title: "Accessibility", icon: UIImage(named: "accessibility"), iconBackgroundColor: .systemBlue)),
                .regularCell(model: RegularSettings(title: "Wallpaper", icon: UIImage(named: "wallpaper"), iconBackgroundColor: .systemMint)),
                .regularCell(model: RegularSettings(title: "Siri & Search", icon: UIImage(named: "siri"), iconBackgroundColor: .black)),
                .regularCell(model: RegularSettings(title: "Face ID & Passcode", icon: UIImage(systemName: "faceid"), iconBackgroundColor: .systemGreen)),
                .regularCell(model: RegularSettings(title: "Emergency SOS", icon: UIImage(named: "sos2"), iconBackgroundColor: .systemRed)),
                .regularCell(model: RegularSettings(title: "Exposure Notifications", icon: UIImage(named: "exposure"), iconBackgroundColor: .white)),
                .regularCell(model: RegularSettings(title: "Battery", icon: UIImage(systemName: "battery.100"), iconBackgroundColor: .systemGreen)),
                .regularCell(model: RegularSettings(title: "Privacy & Security", icon: UIImage(systemName: "hand.raised.fill"), iconBackgroundColor: .systemBlue))
            ]))
        ]
    }
}
