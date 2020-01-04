//
//  Popup.swift
//  radioSample
//
//  Created by Liellison Menezes on 04/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import UIKit

protocol PopUpDelegate {
    func handleDismissal()
}

class Popup: UIView {

    // MARK: - Properties
    
    var delegate: PopUpDelegate?
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.mainBlue()
        button.setTitle("OK", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleDismissal), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    let button2: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.mainBlue()
        button.setTitle("OK2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleDismissal2), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    let button3: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.mainBlue()
        button.setTitle("OK3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleDismissal3), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        
        addSubview(button)
        button.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -64).isActive = true
        button.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        
        addSubview(button2)
        button2.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button2.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        button2.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -38).isActive = true
        button2.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        
        addSubview(button3)
        button3.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button3.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        button3.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        button3.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors
    
    @objc func handleDismissal() {
        delegate?.handleDismissal()
        print("click button 1")
    }
    @objc func handleDismissal2() {
        delegate?.handleDismissal()
        print("click button 2")
    }
    @objc func handleDismissal3() {
        delegate?.handleDismissal()
        print("click button 3")
    }
    
}
