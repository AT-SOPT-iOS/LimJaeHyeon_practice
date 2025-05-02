//
//  ItemViewController.swift
//  Week3
//
//  Created by 임재현 on 4/26/25.
//

import UIKit
import SnapKit

class ItemViewController: UIViewController {
    private lazy var  collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    final let carrotLineSpacing: CGFloat = 10
    final let carrotInterLineSpacing: CGFloat = 21
    final let cellHeight:CGFloat = 198
    final let cellWidth:CGFloat = UIScreen.main.bounds.width / 2
    final let carrotInset = UIEdgeInsets(top: 48, left: 20, bottom: 10, right: 20)
    private let itemList = ItemModel.dummy()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register()
    }
    
    private func register() {
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { 
            $0.edges.equalToSuperview()
        }
        collectionView.register(ItemCollectionViewCell.self, forCellWithReuseIdentifier: ItemCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        setupCollectionViewLayout()
    }
    
    
    
//    private func calculateCellHeight() -> CGFloat {
//                let count = CGFloat(itemData.count)
//                let heightCount = count / 2 + count.truncatingRemainder(dividingBy: 2)
//            return heightCount * cellHeight + (heightCount - 1) * carrotLineSpacing + carrotInset.top + carrotInset.bottom
//            }
    private func setupCollectionViewLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        let screenWidth = UIScreen.main.bounds.width
        let doubleCellWidth = screenWidth - carrotInset.left - carrotInset.right - carrotInterLineSpacing
        let cellWidth = doubleCellWidth / 2
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        
        
        flowLayout.minimumLineSpacing = carrotLineSpacing
        flowLayout.minimumInteritemSpacing = carrotInterLineSpacing
        self.collectionView.setCollectionViewLayout(flowLayout, animated: false)
    }
    
}

extension ItemViewController:UICollectionViewDelegateFlowLayout {
    
}

extension ItemViewController: UICollectionViewDataSource,UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier, for: indexPath) as? ItemCollectionViewCell else { return UICollectionViewCell()}
        cell.dataBind(itemList[indexPath.row])
        cell.backgroundColor = .red
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: cellWidth, height: cellHeight)
//    }
//    
   
}
