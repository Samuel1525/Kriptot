//
//  CoinDataService.swift
//  Kriptot
//
//  Created by Samuel AYM on 03/08/23.
//

import Foundation
import Combine

class CoinDataService{
    @Published var allCoins = [CoinModel]()
    var coinSubscription: AnyCancellable?
    //var cancellables = Set<AnyCancellable>()
    
    init() {
        getCoin()
    }
    private func getCoin(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en")
        else{
            return 
        }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
        
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
            

    }
}
