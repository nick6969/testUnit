//
//  testUnitTests.swift
//  testUnitTests
//
//  Created by nickLin on 2017/3/28.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import XCTest

class testUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    /*
     一到五集的哈利波特，每一本都是賣 100 元。
     Scenario1: 第一集買了一本，其他都沒買，價格應為 (100 * 1) = 100 元
     Given 第一集買了 1 本
     And 第二集買了 0 本
     And 第三集買了 0 本
     And 第四集買了 0 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 100 元
     
     */
    
    func test01(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)

        
        let ans = 100.0
        
        let price = vc.calc01()
        
        XCTAssertTrue(ans == price)
        
    }
    
    
    
    /*
     如果你從這個系列買了兩本不同的書，則會有 5% 的折扣。
     Scenario2: 第一集買了一本，第二集也買了一本，價格應為 (100 * 2 * 0.95) = 190
     Given 第一集買了 1 本
     And 第二集買了 1 本
     And 第三集買了 0 本
     And 第四集買了 0 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 190 元
     
     */
    
    func test02(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        
        
        let ans = 190.0
        
        let price = vc.calc02()
        
        XCTAssertTrue(ans == price)
        
    }

    
    
    /*
     如果你買了三本不同的書，則會有 10% 的折扣。
     Scenario3: 一二三集各買了一本，價格應為 (100 * 3 * 0.9) = 270
     Given 第一集買了 1 本
     And 第二集買了 1 本
     And 第三集買了 1 本
     And 第四集買了 0 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 270 元
     
     */
    
    func test03(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        vc.addBook(.阿茲卡班的逃犯)
        
        
        let ans = 270.0
        
        let price = vc.calc03()
        
        XCTAssertTrue(ans == price)
        
    }

    
    
    
    /*
     如果是四本不同的書，則會有 20% 的折扣。
     Scenario4: 一二三四集各買了一本，價格應為 (100 * 4 * 0.8) = 320
     Given 第一集買了 1 本
     And 第二集買了 1 本
     And 第三集買了 1 本
     And 第四集買了 1 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 320 元
     
     */
    
    func test04(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        vc.addBook(.阿茲卡班的逃犯)
        vc.addBook(.火盃的考驗)
        
        
        let ans = 320.0
        
        let price = vc.calc04()
        
        XCTAssertTrue(ans == price)
        
    }

    
    
    /*
     如果你一次買了整套一到五集，恭喜你將享有 25% 的折扣。
     Scenario5: 一次買了整套，一二三四五集各買了一本，價格應為 (100 * 5 * 0.75) = 375
     Given 第一集買了 1 本
     And 第二集買了 1 本
     And 第三集買了 1 本
     And 第四集買了 1 本
     And 第五集買了 1 本
     When 結帳
     Then 價格應為 375 元
     
     */

    func test05(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        vc.addBook(.阿茲卡班的逃犯)
        vc.addBook(.火盃的考驗)
        vc.addBook(.鳳凰會的密令)
        
        
        let ans = 375.0
        
        let price = vc.calc05()
        
        XCTAssertTrue(ans == price)
        
    }

    
    /*
     需要留意的是，如果你買了四本書，其中三本不同，第四本則是重複的，那麼那三本將享有 10% 的折扣，但重複的那一本，則仍須 100 元。
     Scenario6: 一二集各買了一本，第三集買了兩本，價格應為 (100 * 3 * 0.9) + 100 = 370
     Given 第一集買了 1 本
     And 第二集買了 1 本
     And 第三集買了 2 本
     And 第四集買了 0 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 370 元
     
     */
    
    func test06(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        vc.addBook(.阿茲卡班的逃犯)
        vc.addBook(.阿茲卡班的逃犯)
        
        
        let ans = 370.0
        
        let price = vc.calc06()
        
        XCTAssertTrue(ans == price)
        
    }

    
    
    
    /*
     需要留意的是，如果你買了四本書，其中三本不同，第四本則是重複的，那麼那三本將享有 10% 的折扣，但重複的那一本，則仍須 100 元。
     Scenario7: 第一集買了一本，第二三集各買了兩本，價格應為 (100 * 3 * 0.9) + ( 100 * 2 * 0.95) = 460
     Given 第一集買了 1 本
     And 第二集買了 2 本
     And 第三集買了 2 本
     And 第四集買了 0 本
     And 第五集買了 0 本
     When 結帳
     Then 價格應為 460 元
     */
    
    func test07(){
        let vc = ShoppingCart()
        
        vc.addBook(.神秘的魔法石)
        vc.addBook(.消失的密室)
        vc.addBook(.消失的密室)
        vc.addBook(.阿茲卡班的逃犯)
        vc.addBook(.阿茲卡班的逃犯)
        
        
        let ans = 460.0
        
        let price = vc.calc06()
        
        XCTAssertTrue(ans == price)
        
    }
    


    
    
    
    
    
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
