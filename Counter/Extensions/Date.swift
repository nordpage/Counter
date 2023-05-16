//
//  Date.swift
//  Counter
//
//  Created by Анастасия Хоревич on 16.05.2023.
//

import Foundation

extension Date {

 static func getCurrentDate() -> String {

        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"

        return dateFormatter.string(from: Date())

    }
}
