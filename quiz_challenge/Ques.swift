//
//  Ques.swift
//  quiz_challenge
//
//  Created by 株式会社ジェーディーエス on 2023/03/08.
//

import Foundation

class Ques{
    init(){}
    var question:[String] = ["清水寺がある都道府県は？\n A.京都府\n B.大阪府\n C.滋賀県\n D.奈良県",
                             "比叡山延暦寺がある都道府県は？\n  A.京都府\n B.大阪府\n C.滋賀県\n D.奈良県"]
    var answer:[String] = ["A","C"]
    
    
}

var ques = Ques()
var questionsForUsers = ques.question
var answerForUsers = ques.answer

//print(questionsForUsers.randomElement()!)
