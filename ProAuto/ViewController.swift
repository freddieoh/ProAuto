//
//  ViewController.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    private let kappaView = KappaView()
    private let deltaView = DeltaView()
    private let gammaView = GammaView()
    private let alphaView = AlphaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
}

// MARK: - Setup views and constraints

extension ViewController {
    func setUp() {
        self.view.addSubview(kappaView)
        self.view.addSubview(deltaView)
        self.view.addSubview(gammaView)
        self.view.addSubview(alphaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        
        let views: [UIView] = [
            kappaView,
            deltaView,
            gammaView,
            alphaView
        ]
        
        views.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        kappaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        kappaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        kappaView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        kappaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        deltaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        deltaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        deltaView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        deltaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50).isActive = true
        
        gammaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 80).isActive = true
        gammaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -80).isActive = true
        gammaView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80).isActive = true
        gammaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -80).isActive = true
        
        alphaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 100).isActive = true
        alphaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -100).isActive = true
        alphaView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        alphaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        
    }
}
