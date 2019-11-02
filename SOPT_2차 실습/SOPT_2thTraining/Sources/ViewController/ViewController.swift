//
//  ViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextFieldUpLayout: NSLayoutConstraint!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    //원래 레이아웃의 길이를 저장할 변수
    var originConstant: CGFloat!
    //키보드 높이를 저장할 변수
    var keyboardHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonSet()
        initGestureRecognizer()
        registerForKeyboardNotifications()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        unregisterForKeyboardNotifications()
    }
    
    // MARK: - 로그인버튼 테두리
    func loginButtonSet(){
        self.loginButton.layer.borderColor = UIColor.white.cgColor
        self.loginButton.layer.borderWidth = 1
        self.loginButton.layer.cornerRadius = 22
    }
    
    // MARK: - 로그인버튼 클릭
    @IBAction func loginButtonClick(_ sender: Any) {
        // 로그인 서버 통신 구현 코드
        guard let id = idTextField.text else { return }
        guard let pw = pwTextField.text else { return }
        
        LoginService.shared.getLoginResult(id: id, pw: pw)
        {
            data in
            
            switch data {
                
            case .success(let data):
                
                // DataClass 에서 받은 유저 정보 반환
                let user_data = data as! LoginResult.UserInfo
                
                // 사용자의 토큰, 이름, 이메일, 전화번호 받아오기
                // 비밀번호는 안 받아와도 됨
                UserDefaults.standard.set(user_data.userIdx, forKey: "token")
                UserDefaults.standard.set(user_data.name, forKey: "name")
                UserDefaults.standard.set(user_data.phone, forKey: "phone")
                
                guard let main = self.storyboard?.instantiateViewController(identifier: "TabBarVC") else { return }
                self.present(main, animated: true)
                
            case .requestErr(let message):
                self.simpleAlert(title: "로그인 실패", message: "\(message)")
                
            case .pathErr:
                print(".pathErr")
                
            case .serverErr:
                print(".serverErr")
                
            case .networkFail:
                self.simpleAlert(title: "로그인 실패", message: "네트워크 상태를 확인해주세요.")
            }
        }
    }
}

extension ViewController: UIGestureRecognizerDelegate{
    
    //MARK: - 키보드 내리기
    //TextField를 터치했는지 판별
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view?.isDescendant(of: idTextField) ?? false || touch.view?.isDescendant(of: pwTextField) ?? false {
            //터치된 뷰가 TextField면 터치를 안한것처럼 이벤트를 주지않고 키보드가 꺼지지 않도록
            return false
        }
        
        return true
    }
    
    //GestureRecognizer 생성
    func initGestureRecognizer() {
        let textFieldTap = UITapGestureRecognizer(target: self, action: #selector(handleTapTextField(_:)))
        textFieldTap.delegate = self
        view.addGestureRecognizer(textFieldTap)
    }
    
    // 다른 위치 탭했을 때 키보드 없어지는 코드
    @objc func handleTapTextField(_ sender: UITapGestureRecognizer) {
        self.idTextField.resignFirstResponder()
        self.pwTextField.resignFirstResponder()
    }
    
    //MARK: - 키보드에 따른 뷰의 이동
    // observer생성
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    //observer해제
    func unregisterForKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // keyboard가 보여질 때 어떤 동작을 수행
    @objc func keyboardWillShow(_ notification: NSNotification) {
        
        //키보드의 동작시간 얻기
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        //키보드의 애니메이션종류 얻기
        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else { return }
        
        //키보드의 크기 얻기
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        
        //iOS11이상부터는 노치가 존재하기때문에 safeArea값을 고려해야 함
        if #available(iOS 11.0, *) {
            keyboardHeight = keyboardFrame.cgRectValue.height - self.view.safeAreaInsets.bottom
        } else {
            keyboardHeight = keyboardFrame.cgRectValue.height
        }
        
        //원래 레이아웃의 길이를 저장하기위함
        originConstant = self.idTextFieldUpLayout.constant
        
        // animation 함수
        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
            
            //로고를 지우고, idTextField를 위로 이동시킴
            //현 originConstant = -160에서 키보드의 높이만큼 더해주면 위로 상승
            self.logoImage.alpha = 0
            self.idTextFieldUpLayout.constant = self.originConstant + self.keyboardHeight/3 
            
        })
        
        self.view.layoutIfNeeded()
    }
    
    // keyboard가 사라질 때 어떤 동작을 수행
    @objc func keyboardWillHide(_ notification: NSNotification) {
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {return}
        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else {return}
        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
            
            // 원래대로 돌아가도록
            self.logoImage.alpha = 1.0
            self.idTextFieldUpLayout.constant = self.originConstant
        })
        
        self.view.layoutIfNeeded()
    }
    
}
