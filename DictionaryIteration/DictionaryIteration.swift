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
            sentence = "\(band.key)'s top-selling album was \(band.value)."
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
        var highestGrade = grades.first?.value
        var highestScoringGrade = grades.first?.key
        for grade in grades {
            
        }
        return highestScoringGrade
    }
}
