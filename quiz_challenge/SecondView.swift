//
//  SecondView.swift
//  quiz_challenge
//
//  Created by 株式会社ジェーディーエス on 2023/06/16.
//

import Foundation
import SwiftUI

struct SecondView: View{
    var tokuten:Int = 0
    
    var body: some View{
        Text("あなたの得点は\(tokuten)点でした")
        Text("過去の最高得点は？？です。")
    }
}
