//
//  ContentView.swift
//  Proyecto2
//
//  Created by Diego Borrallo Herrero on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var emojis=["😜", "🤩", "👀", "🍫"];
    var body: some View {
        NavigationStack{
            VStack{
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 120))], spacing: 2){
                    ForEach(0..<4, id: \.self){
                        index in
                        Box (content : emojis[index]).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                Text("Hola")
                NavigationLink(destination: secondView(), label:{Text("Second View").foregroundColor(.gray).padding(.top)})
            }
            .foregroundColor(.blue)
            .padding()
        }
        
    }
}

struct Box:View{
    @State var visible:Bool = true
    var content:String
    var body : some View{
        ZStack{
            if visible{
                RoundedRectangle(cornerRadius: 15).aspectRatio(2/3, contentMode: .fit)
            }else{
                RoundedRectangle(cornerRadius: 10)
            }
            Text(content)
        }.onTapGesture {
            print("Hola")
            self.visible.toggle()
            print(visible)
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

#Preview {
    ContentView()
}
