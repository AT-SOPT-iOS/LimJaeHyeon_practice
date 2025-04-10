//
//  LoginViewController.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/10/25.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: .init(x: 69, y: 161, width: 236, height: 44))
        label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .PrimaryOrange
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .h1
        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField(frame: .init(x: 20, y: 276, width: 335, height: 52))
        textField.placeholder = "아이디"
        textField.font = .systemFont(ofSize: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        textField.leftView = UIView(frame: .init(x: 0, y: 0, width: 16, height: 16))
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 10
        textField.clipsToBounds = true
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: .init(x: 20, y: 335, width: 335, height: 52))
        textField.placeholder = "비밀번호"
        textField.font = .systemFont(ofSize: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        textField.leftView = UIView(frame: .init(x: 0, y: 0, width: 16, height: 16))
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 10
        textField.clipsToBounds = true
        return textField
    }()
    
    private var loginButton: UIButton = {
        let button = UIButton(frame: .init(x: 21, y: 422, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupUI()
    }
    
}

private extension LoginViewController {
   
    func setupUI() {
        [titleLabel,idTextField,passwordTextField,loginButton].forEach {
            self.view.addSubview($0)
        }
    }
    
    private func presentToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        let inputTextField = idTextField.text?.isEmpty == true ? nil : idTextField.text
        welcomeViewController.setLabelText(inputTextField ?? "???")
        print("id 값 뭐야? \(String(describing: inputTextField))")
        welcomeViewController.modalPresentationStyle = .formSheet
        self.present(welcomeViewController, animated: false)
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        let inputTextField = idTextField.text?.isEmpty == true ? nil : idTextField.text
        welcomeViewController.setLabelText(inputTextField ?? "???")
        print("id 값 뭐야? \(String(describing: inputTextField))")
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc
    func loginButtonDidTapped() {
        print("button Tapped")
  //    presentToWelcomeVC()
        pushToWelcomeVC()
    }
}
