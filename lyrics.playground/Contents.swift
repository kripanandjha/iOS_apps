import UIKit

func lyrics() {
    var num: Int = 99
    while (num >= 0) {
        if ((num > 0) && (num-1>0)) {
            print("\(num) bottles of beer on the wall, \(num) bottles of beer.")
            print ("Take one down and pass it around, \(num-1) bottles of beer on the wall.\n")
        }
        else if ((num > 0) && (num-1>=0)){
            print("\(num) bottles of beer on the wall, \(num) bottles of beer.")
            print ("Take one down and pass it around, no more bottles of beer on the wall.\n")
        }
       
        else
        {
            print("No more bottles of beer on the wall, no more bottles of beer.")
            print ("Go to the store and buy some more, 99 bottles of beer on the wall.\n")
            return
        }
            num -= 1
    }
}

func lyrics1(_ totalNumberOfBottles:Int) -> String{
    var llyrics: String = ""
    for number in (1...totalNumberOfBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        llyrics += newLine
    }
    llyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    return llyrics
}


//lyrics()
print(lyrics1(99))
