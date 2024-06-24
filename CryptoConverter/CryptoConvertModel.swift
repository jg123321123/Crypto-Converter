//
// 
//  CryptoConverter
//
//  Created by Josh Guiang on 3/23/24.
//

import Foundation

struct CryptoConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var name: String
    var priceInUSD: Double
}


struct Crypto {
    let cryptoName: String
    let priceInUSD: Double
}
