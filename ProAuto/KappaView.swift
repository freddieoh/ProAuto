//
//  KappaView.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

final class KappaView: UIView {
    
    private let kappaView = Constants.buildUIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup views and constraints

extension KappaView {
    
    func setUpViews() {
        addSubview(kappaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        kappaView.translatesAutoresizingMaskIntoConstraints = false
        kappaView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        kappaView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        kappaView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        kappaView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
}

extension KappaView {
    enum Constants {
        
        static func buildUIView() -> UIView {
            let view = UIView()
            view.backgroundColor = .red
            
            return view
        }
    }
}
