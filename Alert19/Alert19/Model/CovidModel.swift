import Foundation

struct CovidModel: Codable {
    let results: [Results]
}


struct Results: Codable {
    let total_cases: Int
}
