//
//  AlphaView.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

final class GammaView: UIView {
    
    private let gammaView = Constants.buildUIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup views and constraints

extension GammaView {
    
    func setUpViews() {
        addSubview(gammaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        gammaView.translatesAutoresizingMaskIntoConstraints = false
        gammaView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        gammaView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        gammaView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        gammaView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}

extension GammaView {
    enum Constants {
        
        static func buildUIView() -> UIView {
            let view = UIView()
            view.backgroundColor = .green
            
            return view
        }
    }
}
