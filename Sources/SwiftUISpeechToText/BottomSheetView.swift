//
//  SwiftUIView.swift
//  
//
//  Created by Shashwat Panda on 05/02/24.
//

import SwiftUI

//Bottom Sheet
struct SwiftUIView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @Binding var isRecording:Bool
    @Binding var searchText:String
    @Binding var color:Color
    var body: some View {
        VStack{
            Spacer()
            Text("\((isRecording == false) ? "":((speechRecognizer.transcript == "") ? "Speak Now": speechRecognizer.transcript))")
                .frame(width: 300, height: 200, alignment: .center)
            Spacer()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(2)
            Spacer()
        }
        .onAppear{
            speechRecognizer.transcribe()
            color = .red
        }
        .onDisappear{
            color = .gray
            speechRecognizer.stopTranscribing()
            searchText = speechRecognizer.transcript
        }
    }
}


#Preview {
    SwiftUIView( isRecording: .constant(false), searchText: .constant(""), color: .constant(.gray))
}

