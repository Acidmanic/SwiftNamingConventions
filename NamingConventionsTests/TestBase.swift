//
//  TestBase.swift
//  SwiftNetworkTests
//
//  Created by Mani Moayedi on 10/31/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//

import Foundation
import XCTest



class TestBase:XCTestCase{
    
    
    func startTestCase(_ funcName:String){
        var name = funcName
        name = String(name.prefix(name.count-2))
        name = String(name.suffix(name.count-4))
        printLine()
        print("Test case: \(name)")
        printLine()
    }
    
    func printLine(){
        print("------------------------------")
    }
    
}

