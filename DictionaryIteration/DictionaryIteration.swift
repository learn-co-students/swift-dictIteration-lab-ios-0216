//
//  DictionaryIteration.swift
//  DictionaryIteration
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryIteration {
    
    var bands = ["Nirvana" : "Nevermind",
                 "Blondie" : "Parallel Lines",
                 "The Kinks" : "Low Budget",
                 "The Beatles" : "Sgt. Pepper's Lonely Hearts Club Band"]
    
    func addPixie() {
        bands["Pixie"] = "Doolittle"
    }
    
    func removeKinks() {
        bands["The Kinks"] = nil
    }
    
    func nirvanaBestSeller() -> String {
        let bandName = "Nirvana"
        if let album = bands[bandName] {
            return "\(bandName)'s top-selling album was \(album)."
        }
        return "We couldn't find the bestseller."
    }
    
    func bestSellers() -> String {
        var sentence = ""
        for band in bands {
            let newSentence = "\(band.key)'s top-selling album was \(band.value)."
            sentence = sentence + newSentence + " "
        }
        return sentence
    }
    
    func typeOfDataStructure() -> String {
        return "Tuple"
    }
    
    // Question #7
    func typeOfDataStructureForSchool() -> String {
        return "B"
    }
    
    // Question #8
    func highestGrade(_ grades: [Int : String]) -> Int {
        var highestMark = String()
        var highestGrade = Int()
        
        for grade in grades {
            if highestMark == String() || grade.value < highestMark {
                highestMark = grade.value
                highestGrade = grade.key
            }
        }
        return highestGrade
    }
}
