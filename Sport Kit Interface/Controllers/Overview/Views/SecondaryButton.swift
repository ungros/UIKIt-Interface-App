//
//  SecondaryButton.swift
//  Sport Kit Interface
//
//  Created by Roman on 17.07.2022.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let lable = UILabel()
    private let iconView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


private extension SecondaryButton {
    
    func addViews(){
        addSubview(lable)
        addSubview(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure(){
        
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = 14
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textColor = Resources.Colors.active
        lable.textAlignment = .center
        lable.font = Resources.Fonts.helveticaRegular(with: 15)
        
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = UIImage(systemName: "checkmark.seal.fill")?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resources.Colors.active
      
    }
}