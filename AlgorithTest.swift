//
//  AlgorithTest.swift
//  
//
//  Created by Carlos Méndez on 20/07/22.
//

class Solution {
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        if board.count > 9 {
            return false
        }
        
        for (index, subBoard) in board.enumerated() {
            
            if subBoard.count > 9 {
                return false
            }
            
            var currentCharacterEvaluate: [Character] = []
            
            for value in subBoard {
                
                switch value {
                case ".":
                    currentCharacterEvaluate.append(value);
                case "0":
                    currentCharacterEvaluate.append(value);
                case "1":
                    currentCharacterEvaluate.append(value);
                case "2":
                    currentCharacterEvaluate.append(value);
                case "3":
                    currentCharacterEvaluate.append(value);
                case "4":
                    currentCharacterEvaluate.append(value);
                case "5":
                    currentCharacterEvaluate.append(value);
                case "6":
                    currentCharacterEvaluate.append(value);
                case "7":
                    currentCharacterEvaluate.append(value);
                case "8":
                    currentCharacterEvaluate.append(value);
                case "9":
                    currentCharacterEvaluate.append(value);
                default:
                    return false
                }
            }
        }
        
        return true
    }
    
    func isValidSudokuSubBoard(_ board: [[Character]]) -> Bool {
        
        if board.count > 9 {
            return false
        }
        
        for subBoard in board {
            
            if subBoard.count > 9 {
                return false
            }
            
            for value in subBoard {
                
                if let valueCast = value as? Int {
                    if valueCast > 0 && valueCast < 10 {
                        return true
                    } else {
                        if let valueCastCharacter = value as? Character {
                            if valueCastCharacter != "." {
                                return false
                            }
                        }
                        
                    }
                }
            }
        }
        
        return true
    }
}


