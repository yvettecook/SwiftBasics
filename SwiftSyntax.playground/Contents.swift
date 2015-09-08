//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// -------- SYNTAX -------- //
// Lots, lots more detail available at https://developer.apple.com/library/prerelease/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1

//: Variables and Constants

var meaningOfLife : Int = 21
meaningOfLife = 21 * 2

let towel : Bool = true

//: Strings
var numberOfWeapons = 1
numberOfWeapons = 2
var weaponsSpeech = "Our \(numberOfWeapons) weapons are fear, and surprise, and ruthless efficiency"

//: Optionals
//: These are used to work with values that might be missing. An optional value either contains a value or contains nil (no value) to indicate that a value is missing.

var optionalWeapon : String? = nil
weaponsSpeech = "Our \(numberOfWeapons++) weapons are fear, and surprise, and ruthless efficiency \(optionalWeapon)"
optionalWeapon = "and an almost fanatical devotion to the Pope"
weaponsSpeech = "Our \(numberOfWeapons++) weapons are fear, and surprise, and ruthless efficiency \(optionalWeapon!)"

weaponsSpeech

//: Conditionals

let messiah = false

if (!messiah) {
    print("He's not the messiah. He's a very naughty boy")
} else {
    print("He is the messiah!")
}
    
//: Arrays and Dictionaries

var classicComedyArray = ["Hitchhikers Guide to the Galaxy", "Monty Python", ]
classicComedyArray.insert("Blackadder", atIndex: 1)

//: For Loops

var blackKnightsLimbs = ["right arm", "left arm", "right leg", "left leg"]

for limb in blackKnightsLimbs {
    blackKnightsLimbs.removeLast()
    print("Tis but a scratch")
    print("Remaining limbs: \(blackKnightsLimbs)")
}

//: Functions

func meetKnightsOfNi (sacredWord : String, gift : Bool) -> String? {
    if sacredWord == "Ni" && !gift {
        return "Almsot certain death"
    } else {
        return "Proceed onward"
    }
}

meetKnightsOfNi("Ni", gift: false)
meetKnightsOfNi("It", gift: true)

//: Class

class Comedy {
    
    let name : String
    let year : Int
    var awards : Array = [String]()
    
    init(name: String) {
        self.name = name
        self.year = 1969
        self.awards = ["BFI TV 100", "TIME Magazine"]
    }
    
    func awardsCount() -> Int {
        return awards.count
    }
}

let flyingCircus = Comedy(name: "Monty Python's Flying Circus")
flyingCircus.awardsCount()

//: Inheritance

class Sitcom : Comedy {
    
    let situation : String
    
    init(name: String, situation: String) {
        self.situation = situation
        super.init(name: name)
    }
    
}

let blackadderVI = Sitcom(name: "Blackadder Goes Forth", situation: "WW2 trenches")
