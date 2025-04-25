//
//  ScrollViewController.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/12/25.
//

import UIKit

final class ScrollViewController: UIViewController {
   
    private let scrollView: UIScrollView = UIScrollView()
    private let contentView: UIView = UIView()
    private let redView: UIView = UIView()
    private let orangeView: UIView = UIView()
    private let yellowView: UIView = UIView()
    private let greenView: UIView = UIView()
    private let blueView: UIView = UIView()
    private let purpleView: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        
        let screenWidthSize = UIScreen.main.bounds.width / 2
        
        [scrollView,contentView,redView,orangeView,yellowView,greenView,blueView,purpleView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(redView)
        contentView.addSubview(orangeView)
        contentView.addSubview(yellowView)
        contentView.addSubview(greenView)
        contentView.addSubview(blueView)
        contentView.addSubview(purpleView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        scrollView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor)
        ])
        contentView.backgroundColor = .gray
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: contentView.topAnchor),
            redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            redView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            redView.heightAnchor.constraint(equalToConstant: 300)
        ])
        redView.backgroundColor = .red
        NSLayoutConstraint.activate([
            orangeView.topAnchor.constraint(equalTo: contentView.topAnchor),
            orangeView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
            orangeView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            orangeView.heightAnchor.constraint(equalToConstant: 300)

        ])
        orangeView.backgroundColor = .orange
        
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor),
            yellowView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            yellowView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            yellowView.heightAnchor.constraint(equalToConstant: 300)
        ])
        yellowView.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
            greenView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            greenView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        greenView.backgroundColor = .green
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            blueView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            blueView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        blueView.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: greenView.bottomAnchor),
            purpleView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor),
            purpleView.widthAnchor.constraint(equalToConstant: screenWidthSize),
            purpleView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        purpleView.backgroundColor = .purple
        
        
        
    }
}
