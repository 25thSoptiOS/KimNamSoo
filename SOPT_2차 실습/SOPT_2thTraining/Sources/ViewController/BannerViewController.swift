//
//  BannerViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/26.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit
import CHIPageControl

class BannerViewController: UIViewController {
    
    @IBOutlet weak var bannerCV: UICollectionView!
    @IBOutlet weak var pageControl: CHIPageControlAleppo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBanner()
        
        bannerCV.delegate = self
        bannerCV.dataSource = self
    }
    
}

extension BannerViewController{
    func setBanner() {
        let banner1 = Banner(bannerName: "mainImage")
        let banner2 = Banner(bannerName: "mainImage01")
        let banner3 = Banner(bannerName: "mainImage02")
        
        appDelegate.bannerList = [banner1, banner2, banner3]
    }
    
    
}


extension BannerViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        if collectionView == self.workCV {
        //            return appDelegate.workList.count
        //        }
        
        return appDelegate.bannerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        if collectionView == self.workCV {
        //            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkCell", for: indexPath) as! WorkCell
        //
        //            let work = appDelegate.workList[indexPath.row]
        //
        //            cell.workIdx = work.workIdx
        //            cell.workImg.image = work.workMainImg
        //
        //            return cell
        //        }
        //        else {
        let bannerCell: BannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
        
        let banner = appDelegate.bannerList[indexPath.row]
        bannerCell.image?.image = banner.bannerImg
        
        // bannerCell.banner = bannerList.
        return bannerCell
        //        }
        //        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        self.pageControl.set(progress: currentPage, animated: true)
        
    }
}
