//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Slack, Ed (AMM) on 10/11/2023.
//

import Foundation

class Sorting{
    
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        var sortedList = Array<Int>()
        for number in 1..<numbers.count{
            sortedList.append(numbers[number])
        }
        
        for i in 0..<sortedList.count{
            for j in 0..<sortedList.count-i-1 {
                if sortedList[j] > sortedList[j+1] {
                    let temp = sortedList[j]
                    sortedList.remove(at: j)
                    sortedList.insert(temp, at: j+1)
                }
            }
        }
        return sortedList
    
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
    
