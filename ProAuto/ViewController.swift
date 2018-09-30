//
//  ViewController.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let headerView = Constants.buildUIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
}

// MARK: - Setup views and constraints

extension ViewController {
    func setUp() {
        self.view.addSubview(headerView)
        setUpConstraints()
    }
    
    func setUpConstraints() {

        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

extension ViewController {
    enum Constants {
        
        static func buildLabel() -> UILabel {
            let label = UILabel()
            label.text = "I'm a label"
            label.textColor = .orange
            return label
        }
        static func buildUIView() -> UIView {
            let view = UIView()
            view.backgroundColor = .red
            
            return view
        }
    }
}

