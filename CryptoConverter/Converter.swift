//
//  
//  CryptoConverter
//
//  Created by Josh Guiang on 3/23/24.
//

import SwiftUI


struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView   {
            
            VStack {
                Text("1 USD Exchange Rate")
                    .font(.title3)
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    
                    ForEach(viewModel.listOfCards) { card in
                        CurrencyItem(card: card)
                            .onTapGesture {
                                viewModel.flip(card: card)
                            }
                    }
                }
            }
                 
            .onAppear   {
                viewModel.fetchCards()
            }
        }
    }
}
        
         
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}


