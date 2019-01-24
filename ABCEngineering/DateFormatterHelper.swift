//
//  DateFormatterHelper.swift
//  ABCEngineering
//
//  Created by Hai Le Thanh on 1/24/19.
//  Copyright © 2019 Australian Broadcasting Corporation. All rights reserved.
//

import Foundation

struct DateFormatterHelper {
    static let shared = DateFormatterHelper()
    
    private init() {
        // To prevent others accidentally create this.
    }
    
    private let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.doesRelativeDateFormatting = true
        return formatter
    }()
    
    func string(from date: Date) -> String {
        return formatter.string(from: date)
    }
}
