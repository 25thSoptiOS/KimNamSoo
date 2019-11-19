//
//  NoticeMainViewController.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/18.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit
import Tabman
import Pageboy

class NoticeMainViewController: TabmanViewController {
    
    private var viewControllers : [UIViewController] = []
    private var titleSet = ["전체", "정보", "홍보", "단체"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        topBarUISet()
        
        
    }
    
    func setViewControllers(){
        guard let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "first") else {
            return
        }
    
        let secondVC = UIViewController()
        let thirdVC = UIViewController()
        let forthVC = UIViewController()
        
        viewControllers.append(firstVC)
        viewControllers.append(secondVC)
        viewControllers.append(thirdVC)
        viewControllers.append(forthVC)
        
    }
    
    
    //MARK: - TopBar생성
    func topBarUISet(){
        let bar = TMBar.ButtonBar()
        bar.backgroundView.style = .clear
        bar.layout.contentMode = .fit
        bar.layout.transitionStyle = .progressive
        bar.backgroundColor = .white
        bar.buttons.customize { (button) in
            button.tintColor = .brownGrey
            button.selectedTintColor = .grapefruit
        }
        bar.indicator.backgroundColor = .grapefruit
        bar.scrollMode = .interactive
        //        bar.fadesContentEdges
        self.dataSource = self
        addBar(bar, dataSource: self, at: .top)
        
    }
    
}

//MARK: - TopBarDataSource
extension NoticeMainViewController: PageboyViewControllerDataSource, TMBarDataSource {
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let title = titleSet[index]
        return TMBarItem(title: title)
    }
    
}
