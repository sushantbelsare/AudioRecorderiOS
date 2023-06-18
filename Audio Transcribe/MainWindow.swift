//
//  MainWindow.swift
//  Audio Transcribe
//
//  Created by Sushant Belsare on 17/06/23.
//

import SwiftUI

struct MainWindow: View {
    @State var isDetailsView:Bool = false
    @State var selectedItem:RecordingDataModel?
    var recordings:[RecordingDataModel] = [
        RecordingDataModel(day: "Monday", date: "19th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Sunday", date: "18th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec"),
        RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20sec")
    ]
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                ScrollView{
                    ZStack(alignment:.bottom){
                        VStack(alignment: .leading){
                            
                            VStack(alignment: .leading, spacing: 4){
                                
                                Text("June 17, 2023")
                                    .font(.system(size: 30, weight: .bold, design: .default))
                                Text("UC Berkeley MLK")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                Text("3:13PM")
                                    .font(.system(size: 17, weight: .regular, design: .default))
                            }.padding(.horizontal, 30)
                                .padding(.top, 80)
                            
                            ForEach(recordings, id: \.self){recording in
                                
                                listItem(recording: recording).onTapGesture {
                                    self.selectedItem = recording
                                    isDetailsView.toggle()
                                }
                                
                            }
                        }
                        
                    }
                }.sheet(isPresented: $isDetailsView){
                    DetailsView(item: $selectedItem)
                }
                
            }
            
        }
        
    }
    
    func listItem(recording: RecordingDataModel) -> some View{
        HStack{
            VStack(alignment: .leading){
                HStack{
                    Text(recording.day)
                        .font(.system(size: 17, weight: .medium, design: .default))
                    
                    Text(recording.date)
                        .font(.system(size: 17, weight: .medium, design: .default))
                        .padding(5)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        

                }
                HStack{
                    Text(recording.locationTag)
                        .foregroundColor(.blue.opacity(0.9))
                        .font(.system(size: 17, weight: .medium, design: .default))
                    
                    Text(recording.duration)
                        .font(.system(size: 14, weight: .regular, design: .default))
                }
            }
        }
        .padding()
        .frame(height: 80)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("lightgray"))
        .cornerRadius(10)
        .padding(.horizontal, 30)
        .padding(.vertical, 5)
        
    }
}

struct MainWindow_Previews: PreviewProvider {
    static var previews: some View {
        MainWindow()
    }
}
