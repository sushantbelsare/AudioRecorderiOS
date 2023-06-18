//
//  DetailsView.swift
//  Audio Transcribe
//
//  Created by Sushant Belsare on 17/06/23.
//

import SwiftUI

struct DetailsView: View {
    @Binding var item:RecordingDataModel?
    var body: some View {
        ScrollView{
            Spacer()
            VStack(alignment: .leading){
                Group{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Text(item?.date ?? "Unknown Date")
                    .font(.system(size: 30, weight: .bold, design: .default))
                Text(item?.day ?? "Unknown Day")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                
                Spacer()
                Spacer()
                Spacer()
                
                Text(placeholderString)
                    .font(.system(size: 25, weight: .medium, design: .default))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(item: .constant(RecordingDataModel(day: "Saturday", date: "17th June, 2023", locationTag: "@UC Berkeley MLK", duration: "20s")))
    }
}
