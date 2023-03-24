//
//  ContentView.swift
//  quiz_challenge
//
//  Created by 株式会社ジェーディーエス on 2023/03/08.
//

import SwiftUI

struct ContentView: View {
    @State var questionCounter = 0
    @State var answerDisplay = ""
    
    
    var body: some View {
        
        
        var ques = Ques()
        var questionsForUsers = ques.question
        var answerForUsers = ques.answer

        //print(questionsForUsers.randomElement()!)
        
        
        
        VStack {
            Text(questionsForUsers[questionCounter])
            Text(answerDisplay)
            Button("A"){
                if ques.answer[questionCounter] == "A"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[questionCounter])でした"
                }
                
            }
            .padding()
            Button("B"){
                if ques.answer[questionCounter] == "B"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[questionCounter])でした"
                }
                
                
            }
            .padding()
            Button("C"){
                if ques.answer[questionCounter] == "C"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[questionCounter])でした"
                }
                
            }
            .padding()
            Button("D"){
                if ques.answer[questionCounter] == "D"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[questionCounter])でした"
                }
                
            }
            .padding()
            Button("次の問題"){
                if ques.question.count != (1 + questionCounter){
                    questionCounter = questionCounter + 1
                    answerDisplay = ""
                }else{
                    print("もう要素なし")
                }
//                 print(questionsForUsers[questionCounter])
//
                
            }.fontWeight(.bold)
            
        }
        .padding()
        
       
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
