//
//  ArticleLoaderTests.swift
//  ABCEngineeringTests
//
//  Created by Hai Le Thanh on 1/25/19.
//  Copyright © 2019 Australian Broadcasting Corporation. All rights reserved.
//

import XCTest
@testable import ABCEngineering

class ArticleLoaderTests: XCTestCase {

    let loader = ArticleLoader()
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testReturnResults() {
        let expectation = XCTestExpectation(description: "Article loader load success")
        loader.load { (articles, error) in
            XCTAssert(articles?.count != 0, "The list should not be empty")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testEachArticleHasValues() {
        let expectation = XCTestExpectation(description: "Articles have values")
        loader.load { (articles, error) in
            XCTAssert(articles?.count != 0, "The list should not be empty")
            
            guard let articles = articles else { return }
            
            for article in articles {
                XCTAssert(!article.title.isEmpty, "Article should have title")
                XCTAssert(!article.synopsis.isEmpty, "Article should have synopsis")
                XCTAssert(!DateFormatterHelper.shared.string(from: article.publishedDate).isEmpty, "Article should have published Date")
                XCTAssert(!article.href.isEmpty, "Article should have href")
            }
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5.0)
    }

}
