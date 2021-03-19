//
//  main.swift
//  BuubleSortAlgorithm
//
//  Created by Doggett, Scott on 2021-03-19.
//

import Foundation

print("Hello, World!")

// Pause to allow the user to see output
func waitForInput() {
    print("Press RETURN to continue...")
    _ = readLine()
}

// Create an empty array
var dataSet: [Int] = []

// Populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInput()


var swap = false

// Sort the array

// Loop through the array "n" times
// (however many times there are elements in the array)

for i in 0..<dataSet.count {
    
    // One pass through the array to float the highest number to the end
    // "i" will equal the amount of sorted elements after each pass
    for j in 0..<dataSet.count - 1 - i {
        swap = false
        // Compare left value to right value
        if dataSet[j] > dataSet[j + 1] {
            
            // Swap value when left value is greated than the right value
            swap = true
            let temporaryValue = dataSet[j]     // Set aside the left value
            dataSet[j] = dataSet[j + 1]         // Replace left with right
            dataSet[j + 1] = temporaryValue     // Replace right with temporary value
        }
    }
    
    if swap == false {
        break
    }
    
    // Print the array after "n" passes

    print("Array after pass \(i + 1)")
    print(dataSet)
    waitForInput()
}


// Print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()
