//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Slack, Ed (AMM) on 10/11/2023.
//

import Foundation

class Sorting{
    
    func bubbleSort(_ data: [Int]) -> [Int] {
        var sortedList = [Int]()
        sortedList.append(contentsOf: data)
        
        
        for i in 0..<sortedList.count{
            for j in 0..<sortedList.count-1 {
                if sortedList[j] > sortedList[j+1] {
                    sortedList.swapAt(j, j+1)
                }
            }
        }
        return sortedList
    }
    
    func mergeSort(_ data: [Int]) -> [Int] {
        if data.count < 2 {
            return data
        }
        let middleIndex = data.count / 2
        let leftArray = mergeSort(Array(data[0..<middleIndex]))
        let rightArray = mergeSort(Array(data[middleIndex..<data.count]))
        
        return merge(leftArray, rightArray)
    }
    
    func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        var sortedArray = [Int]()
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            if leftArray[leftIndex] < rightArray[rightIndex]{
                sortedArray.append(leftArray[leftIndex])
                leftIndex += 1
            } else{
                sortedArray.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }
        if leftIndex == leftArray.count {
            sortedArray.append(contentsOf: rightArray[rightIndex..<rightArray.count])
        }
        else if rightIndex == rightArray.count{
            sortedArray.append(contentsOf: leftArray[leftIndex..<leftArray.count])
        }
        
        return sortedArray
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
    
    func insertionSort(_ data: [Int]) -> [Int] {
        var sortedList = [Int]()
        sortedList.append(contentsOf: data)
        for i in 0..<sortedList.count {
            var count = i
            while count > 0 && (sortedList[count - 1]) > sortedList[count] {
                sortedList.swapAt(count, count - 1)
                count -= 1
            }
        }
        return sortedList
    }
    
    func linearSearch(_ data: [Int], _ number: Int) -> Int {
        for i in 0..<data.count {
            if data[i] == number{
                return i
            }
        }
        return 0
    }
    
    func binarySearch(_ data: [Int], _ number: Int) -> Int {
        if data[data.count/2] == number {
            return data.count/2
        }
        else if data[data.count/2] > number {
            var leftArray = [Int]()
            leftArray.append(contentsOf:data[0..<data.count/2])
            return binarySearch(leftArray, number)
        }
        else if data[data.count/2] < number {
            var rightArray = [Int]()
            rightArray.append(contentsOf:data[data.count/2..<data.count])
            return binarySearch(rightArray, number)
        }
        return 0
    }
}
    
