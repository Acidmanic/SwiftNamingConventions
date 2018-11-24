//
//  NamingConventionsTest.swift
//  ICP.UI.IOSTests
//
//  Created by Mani Moayedi on 7/17/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//
import Foundation
import XCTest
@testable import NamingConventions


class NamingConventionsTest:TestBase {
    
    
    
    override func setUp() {
        super.setUp()
        
    }
    
    func testShouldGetParticlesFromCamelCase(){
        startTestCase(#function)
        let name = "helloWorld"
        let expected = ["hello","World"]
        let actual = ConventionConverter().getName(nameString:name).particles
        
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldGetParticlesFromPascalCase(){
        startTestCase(#function)
        let name = "HelloWorld"
        let expected = ["Hello","World"]
        let actual = ConventionConverter().getName(nameString:name).particles
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    
    func testShouldGetParticlesFromSnakeCase(){
        startTestCase(#function)
        let name = "snake-case-is-hard"
        let expected = ["snake","case","is","hard"]
        let actual = ConventionConverter().getName(nameString:name).particles
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    func testShouldCreateACamelCaseStringFromSnakeCase(){
        startTestCase(#function)
        let name = "a-snake-case-to-convert"
        let expected = "aSnakeCaseToConvert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.CamelCase)
        
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldCreateAPascalStringFromSnakelCase(){
        startTestCase(#function)
        let name = "a-snake-case-to-convert"
        let expected = "ASnakeCaseToConvert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.PascallCase)
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldCreateAJavaConstantCaseStringFromSnakelCase(){
        startTestCase(#function)
        let name = "a-snake-case-to-convert"
        let expected = "A_SNAKE_CASE_TO_CONVERT"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.JavaConstantCase)
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldCreateAMSInternalCaseStringFromSnakelCase(){
        startTestCase(#function)
        let name = "a-snake-case-to-convert"
        let expected = "_aSnakeCaseToConvert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.MSInternalCase)
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    /* from camel case */
    
    func testShouldCreateASnakeCaseStringFromCamelCase(){
        startTestCase(#function)
        let name = "aCamelCaseToConvert"
        let expected = "a-camel-case-to-convert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.SnakeCase)
        
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldCreateAPascaleCaseStringFromCamelCase(){
        startTestCase(#function)
        let name = "aCamelCaseToConvert"
        let expected = "ACamelCaseToConvert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.PascallCase)
        XCTAssertEqual(expected, actual)
        printLine()
    }
    
    
    func testShouldCreateAJavaConstantCaseStringFromCamelCase(){
        let name = "aCamelCaseToConvert"
        let expected = "A_CAMEL_CASE_TO_CONVERT"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.JavaConstantCase)
        XCTAssertEqual(expected, actual)
    }
    
    
    func testShouldCreateAMSInternalCaseStringFromCamelCase(){
        let name = "aCamelCaseToConvert"
        let expected = "_aCamelCaseToConvert"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.MSInternalCase)
        XCTAssertEqual(expected, actual)
    }
    
    
    
    
    func testShouldCreateASnakeString(){
        let name = "aCamelCaseNameToBegin"
        let expected = "a-camel-case-name-to-begin"
        let actual = ConventionConverter().autoConvert(from: name, to: NamingConventions.SnakeCase)
        XCTAssertEqual(expected, actual)
    }
    
    private func assertEqual(expected:[String],actual:[String]){
        if expected.count != actual.count {
            XCTFail()
            return
        }
        for i in 0..<expected.count {
            if expected[i].compare(actual[i]) != ComparisonResult.orderedSame {
                XCTFail()
                return
            }
        }
        XCTAssertTrue(true)
    }
}
