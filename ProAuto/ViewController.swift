//
//  ViewController.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let kappaView = KappaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
}

// MARK: - Setup views and constraints

extension ViewController {
    func setUp() {
        self.view.addSubview(kappaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {

        kappaView.translatesAutoresizingMaskIntoConstraints = false
        kappaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        kappaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        kappaView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        kappaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

