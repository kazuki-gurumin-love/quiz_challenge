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
    
    var randomNum:[Int] = []
    
    
    
//    var ques = Ques()

    var ques = Ques()
    
    init(){
        for i in 0..<ques.question.count{
            randomNum.append(i)
        }
        randomNum.shuffle()
        
//        print(randomNum[questionCounter])
    }
    
    
    
    var body: some View {
        
        
        let questionsForUsers = ques.question
//        var answerForUsers = ques.answer
        

        //print(questionsForUsers.randomElement()!)
        
            
        
        
        VStack {
            Text(questionsForUsers[randomNum[questionCounter]])
            Text(answerDisplay)
            Button("A"){
                if ques.answer[randomNum[questionCounter]] == "A"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                }
                
            }
            .padding()
            Button("B"){
                if ques.answer[randomNum[questionCounter]] == "B"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                }
                
                
            }
            .padding()
            Button("C"){
                if ques.answer[randomNum[questionCounter]] == "C"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                }
                
            }
            .padding()
            Button("D"){
                if ques.answer[randomNum[questionCounter]] == "D"{
                    answerDisplay = "正解です！"
                }else{
                    answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
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
//        .onAppear{
//            for i in 0..<ques.question.count{
//                randomNum.append(i)
//            }
//            randomNum.shuffle()
//            randomNum[questionCounter]
//            print(randomNum[questionCounter])
//        }
        
       
        
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
