//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by MEG G on 8/31/22.
//
//now start on homework for week 3, you might need to go back to the challenges in this chapter and read what you didn't implement

import SwiftUI

struct CardView: View {
    
    var    image:    String
    var    category:    String
    var    heading:    String
    var    author:    String
    
    var body: some View {
        
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode:    .fit)
            
            
            ScrollView(.horizontal){
                
                HStack {
                    VStack(alignment:    .leading)    {
                        Text(category)
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text(heading)
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                        Text("Written    by    \(author)".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                }
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius:    10)
                .stroke(Color(.sRGB,    red:    150/255,    green:    150/255,    blue:    150/255,
                              opacity:    0.1),    lineWidth:    1)
        )
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.horizontal){
            HStack{
                CardView(image:    "swiftui-button",    category:   "SwiftUI",    heading:   "Drawing    a Border    with    Rounded    Corners",    author:   "Simon    Ng")
                    .frame(width:300)
                CardView(image: "macos-programming",    category:    "macOS",    heading:  "Building    a    Simple    Editing    App",    author:    "Gabriel    Theodoropoulos")
                    .frame(width:300)
                CardView(image:    "flutter-app",    category:    "Flutter",
                         heading: "Building    a Complex    Layout    with    Flutter",    author:    "Lawrence    Tan")
                .frame(width:300)
                CardView(image:   "natural-language-api",    category:   "iOS",    heading:  "What's New in    Natural    Language    API",    author:    "Sai    Kambampati")
                    .frame(width:300)
            }
        }
    }
}
