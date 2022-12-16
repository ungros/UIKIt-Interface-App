//
//  BaseChartsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.12.2022.
//

import UIKit

extension BaseChartsView {
    struct Data {
        let value: Int
        let title: String
    }
}

final class BaseChartsView: BaseView {
    
    private let yAxisView = YAxisView()
    private let xAxisView = XAxisView()
    
    func configureX(with data: [BaseChartsView.Data]) {
        yAxisView.configure(with: data)
        xAxisView.configure(with: data)
        }
    }




extension BaseChartsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(BaseChartsView)
        setupView(xAxisView)
            
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
