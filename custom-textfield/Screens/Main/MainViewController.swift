//
//  MainViewController.swift
//  custom-textfield
//
//  Created by Максим Спиридонов on 20.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        view.backgroundColor = .white
        
        
        
        let login: TextFieldView = TextFieldView(frame: .zero, viewModel: TextFieldFactory.produceTextFieldTextField(type: .email))
        let password: TextFieldView = TextFieldView(frame: .zero, viewModel: TextFieldFactory.produceTextFieldTextField(type: .password))
        
        
        
        
        
        
        view.addSubview(login)
        login.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        login.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        login.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        login.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        
        view.addSubview(password)
        password.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 50).isActive = true
        password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        password.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        
        
    }
    
    
    // MARK: settings Navigation bar
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
