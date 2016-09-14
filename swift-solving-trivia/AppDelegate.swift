//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(stateCapitals: [String : String]) -> String {
        var answer = String()
        var counter = 0
        
        
        for (state, capital) in stateCapitals {
            
            // isolate characters in the strings
            let stateCharacters = state.lowercaseString.characters
            let capitalCharacters = capital.lowercaseString.characters
            
            for stateCharacter in stateCharacters {
                for capitalCharacter in capitalCharacters {
                    if capitalCharacter == stateCharacter {
                        counter += 1
                        
                    }; if counter == 0 {
                        answer = "\(stateCapitals.keys)"
                        
                    }
                    
                }
            }
            
            
        }
        return answer
    }
    
}


