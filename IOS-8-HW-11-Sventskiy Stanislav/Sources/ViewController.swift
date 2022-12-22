//
//  ViewController.swift
//  IOS-8-HW-11-Sventskiy Stanislav
//
//  Created by Stanislav Stanislav on 21.12.2022.
//
import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - UI Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 37, weight: .medium)
        
        return label
    }()
    
    private lazy var loginTextField: UITextField = {
        let textFied = UITextField()
        textFied.textColor = .blue
        textFied.textAlignment = .left
        textFied.placeholder = "  Keanureaves01"
        textFied.backgroundColor = .white
        textFied.layer.cornerRadius = 19
        return textFied
        
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textFied = UITextField()
        textFied.textColor = .blue
        textFied.textAlignment = .left
        textFied.placeholder = "  Password "
        textFied.backgroundColor = .white
        textFied.layer.cornerRadius = 19
        return textFied
        
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.systemIndigo
        button.layer.cornerRadius = 19
        return button
    }()
    
    private lazy var labelPass: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return label
    }()
    
    // MARK: - LifeCircle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    
    
    // MARK: - Setups
    
    
    private func setupView() {
        view.backgroundColor = .gray
    }
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button)
        view.addSubview(labelPass)
    }
    
    private func setupLayout() {
        
        label.snp.makeConstraints { make in
            make.top.equalTo(view).offset(120)
            make.centerX.equalTo(view)
        
        }
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(110)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(180)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(370)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            //make.centerX.equalTo(view)
           // make.width.height.equalTo(300)
    }

        labelPass.snp.makeConstraints { make in
            make.top.equalTo(view).offset(600)
            make.centerX.equalTo(view)
        }

    // MARK: - Actions
       // extension UITextField {
       // func setLeftIcon(_ image: UIImage) {
       // let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
       // iconView.image = image
       // let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
      //  let iconContainerView.addSubview(iconView)
      //  leftView = iconContainerView
      //  leftViewMode = .always
}
}
    

