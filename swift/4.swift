// #4
// Find the largest palindrome made from the product of two 3-digit numbers

import Cocoa

func check(num: Int) -> Bool {
    var number_string = String(num);
    var number_array: [Character] = []
    for character in number_string {
        number_array.append(character)
    }
    
    return number_array == number_array.reverse() ? true : false
}

func largest_palindrome() -> Int {
    var array: [Int] = []
    for var i = 100; i < 999; i++ {
        println(i)
        for var j = 100; j < 999; j++ {
            var product = i*j;
            if (check(product)==true) {
                println(j)
                array.append(product)
                break
            }
        }
    }
    return array.reduce(Int.min, {max($0, $1)})
}

largest_palindrome()

// 906609
