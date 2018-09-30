//
//  AlphaView.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

final class AlphaView: UIView {
    
    private let alphaView = Constants.buildUIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup views and constraints

extension AlphaView {
    
    func setUpViews() {
        addSubview(alphaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        alphaView.translatesAutoresizingMaskIntoConstraints = false
        alphaView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        alphaView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        alphaView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        alphaView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}

extension AlphaView {
    enum Constants {
        
        static func buildUIView() -> UIView {
            let view = UIView()
            view.backgroundColor = .yellow
            
            return view
        }
    }
}
