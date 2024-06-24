//
//  
//  CryptoConverter
//
//  Created by Josh Guiang on 3/23/24.
//

import SwiftUI

@main
struct CryptoConverterApp: App {
    var body: some Scene {
        WindowGroup {
            ConversionAppHomeView()
        }
    }
}


struct ConversionAppHomeView: View {
    var body: some View {
        
        NavigationView {
            
            List {
            
                NavigationLink("World Currency Exchange", destination: Converter())
                
            
                NavigationLink("Crypto Exchange Details", destination: CryptoItem())
            }
            
        
            .navigationBarTitle("Conversion App", displayMode: .large)
            
        }
    }
}
            
struct ConversionAppHomeView_Previews: PreviewProvider {
    static var previews: some View {

        ConversionAppHomeView()
    }
}
