//
//  ChatViewController.swift
//  Week3
//
//  Created by 임재현 on 4/26/25.
//

import UIKit
import SnapKit

final class ChatViewController: UIViewController {
    private let tableView = UITableView(frame: .zero,style: .plain)
    private let chatList = ChatModel.dummy()
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        register()
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
        
    }
    func register() {
        tableView.register(ChatTableViewCell.self, forCellReuseIdentifier: ChatTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ChatViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.identifier, for: indexPath) as? ChatTableViewCell else  {return UITableViewCell()}
            cell.dataBind(chatList[indexPath.row])
           
        
        return cell
    }
    
    
}
