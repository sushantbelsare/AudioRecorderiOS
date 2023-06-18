//
//  RecordingView.swift
//  Audio Transcribe
//
//  Created by Sushant Belsare on 17/06/23.
//

import SwiftUI

struct RecordingView: View {
    @State var isRecording:Bool = false
    var body: some View {
        VStack(alignment: .leading){
            
            Spacer()
            
            Text("June 17th, 2023")
                .font(.system(size: 30, weight: .bold, design: .default))
            Text("Saturday")
                .font(.system(size: 20, weight: .semibold, design: .default))
            
            Spacer()
            Spacer()
            Spacer()
            
            if isRecording{
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }){
                            Image(systemName: "pause.fill")
                                .resizable()
                                .foregroundColor(Color("lightgray"))
                                .frame(width: 35, height: 35)
                        }
                        Spacer()
                        Text("0:02")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: .semibold, design: .default))
                        Spacer()
                        Button(action: {
                            withAnimation{
                                isRecording.toggle()
                            }
                        }){
                            Image(systemName: "stop.fill")
                                .resizable()
                                .foregroundColor(Color("lightgray"))
                                .frame(width: 35, height: 35)
                        }
                        Spacer()
                    }.frame(maxWidth: .infinity)
                    .frame(height: 90)
                    .background(Color.black)
                    .cornerRadius(15)
            }else{
                    Button(action: {
                        withAnimation{
                            isRecording.toggle()
                        }
                    }){
                        Image(systemName: "circle.circle.fill")
                            .resizable()
                            .foregroundColor(Color.black)
                            .frame(width: 60, height: 60)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 90)
                    
                }

            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
            .padding(.leading)
            .background(Color("lightgray"))
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
}
