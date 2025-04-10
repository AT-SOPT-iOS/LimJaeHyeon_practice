//
//  WelcomeViewController.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/10/25.
//

import UIKit

final class WelcomeViewController: UIViewController {
   
    private var id: String?
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(frame: .init(x: 100, y: 100, width: 150, height: 150))
        imageView.image = UIImage(named: "rabbit")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: .init(x: 69, y: 281, width: 236, height: 44))
        label.text = "???님\n반가워요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    
    private lazy var goToMainButton: UIButton = {
        let button = UIButton(frame: .init(x: 20, y: 430, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.addTarget(self, action: #selector(goToMainButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: .init(x: 20, y: 498, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitle("다시로그인", for: .normal)
        button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    
    override func loadView() {
           super.loadView()
           bindID()
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.hidesBackButton = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpUI()
      
    }
    
    func setLabelText(_ id: String?) {
        self.id = id
    }
    
}

private extension WelcomeViewController {
    
    private func setUpUI() {
        [logoImageView,welcomeLabel,goToMainButton,backToLoginButton].forEach {
            self.view.addSubview($0)
        }
    }
    
    @objc
    func backToLoginButtonDidTap() {
        
        let alert = UIAlertController(title: "다시 로그인", message: "돌아가면 다시 로그인해야해요", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "네", style: .default) { _ in
            print("알람 네 클릭했어요~")
            if self.navigationController == nil {
                self.dismiss(animated: true)
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
        let cancel = UIAlertAction(title: "아니요", style: .destructive)
        alert.addAction(action)
        alert.addAction(cancel)
        present(alert,animated: true,completion: nil)

    }
    
    @objc
    func goToMainButtonDidTap() {
        print("메인으로")
    }
    
    private func bindID() {
        if let id = id {
            self.welcomeLabel.text = "\(id)님 반가워요"
        }
    }
    
}
