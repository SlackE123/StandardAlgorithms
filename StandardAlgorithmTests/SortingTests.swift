//
//  SortingTests.swift
//  StandardAlgorithmTests
//
//  Created by Slack, Ed (AMM) on 10/11/2023.
//

import XCTest

final class SortingTests: XCTestCase {

    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    
    func testBubbleSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [5,1,3,7,4], expected: [1,3,4,5,7]),
                         (data: [2,1,3,7,4], expected: [1,2,3,4,7]),
                         (data: [7,4], expected: [4,7])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.data)
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [5,1,3,7,4], expected: [1,3,4,5,7]),
                         (data: [2,1,3,7,4], expected: [1,2,3,4,7]),
                         (data: [7,4], expected: [4,7])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(testCase.data)
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [5,1,3,7,4], expected: [1,3,4,5,7]),
                         (data: [2,1,3,7,4], expected: [1,2,3,4,7]),
                         (data: [7,4], expected: [4,7])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.data)
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortwithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [5,1,3,7,4], expected: [1,3,4,5,7]),
                         (data: [2,1,3,7,4], expected: [1,2,3,4,7]),
                         (data: [7,4], expected: [4,7]), 
                         (data: [7,7], expected: [7,7]),
                         (data: [], expected: [])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(testCase.data)
            
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    
    func testLinearSearchWithManySortedIntegersAndReturnIndexOfNumber() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [1,3,4,5,7], number: 3, expected: 1),
                         (data: [2,3,5,6,7], number: 6, expected: 3),
                         (data: [4,7], number: 4, expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.linearSearch(testCase.data, testCase.number)
            
            XCTAssertEqual(actual, (testCase).expected)
        }
    }
    
    func testBinarySearchWithManySortedIntegersAndReturnIndexOfNumber() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [1,3,4,5,7,9], number: 3, expected: 1),
                         (data: [2,3,5,6,7,8], number: 6, expected: 3),
                         (data: [4,7], number: 4, expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.binarySearch(testCase.data, testCase.number)
            
            XCTAssertEqual(actual, (testCase).expected)
        }
    }

    
}


final class SortingEfficiencyTests: XCTestCase{
    
    let fiveNumberTestCase = Array(repeating: 0, count: 5)
    let fiftyNumberTestCase = Array(repeating: 0, count : 50)
    let fiveHundredNumberTestCase = Array(repeating: 0, count : 500)
    
    func testBubbleSortEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.bubbleSort(fiveNumberTestCase)
            sorting.bubbleSort(fiftyNumberTestCase)
            sorting.bubbleSort(fiveHundredNumberTestCase)
        }
    }
    
    func testMergeSortEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.mergeSort(fiveNumberTestCase)
            sorting.mergeSort(fiftyNumberTestCase)
            sorting.mergeSort(fiveHundredNumberTestCase)
        }
    }
    
    func testLinearSearchEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.linearSearch(fiveNumberTestCase, 1)
            sorting.linearSearch(fiftyNumberTestCase, 1)
            sorting.linearSearch(fiveHundredNumberTestCase, 1)
        }
    }

    func testBinarySearchEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.binarySearch(fiveNumberTestCase, 1)
            sorting.binarySearch(fiftyNumberTestCase, 1)
            sorting.binarySearch(fiveHundredNumberTestCase, 1)
        }
    }

    func testQuickSortEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.quickSort(fiveNumberTestCase)
            sorting.quickSort(fiftyNumberTestCase)
            sorting.quickSort(fiveHundredNumberTestCase)
        }
    }
    
    func testInsertionSortEfficiency() {
        let sorting = Sorting()
        
        measure{
            sorting.insertionSort(fiveNumberTestCase)
            sorting.insertionSort(fiftyNumberTestCase)
            sorting.insertionSort(fiveHundredNumberTestCase)
        }
    }

    
}
