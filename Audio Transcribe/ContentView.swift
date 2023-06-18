//
//  ContentView.swift
//  Audio Transcribe
//
//  Created by Sushant Belsare on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var isRecordingView:Bool = false

    var body: some View {
        ZStack(alignment: .bottom){
            TabView{
                MainWindow()
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                
                Spacer()
                    .onTapGesture {
                        
                    }
                
            }
            
            Button(action: {
                isRecordingView.toggle()
            }){
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(15)
                    
            }
            .padding(.bottom)
        }.sheet(isPresented: $isRecordingView){
            RecordingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
