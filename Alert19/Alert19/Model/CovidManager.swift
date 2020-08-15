import Foundation

protocol CovidManagerDelegate {
    func didFailWithError(error: Error)
    func didUpdate(_ covidManager: CovidManager, covid: Int)
}

struct CovidManager {
    
    let covidURL = "https://thevirustracker.com/free-api?global=stats"
    
    var delegate: CovidManagerDelegate?
    
    
    func fetchCovid() {
        let urlString = covidURL
        performRequest(with: urlString)
    }
    
    func performRequest(with URl: String) {
        // 1. Create the URL
        if let url = URL(string: URl) {
            
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. give the session a task
            let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                }
                
                if let safeData = data {
                    if let stats = self.parseJSON(safeData) {
                        print(stats)
                        self.delegate?.didUpdate(self, covid: stats)
                    }
                    
                }
            }
            
            // 4. Start the task
            task.resume()
        }
    }
    
    
    func parseJSON(_ covidData: Data) -> Int? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CovidModel.self, from: covidData)
            let lastStats = decodedData.results[0]
            let rate = lastStats.total_cases
            return rate
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}

