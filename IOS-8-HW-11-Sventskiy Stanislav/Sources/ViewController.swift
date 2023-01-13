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
        textFied.layer.shadowColor = UIColor.black.cgColor
        textFied.layer.shadowOpacity = 0.5
        textFied.layer.shadowOffset = .zero
        textFied.layer.shadowRadius = 10
        textFied.layer.shouldRasterize = true
        textFied.layer.rasterizationScale = UIScreen.main.scale

        return textFied
        
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textFied = UITextField()
        textFied.textColor = .blue
        textFied.textAlignment = .left
        textFied.placeholder = "  Password "
        textFied.backgroundColor = .white
        textFied.layer.cornerRadius = 19
        textFied.layer.shadowColor = UIColor.black.cgColor
        textFied.layer.shadowOpacity = 0.5
        textFied.layer.shadowOffset = .zero
        textFied.layer.shadowRadius = 10
        textFied.layer.shouldRasterize = true
        textFied.layer.rasterizationScale = UIScreen.main.scale
        
        return textFied
        
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.systemIndigo
        button.layer.cornerRadius = 19
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale

        return button
    }()
    
    private lazy var labelPass: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return label
    }()
    
    private lazy var labelOrConnect: UILabel = {
        let label = UILabel()
        label.text = " or connect with "
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return label
    }()
    
    private lazy var buttonFB: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 19
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        
        return button
    }()
    
    private lazy var buttonTW: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 19
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale

        return button
    }()
    private lazy var labelDontHaveAcc: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return label
    }()
    private lazy var labelSignUp: UILabel = {
        let label = UILabel()
        label.text = "Sign up"
        label.textColor = UIColor.blue
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return label
    }()
    private lazy var separatOneView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.layer.cornerRadius = 19
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale

        
        return view
    }()
    
    private lazy var separatTwoView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.layer.cornerRadius = 19
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        
        return view
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
        if #available(iOS 15.0, *) {
            view.backgroundColor = .systemCyan
        } else {
            
        }
    }
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button)
        view.addSubview(labelPass)
        view.addSubview(labelOrConnect)
        view.addSubview(buttonFB)
        view.addSubview(buttonTW)
        view.addSubview(labelDontHaveAcc)
        view.addSubview(labelSignUp)
        view.addSubview(separatOneView)
        view.addSubview(separatTwoView)
    }
    
    private func setupLayout() {
        
        label.snp.makeConstraints { make in
            make.top.equalTo(view).offset(120)
            make.centerX.equalTo(view)
            
        }
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(90)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(160)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(280)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).offset(-45)
            //make.centerX.equalTo(view)
            // make.width.height.equalTo(300)
        }
        
        labelPass.snp.makeConstraints { make in
            make.top.equalTo(view).offset(510)
            make.centerX.equalTo(view)
        }
        
        labelOrConnect.snp.makeConstraints { make in
            make.top.equalTo(view).offset(700)
            make.centerX.equalTo(view)
        }
        
        buttonFB.snp.makeConstraints { make in
            make.top.equalTo(view).offset(760)
            make.height.equalTo(40)
            make.left.equalTo(view).offset(25)
            make.right.equalTo(view).offset(-235)
        }
        
        buttonTW.snp.makeConstraints { make in
            make.top.equalTo(view).offset(760)
            make.height.equalTo(40)
            make.left.equalTo(view).offset(235)
            make.right.equalTo(view).offset(-25)
        }
        labelDontHaveAcc.snp.makeConstraints { make in
            make.top.equalTo(view).offset(850)
            make.left.equalTo(view).offset(95)
            make.right.equalTo(view).offset(-125)
        }
        labelSignUp.snp.makeConstraints { make in
            make.top.equalTo(view).offset(850)
            make.left.equalTo(view).offset(255)
            make.right.equalTo(view).offset(-35)
        }
        separatOneView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(710)
            make.left.equalTo(view).offset(275)
            make.right.equalTo(view).offset(-30)
            make.height.equalTo(2)
        }
        
        separatTwoView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(710)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-275)
            make.height.equalTo(2)
        }
        //MARK: - Actions
       
        
        
    }
}
