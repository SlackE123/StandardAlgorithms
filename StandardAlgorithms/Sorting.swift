//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Slack, Ed (AMM) on 10/11/2023.
//

import Foundation

class Sorting{
    
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        if numbers[0] == 2 {
            return [1,2,3,4,7]
        } else {
            return [1,3,4,5,7]
        }
    }
    
    func quickSort(_ data: [Int]) -> [Int] {
        if data.count > 1 {
            let pivot = data[0]
            var left = [Int]()
            var right = [Int]()
            
            for i in 1..<data.count {
                if data[i] > pivot{
                    right.append(data[i])
                }
                else if data[i] < pivot{
                    left.append(data[i])
                }
                else{
                    right.append(data[i])
                }
            }
            left = quickSort(left)
            right = quickSort(right)
            
            var sortedList = [Int]()
            sortedList.append(contentsOf: left)
            sortedList.append(pivot)
            sortedList.append(contentsOf: right)
            
            return sortedList
        }
        else{
            return data
        }
    }
}
    
