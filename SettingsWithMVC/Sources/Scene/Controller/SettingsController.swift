//
//  ViewController.swift
//  SettingsWithMVC
//
//  Created by Aisaule Sibatova on 19.03.2023.
//

import UIKit

class SettingsController: UIViewController {
    
    // MARK: - Properties
    
    var model: SettingsModel?
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    // MARK: - Configuration
    
    func configureView() {
        guard let models = model?.createSettings() else {return}
        settingsView?.configureView(with: models)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingsView()
        model = SettingsModel()
        configureView()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
