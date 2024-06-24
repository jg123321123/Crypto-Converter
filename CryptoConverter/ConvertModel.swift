//
//  
//  CryptoConverter
//
//  Created by Josh Guiang on 3/23/24.
//

import Foundation

struct ConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
    
}


struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double

}
