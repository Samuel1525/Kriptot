//
//  CoinModel.swift
//  Kriptot
//
//  Created by Samuel AYM on 30/07/23.
//

import Foundation
import SwiftUI
/*
 URL :
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en
 
 JSON Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 29258,
     "market_cap": 568794987481,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 614342264460,
     "total_volume": 4231380113,
     "high_24h": 29368,
     "low_24h": 29247,
     "price_change_24h": -21.947334608019446,
     "price_change_percentage_24h": -0.07496,
     "market_cap_change_24h": -484899914.6600342,
     "market_cap_change_percentage_24h": -0.08518,
     "circulating_supply": 19443062,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -57.64248,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 43029.45088,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-07-30T11:09:21.975Z",
     "sparkline_in_7d": {
       "price": [
         29956.00905000106,
         29919.262651279776,
         29897.83420055101,
         29954.152592840837,
         29908.34339206895,
         29891.912758238766,
         29891.9890283231,
         29918.44416444819,
         29898.905611540693,
         29896.720631286906,
         29897.14584683324,
         29956.318052048828,
         30008.064929104345,
         30271.929558812815,
         30054.995296081222,
         30131.15390563749,
         30003.69406748948,
         30028.10486873975,
         30057.956718714588,
         30048.178376596316,
         29894.365358406933,
         29775.46616832722,
         29708.161255722105,
         29778.712172301177,
         29788.060718734367,
         29781.25713308626,
         29837.971546793637,
         29775.77987680001,
         29391.234399505505,
         29322.366627879514,
         29260.164640182975,
         29219.64178432511,
         29201.84127702661,
         29077.363910850207,
         29083.451177470393,
         29109.61912057143,
         29045.90244438875,
         29078.383528787374,
         29116.669244187226,
         29141.468651436633,
         29164.759861287825,
         29166.456654600435,
         29184.901913057693,
         29121.144047336078,
         29082.48357613196,
         29135.231334997916,
         29108.866096076745,
         29080.484252925573,
         29128.217455123533,
         29137.443226058815,
         29141.17895640485,
         29177.684652426724,
         29212.016914009277,
         29159.89797815293,
         29119.73991516869,
         29118.69111592331,
         29263.260023832834,
         29175.07736682148,
         29203.072875077978,
         29226.51483752245,
         29247.410519188645,
         29262.711851023545,
         29200.779362142435,
         29224.68646331236,
         29225.582499129712,
         29215.014890902657,
         29222.974630383527,
         29174.795530598167,
         29131.432804604694,
         29183.583024838932,
         29247.805655346223,
         29195.272761072876,
         29271.02433564558,
         29245.370873051394,
         29205.501195094886,
         29210.97710800848,
         29183.90996906209,
         29191.187134377586,
         29167.309535190096,
         29223.071887272858,
         29307.753433422175,
         29267.687825355235,
         29313.499192934243,
         29296.218518715148,
         29276.651666477588,
         29343.71801186576,
         29354.73988657794,
         29614.69857297837,
         29473.762709346545,
         29460.63779255003,
         29363.672907978616,
         29325.29799021886,
         29370.611267446548,
         29390.15178296929,
         29428.222505493162,
         29475.12359313808,
         29471.20179209623,
         29396.682959470276,
         29416.063748693945,
         29442.757895685798,
         29550.523558342804,
         29489.241437118748,
         29513.005452237085,
         29481.87017389305,
         29440.157241806293,
         29372.682404809886,
         29327.962010819112,
         29304.689279369806,
         29227.558442049805,
         29178.745455204324,
         29155.348160823945,
         29146.414472358578,
         29190.04784447575,
         29200.962573823388,
         29201.236356821602,
         29271.258206136354,
         29276.093243553125,
         29193.96481135078,
         29225.130187030347,
         29259.34141509108,
         29172.589866912043,
         29177.057442352412,
         29144.25689537892,
         29158.76207558714,
         29202.314532690547,
         29212.0966881263,
         29222.654794248145,
         29302.58488156929,
         29286.271181422144,
         29437.329605975596,
         29387.54866090718,
         29374.800526401574,
         29237.366870488135,
         29306.414045617796,
         29313.493330593126,
         29329.5049157853,
         29317.998848911364,
         29300.313958408336,
         29314.09738709836,
         29331.597426309774,
         29372.858006614388,
         29371.93585447968,
         29365.560710924212,
         29386.997851302443,
         29357.263814441514,
         29344.33621803127,
         29307.866330609653,
         29292.411501323997,
         29279.062208908184,
         29290.907121380646,
         29275.952127727414,
         29296.397048693474,
         29300.218227669986,
         29291.762204217895,
         29291.877166187365,
         29301.25798859754,
         29323.60843299231,
         29305.311033785278,
         29335.43442901468,
         29355.10941623317,
         29350.104456680947,
         29355.533727400776,
         29356.74774591667,
         29337.06524643115,
         29327.210034664997,
         29313.84510272745,
         29316.494745597563,
         29323.673091844805
       ]
     },
     "price_change_percentage_24h_in_currency": -0.07495610285315706
   }
 */
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice : Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey{
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: currentPrice, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue : Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
    
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable{
    let price: [Double]?
}



