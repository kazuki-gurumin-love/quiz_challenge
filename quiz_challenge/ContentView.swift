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
    @State var correctionCounter:Int = 0
    @State var corCountDispSwitch:Bool = false
    
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
        
            
        
        NavigationView {
            ZStack{
                VStack {
                    Text(questionsForUsers[randomNum[questionCounter]])
                    Text(answerDisplay)
                    Button("A"){
                        if ques.answer[randomNum[questionCounter]] == "A"{
                            answerDisplay = "正解です！"
                            correctionCounter += 1
                        }else{
                            answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                        }
                        
                    }
                    .padding()
                    Button("B"){
                        if ques.answer[randomNum[questionCounter]] == "B"{
                            answerDisplay = "正解です！"
                            correctionCounter += 1
                        }else{
                            answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                        }
                        
                        
                    }
                    .padding()
                    Button("C"){
                        if ques.answer[randomNum[questionCounter]] == "C"{
                            answerDisplay = "正解です！"
                            correctionCounter += 1
                        }else{
                            answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                        }
                        
                    }
                    .padding()
                    Button("D"){
                        if ques.answer[randomNum[questionCounter]] == "D"{
                            answerDisplay = "正解です！"
                            correctionCounter += 1
                        }else{
                            answerDisplay = "残念！正解は\(ques.answer[randomNum[questionCounter]])でした"
                        }
                        
                    }
                    .padding()
                    
                    
                }
                .padding()
                VStack{
                    Button("次の問題"){
                        if ques.question.count != (1 + questionCounter){
                            questionCounter = questionCounter + 1
                            answerDisplay = ""
                        }else{
                            corCountDispSwitch = true
                        }
                        //                 print(questionsForUsers[questionCounter])
                        //
                        
                    }.fontWeight(.bold)
                        .padding(40)
//                    if corCountDispSwitch == true{
//                        Text("あなたの正解数は\(correctionCounter)でした")
//                            .background(.orange)
//                    }
                    if corCountDispSwitch == true{
                        NavigationLink(destination: SecondView(firstView: "あなたの得点は\(correctionCounter)点でした")){
                            Text("次の画面へ")
                                .padding()
                        }
                        
                    }
                }.padding(.top,500)
                
            }
        }
        
    
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
