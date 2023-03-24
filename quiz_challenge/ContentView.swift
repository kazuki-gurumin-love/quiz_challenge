//
//  ContentView.swift
//  quiz_challenge
//
//  Created by 株式会社ジェーディーエス on 2023/03/08.
//

import SwiftUI

struct ContentView: View {
    @State var questionCounter = 0
    
    
    
    var body: some View {
        
        
        var ques = Ques()
        var questionsForUsers = ques.question
        var answerForUsers = ques.answer

        //print(questionsForUsers.randomElement()!)
        
        
        
        VStack {
            Text(questionsForUsers[questionCounter])
            Button("A"){
                
            }
            .padding()
            Button("B"){
                
            }
            .padding()
            Button("C"){
                
            }
            .padding()
            Button("D"){
                
            }
            .padding()
            Button("次の問題"){
                if ques.question.count != (1 + questionCounter){
                    questionCounter = questionCounter + 1
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
