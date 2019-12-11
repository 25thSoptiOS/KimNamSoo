//
//  ViewController.swift
//  7th_PracticeTableView
//
//  Created by 남수김 on 2019/12/06.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var musicTable: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var musicList: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMusicData()
        
        musicTable.dataSource = self
        musicTable.delegate = self
        
//        UITabBar().tintColor
//        UITabBar().unselectedItemTintColor
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        // 선태된 상태 해제
        if let index = musicTable.indexPathForSelectedRow {
            musicTable.deselectRow(at: index, animated: true)
        }
    }
    
    
    
    @IBAction func editButtonClick(_ sender: UIBarButtonItem) {
        if musicTable.isEditing {
            self.editButton.title = "Edit"
            self.musicTable.setEditing(false, animated: true)
        }else{
            self.editButton.title = "Done"
            self.musicTable.setEditing(true, animated: true)
        }
    }
}
//MARK: - DataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = musicTable.dequeueReusableCell(withIdentifier: "MusicCell") as! MusicTableViewCell
        cell.viewModel = musicList[indexPath.row]
        
//        cell.musicTitle.text = musicList[indexPath.row].musicTitle
//        cell.singer.text = musicList[indexPath.row].singer
//        cell.albumImg.image = musicList[indexPath.row].albumImg
        
        return cell
    }
}
//MARK: - Delegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = self.storyboard?.instantiateViewController(identifier: "MusicDetailVC") as! MusicDetailVC
        
        let music = musicList[indexPath.row]
        
        nextVC.albumImg = music.albumImg
        nextVC.musicTitle = music.musicTitle
        nextVC.singer = music.singer
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
//MARK: - 초기설정
extension ViewController {
    func setMusicData() {
        let music1 = Music(title: "삐삐", singer: "아이유", coverName: "album_iu")
        let music2 = Music(title: "가을 타나봐", singer: "바이브", coverName: "album_vibe")
        let music3 = Music(title: "고백", singer: "양다일", coverName: "album_yangdail")
        let music4 = Music(title: "하루도 그대를 사랑하지 않은 적이 없었다", singer: "임창정", coverName: "album_im")
        let music5 = Music(title: "Save (Feat. 팔로알토)", singer: "루피(Loopy)", coverName: "album_smtm7")
        let music6 = Music(title: "멋지게 인사하는 법 (Feat. 슬기)", singer: "Zion.T", coverName: "album_ziont")
        let music7 = Music(title: "IDOL", singer: "방탄소년단", coverName: "album_bts")
        let music8 = Music(title: "시간이 들겠지 (Feat. Colde)", singer: "로꼬", coverName: "album_loco")
        let music9 = Music(title: "모든 날, 모든 순간", singer: "폴킴", coverName: "album_paul")
        let music10 = Music(title: "Way Back Home", singer: "숀(SHAUN)", coverName: "album_shaun")
        
        // 생성한 musicList 배열에 Music 모델들을 저장합니다.
        self.musicList = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
        
        self.musicTable.reloadData()
    }
}
