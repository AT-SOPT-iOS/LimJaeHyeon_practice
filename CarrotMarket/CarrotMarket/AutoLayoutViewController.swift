//
//  AutoLayoutViewController.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/12/25.
//

import UIKit

final class AutoLayoutViewController: UIViewController {
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.view.backgroundColor = .white
    }
    
    func setupUI() {
        // Todo: - UIScreen 으로 바꿔서 해보기
        let screenWidthSize = UIScreen.main.bounds.width / 2
        let screenHeightSize = UIScreen.main.bounds.height / 4
        [yellowView,greenView,blackView,blueView].forEach { [weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: self.view.topAnchor),
            yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            yellowView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            yellowView.heightAnchor.constraint(equalToConstant: screenHeightSize)

        ])
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: self.yellowView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: self.yellowView.trailingAnchor),
            greenView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            greenView.heightAnchor.constraint(equalToConstant: screenHeightSize)

        ])
        
        NSLayoutConstraint.activate([
            blackView.topAnchor.constraint(equalTo: self.greenView.bottomAnchor),
            blackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            blackView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            blackView.heightAnchor.constraint(equalToConstant: screenHeightSize)
        ])
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: self.blackView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: self.blackView.trailingAnchor),
            blueView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            blueView.heightAnchor.constraint(equalToConstant: screenHeightSize)
        ])
    }

}


//extension AutoLayoutViewController {
//    func screen() -> UIScreen? {
//        guard let window = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
//            // 99.9% 확률로 실패할 일은 없을 것 같은데, 만약 실패 한다면 view로 접근하여 사용하기 (1번 방법)
//            return view.window?.windowScene?.screen
//        }
//        
//        // 2번 방법
//        return window.screen
//    }
//}
