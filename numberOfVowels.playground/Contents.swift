/*
Challenge
"A, E, I, O, U, and sometimes Y..."

Write a function called numberOfVowels(in string: String) that returns the count of the total number of vowels in a string. Your solution should be case-insensitive, and allow for 'Y' to be included, or excluded from the count when calling the function.

Example: numberOfVowels(in: "Polly wants a cracker!", isYAVowel = true) // returns 6

Here are the overall instructions for code challenges. Before you begin, fork and clone this repo and work through your solution in the included starter playground file. When you're done, Please make sure to save and push all your work, and submit a Pull Request. Don't forget tag your TL so they can review your submission!
*/

import UIKit

func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
    
    var vowelCount = 0
    var yCount = 0
    
    if isYAVowel == true {
    for character in string {
        switch character {
        case "y":
            yCount += 1
        case "a", "e", "i", "o", "u":
            vowelCount += 1
        default:
            continue
        }
    }
        return yCount + vowelCount
}
    if isYAVowel == false {
    for character in string {
        switch character {
        case "a", "e", "i", "o", "u":
            vowelCount += 1
        default:
            continue
            }
        }
    }
    return vowelCount
}

numberOfVowels(in: "polytheism", isYAVowel: false)


numberOfVowels(in: "anthrophomorphismyyyyyyy", isYAVowel: true)
