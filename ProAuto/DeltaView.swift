//
//  DeltaView.swift
//  ProAuto
//
//  Created by Frederick Ohen on 9/29/18.
//  Copyright © 2018 Morka. All rights reserved.
//

import UIKit

final class DeltaView: UIView {
    
    private let deltaView = Constants.buildUIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup views and constraints

extension DeltaView {
    
    func setUpViews() {
        addSubview(deltaView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        deltaView.translatesAutoresizingMaskIntoConstraints = false
        deltaView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        deltaView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        deltaView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        deltaView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}

extension DeltaView {
    enum Constants {
        
        static func buildUIView() -> UIView {
            let view = UIView()
            view.backgroundColor = .orange
            
            return view
        }
    }
}
