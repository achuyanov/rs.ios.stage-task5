import Foundation


class StockMaximize {
    func countProfit(prices: [Int]) -> Int {
        var ret = 0
        var temp = 0
        
        for i in 0..<prices.count {
            temp = 0
            for j in (i + 1)..<prices.count { temp = ((prices[j] - prices[i]) > temp) ? prices[j] - prices[i]: temp }
            ret += temp
        }
        return ret
    }
}
