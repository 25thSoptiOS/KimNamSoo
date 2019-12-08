//
//  NoticeFirstViewController.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/19.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NoticeFirstViewController: UIViewController {
    
    @IBOutlet weak var postListTableView: UITableView!
    @IBOutlet weak var hotPostCollectionView: UICollectionView!
    @IBOutlet weak var bestPostKindOfCollectionView: UICollectionView!
    @IBOutlet weak var bestPostCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UITextField!
    var firstBestKindSet = true  // default select
    
    let bestImgSet = ["1","2","1","2","1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        listUISet()

    }
    
    func listUISet(){
        postListTableView.dataSource = self
        hotPostCollectionView.dataSource = self
        bestPostKindOfCollectionView.dataSource = self
        bestPostKindOfCollectionView.delegate = self
        bestPostCollectionView.dataSource = self
        
        postListTableView.layer.borderColor = UIColor.whiteThree.cgColor
        postListTableView.layer.borderWidth = 1
        postListTableView.layer.cornerRadius = 14
    
    }
    
    @IBAction func moreHotPostButtonClick(_ sender: Any) {
        print("HOT 게시판 더보기")
    }
    
    @IBAction func moreBestPostButtonClick(_ sender: Any) {
        print("BEST 게시판 더보기")
    }
    @IBAction func makeNewPostButtonClick(_ sender: Any) {
        print("새 게시판 만들기")
    }
}

enum CollectionType: String{
    case hot = "HotPostCell"
    case bestPost = "BestPostCell"
    case bestKindOf = "BestPostKindOfCell"
}

//MARK: - CollectionView
extension NoticeFirstViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView === self.hotPostCollectionView{
            return 5
        }else if collectionView === self.bestPostCollectionView{
            return 5
        }else if collectionView === self.bestPostKindOfCollectionView{
            return 5
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView === self.hotPostCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionType.hot.rawValue, for: indexPath) as? HotPostCollectionViewCell else {fatalError("Hot Cell err")}
            cell.kindOfWriteLabel.text = "Hot종류\(indexPath.item)"
            cell.userNameLabel.text = "사용자\(indexPath.item)"
            cell.dateLabel.text = "날짜\(indexPath.item)"
            cell.commentNumLabel.text = "\(indexPath.item)"
            cell.goodNumLabel.text = "\(indexPath.item)"
            cell.userCotentLabel.text = "내용\(indexPath.item)"
            cell.contentView.layer.borderWidth = 1
            cell.contentView.layer.cornerRadius = 14
            cell.contentView.layer.borderColor = UIColor.whiteThree.cgColor
            return cell
            
        }else if collectionView === self.bestPostCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionType.bestPost.rawValue, for: indexPath) as? BestPostCollectionViewCell else {fatalError("Best Cell err")}
            cell.kindOfWriteLabel.text = "Best종류\(indexPath.item)"
            cell.userNameLabel.text = "사용자\(indexPath.item)"
            cell.dateLabel.text = "날짜\(indexPath.item)"
            cell.commentNumLabel.text = "\(indexPath.item)"
            cell.goodNumLabel.text = "\(indexPath.item)"
            cell.userCotentLabel.text = "내용\(indexPath.item)"
            cell.contentImgView.image = UIImage(named: bestImgSet[indexPath.item])
            cell.contentView.layer.borderWidth = 1
            cell.contentView.layer.cornerRadius = 14
            cell.contentView.layer.borderColor = UIColor.whiteThree.cgColor
            return cell
        }else if collectionView === self.bestPostKindOfCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionType.bestKindOf.rawValue, for: indexPath) as? BestPostKindOfCollectionViewCell else {fatalError("Kind Cell err")}
            cell.kindOfLabel.text = "Kind종류\(indexPath.item)"
            cell.contentView.layer.borderWidth = 1
            cell.contentView.layer.cornerRadius = cell.contentView.frame.height/2
            cell.contentView.layer.borderColor = UIColor.whiteThree.cgColor
            
            //Default값으로 처음 버튼을 클릭한상태를 표시
            if indexPath.item == 0 {
                cell.backView.backgroundColor = .white
            }
            return cell
        }
        
        return UICollectionViewCell()
    }
}

extension NoticeFirstViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.bestPostKindOfCollectionView{
            //Default값으로 처음 버튼을 클릭한상태를 해제
            if self.firstBestKindSet{
                firstBestKindSet = false
                let firstItem = IndexPath(item: 0, section: 0)
                guard let cell = collectionView.cellForItem(at: firstItem) as? BestPostKindOfCollectionViewCell else {return}
                cell.backView.backgroundColor = .whiteTwo
            }
            guard let cell = collectionView.cellForItem(at: indexPath) as? BestPostKindOfCollectionViewCell else {return}
            print("\(cell.kindOfLabel.text!) 클릭")
            cell.backView.backgroundColor = .white
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if collectionView == self.bestPostKindOfCollectionView{
            guard let cell = collectionView.cellForItem(at: indexPath) as? BestPostKindOfCollectionViewCell else {return}
            
            cell.backView.backgroundColor = .whiteTwo
        }
    }
}

//MARK: - TableView
extension NoticeFirstViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostListCell", for: indexPath) as? PostListTableViewCell else {fatalError("PostList Cell err")}
        cell.titleLabel.text = "title \(indexPath.row)"
        cell.subLabel.text = "sub \(indexPath.row)"
        cell.id = indexPath.row
        
        return cell
    }
    
    
}
