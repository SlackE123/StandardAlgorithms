//
//  main.swift
//  StandardAlgorithms
//
//  Created by Slack, Ed (AMM) on 07/11/2023.
//

import Foundation

print("""
    Which algorithm would you like to learn about?
    1. Bubble Sort
    2. Merge Sort
    3. Quick Sort
    4. Insertion Sort
    5. Linear Search
    6. Binary Search
    """)

var userInput = readLine()
if userInput == "1" {
    
    print("""
    Bubble sort is an algorithm where the first number is compared to the number above and if it is larger, they swap position, and then it continues to the second number.
    Best case: O(n)
    Worst Case: O(n^2)
    """)
} else if userInput == "2"{
    print("""
    Merge sort is an algorithm where the original list is split into multiple others until there are lists of only one number. Then these lists get compared and the lists merge into sorted order.
    Best Case: O(n(log(n)))
    Worst Case: O(n(log(n)))
    """)
} else if userInput == "3"{
    print("""
    "Quick sort is an algorithm where the first item is taken as a pivot and then it creates two lists of numbers smaller than the pivot and larger than the pivot. You continue to do this until you have a sorted list.
    Best Case: O(n(log(n)))
    Worst Case: O(n(log(n)))
    """)
} else if userInput == "4"{
    print("""
    Insertion sort is an algorithm where the items of the list are compared to each number in the list and it slots in where it should be.
    Best Case: O(n)
    Worst Case: O(n^2)
    """)
} else if userInput == "5"{
    print("""
    Linear Search is an algorithm where it iterates through every member of the list until it finds the requested number
    Best Case: O(1)
    Worst Case: O(n)
    """)
} else if userInput == "6"{
    print("""
    Binary Search is an algorithm where it takes the middle index and then checks if it is higher or lower than the requested number and then checks the middle index of the smaller list
    Best Case: O(1)
    Worst Case: O(log(n))
    """)
} else{
    print("Why dont you want to learn about my algorithms :(")
}
