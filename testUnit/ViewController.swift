//
//  ViewController.swift
//  testUnit
//
//  Created by nickLin on 2017/3/28.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
 哈利波特一到五冊熱潮正席捲全球，世界各地的孩子都為之瘋狂。
 
 出版社為了慶祝 愚人節 ，決定訂出極大的優惠，來回饋給為了小孩四處奔波買書的父母親們。
 
 定價的方式如下：
 一到五集的哈利波特，每一本都是賣 100 元。
 
 你的任務是，設計一個哈利波特的購物車，能提供最便宜的價格給這些爸爸媽媽。
 
 哈利波特前五集分別是：
 
 《哈利波特：神秘的魔法石》
 《哈利波特：消失的密室》
 《哈利波特：阿茲卡班的逃犯》
 《哈利波特：火盃的考驗》
 《哈利波特：鳳凰會的密令》
 驗證範例
 
 Feature: PotterShoppingCart
 In order to 提供最便宜的價格給來買書的爸爸媽媽
 As a 佛心的出版社老闆
 I want to 設計一個哈利波特的購物車
 
 */


enum books : Int{
    
    case 神秘的魔法石 = 1
    case 消失的密室 = 2
    case 阿茲卡班的逃犯 = 3
    case 火盃的考驗 = 4
    case 鳳凰會的密令 = 5

}

class ShoppingCart : NSObject {
    
    var buyBooks : [Int] = []
    
    func addBook(_ book:books){
        buyBooks.append(book.rawValue)
    }

    
    func calc01()->Double{
        return 100 * Double(buyBooks.count)
    }

    func calc02()->Double{
        if buyBooks.count == 1{
            return 100 * Double(buyBooks.count)
        }else{
            return 100 * Double(buyBooks.count) * 0.95
        }
    }

    func calc03()->Double{
        if buyBooks.count == 1{
            return 100 * Double(buyBooks.count)
        }else if buyBooks.count == 2{
            return 100 * Double(buyBooks.count) * 0.95
        }else{
            return 100 * Double(buyBooks.count) * 0.9
        }
    }
    
    func calc04()->Double{
        let count = buyBooks.count
        switch count {
        case 1:
            return 100.0 * Double(count)
            
        case 2:
            return 100.0 * Double(count) * 0.95
            
        case 3:
            return 100.0 * Double(count) * 0.9
            
        case 4:
            return 100.0 * Double(count) * 0.8
       
        default:
            return 100.0 * Double(count)
            
        }
    }

    func calc05()->Double{
        let count = buyBooks.count
        switch count {
        case 1:
            return 100.0 * Double(count)
            
        case 2:
            return 100.0 * Double(count) * 0.95
            
        case 3:
            return 100.0 * Double(count) * 0.9
            
        case 4:
            return 100.0 * Double(count) * 0.8
            
        case 5:
            return 100.0 * Double(count) * 0.75

        default:
            return 100.0 * Double(count)
            
        }
    }

    
    func calc06()->Double{
        
        func cal(_ count : Int)->Double{
            switch count {
            case 1:
                return 100.0 * Double(count)
                
            case 2:
                return 100.0 * Double(count) * 0.95
                
            case 3:
                return 100.0 * Double(count) * 0.9
                
            case 4:
                return 100.0 * Double(count) * 0.8
                
            case 5:
                return 100.0 * Double(count) * 0.75
                
            default:
                return 100.0 * Double(count)
                
            }
        }
        
        let cc : Set<Int> = Set(buyBooks)
        
        var totalPrice = cal(cc.count)
        totalPrice += cal(buyBooks.count - cc.count)
        return totalPrice
    }
    
    
}

























