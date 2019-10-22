//
//  ViewController.swift
//  SOPT_2thAssignment
//
//  Created by 남수김 on 2019/10/22.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    let calcul4 = ["7","8","9","/"]
    let calcul3 = ["4","5","6","X"]
    let calcul2 = ["1","2","3","-"]
    let calcul1 = ["AC","0","=","+"]
    let space:CGFloat = 10
    var width:CGFloat = 0
    
    var valueLabel:UILabel!
    var operType: OperType = .none
    var beforeOperType: OperType = .none
    var before = 0
    var curValue = 0
    
    enum OperType {
        case plus, sub, div, multi, result, none, num
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        width = self.view.frame.width/4 - 12.5  // 한줄에 버튼4개와 공백50 만큼의 공간이필요
                                                // 버튼이 4개생성되므로 버튼의 크기는 view의가로/4 와 50/4으로 설정
        
        //MARK: - StackView AutoLayout
        //MARK: Row1
        let row1 = stackViewFactory(type: .horizontal)
        self.view.addSubview(row1)
        row1.translatesAutoresizingMaskIntoConstraints = false
        row1.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: space).isActive = true
        row1.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -space).isActive = true
        row1.heightAnchor.constraint(equalToConstant: self.width).isActive = true
        row1.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.space-10).isActive = true
        
        //MARK: Row2
        var row2 = stackViewFactory(type: .horizontal)
        self.view.addSubview(row2)
        row2.translatesAutoresizingMaskIntoConstraints = false
        row2.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: space).isActive = true
        row2.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -space).isActive = true
        row2.heightAnchor.constraint(equalToConstant: self.width).isActive = true
        row2.bottomAnchor.constraint(equalTo: row1.topAnchor , constant: -self.space).isActive = true
        
        //MARK: Row3
        var row3 = stackViewFactory(type: .horizontal)
        self.view.addSubview(row3)
        row3.translatesAutoresizingMaskIntoConstraints = false
        row3.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: space).isActive = true
        row3.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -space).isActive = true
        row3.heightAnchor.constraint(equalToConstant: self.width).isActive = true
        row3.bottomAnchor.constraint(equalTo: row2.topAnchor , constant: -self.space).isActive = true
        
        //MARK: Row4
        var row4 = stackViewFactory(type: .horizontal)
        self.view.addSubview(row4)
        row4.translatesAutoresizingMaskIntoConstraints = false
        row4.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: space).isActive = true
        row4.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -space).isActive = true
        row4.heightAnchor.constraint(equalToConstant: self.width).isActive = true
        row4.bottomAnchor.constraint(equalTo: row3.topAnchor , constant: -self.space).isActive = true
        
        
        
        //MARK: - Button AutoLayout
        let bt1 = buttonFactory(title: calcul1[0], color: UIColor.gray)
        bt1.setTitleColor(UIColor.black, for: .normal)
        let bt2 = buttonFactory(title: calcul1[1], color: UIColor.darkGray)
        let bt3 = buttonFactory(title: calcul1[2], color: UIColor.orange)
        let bt4 = buttonFactory(title: calcul1[3], color: UIColor.orange)
        
        let rowBt1 = [bt1, bt2, bt3, bt4]
        for bt in rowBt1{
            row1.addArrangedSubview(bt)
            bt.translatesAutoresizingMaskIntoConstraints = false
            bt.heightAnchor.constraint(equalToConstant: width).isActive = true
            bt.widthAnchor.constraint(equalToConstant: width).isActive = true
            bt.addTarget(self, action: #selector(numButtonClick), for: .touchUpInside)
        }
        
        
        buttonGenerate(titleSet: calcul2, stack: &row2)
        buttonGenerate(titleSet: calcul3, stack: &row3)
        buttonGenerate(titleSet: calcul4, stack: &row4)
        
        //MARK: - Label AutoLayout
        valueLabel = UILabel()
        self.view.addSubview(valueLabel)
        valueLabel.text = "0"
        valueLabel.textColor = UIColor.white
        valueLabel.font = .systemFont(ofSize: 60)
        valueLabel.textAlignment = .right
        
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.leftAnchor.constraint(equalTo: row4.leftAnchor, constant: 20).isActive = true
        valueLabel.bottomAnchor.constraint(equalTo: row4.topAnchor, constant: -20).isActive = true
        valueLabel.rightAnchor.constraint(equalTo: row4.rightAnchor).isActive = true
        valueLabel.sizeToFit()
        
    }
    
    
    //MARK: Generate Button in StackView
    func buttonGenerate(titleSet: [String], stack: inout UIStackView){
        for text in titleSet{
            var color: UIColor
            if text == titleSet[3]{
                color = UIColor.orange
            }else{
                color = UIColor.darkGray
            }
            
            let bt = buttonFactory(title: text, color: color)
            stack.addArrangedSubview(bt)
            
            //MARK: Button AutoLayout
            bt.translatesAutoresizingMaskIntoConstraints = false
            bt.heightAnchor.constraint(equalToConstant: width).isActive = true
            bt.widthAnchor.constraint(equalToConstant: width).isActive = true
            
            bt.addTarget(self, action: #selector(numButtonClick), for: .touchUpInside)
        }
    }
    
    //MARK: - Calculator
    //MARK: Button Action
    @objc func numButtonClick(_ sender: UIButton){
        
        guard let command = sender.titleLabel?.text else {return}
        
        switch command {
        case "AC":
            self.curValue = 0
            self.before = 0
            self.valueLabel.text = "0"
            self.operType = .none
            self.beforeOperType = .none
            
        case "=":
            if self.operType != .result{
                operation()
                before = curValue
                self.operType = .result
                self.valueLabel.text = curValue.comma
                curValue = 0
            }
            
        case "+":
            calculator()
            self.operType = .plus
            
            
        case "-":
            calculator()
            self.operType = .sub
            
            
        case "X":
            calculator()
            self.operType = .multi
            
            
        case "/":
            calculator()
            self.operType = .div
            
        default:
            
            guard let num = Int(command) else {return}
            if curValue < 10000000 {   //Label범위를 넘어가지않도록제한
                curValue = curValue*10 + num
                self.valueLabel.text = curValue.comma
            }
           
            if self.operType != .num{
                self.beforeOperType = self.operType
            }
            self.operType = .num
           
        }
        
    }
    
    //MARK: Calculator logic
    func calculator(){
        if self.operType == .num{
            operation()
            before = curValue
            self.valueLabel.text = curValue.comma
            curValue = 0
        }
    }
    
    //MARK: Calculator operation
    func operation(){
        if beforeOperType == .none {
            beforeOperType = operType
        }
        switch beforeOperType {
        case .plus:
            self.curValue = self.before + self.curValue

        case .sub:
            self.curValue = self.before - self.curValue
            
        case .multi:
            self.curValue = self.before * self.curValue
        
        case .div:
            self.curValue = self.before / self.curValue
            
        default:
            return
        }
        
        print(curValue)
    }


}

//MARK: - 숫자 3자리구분
extension Int{
    var comma: String {
        let format = NumberFormatter()
        format.numberStyle = .decimal
        format.groupingSize = 3
        format.groupingSeparator = ","
        
        return format.string(from: self as NSNumber) ?? ""
    }
}
