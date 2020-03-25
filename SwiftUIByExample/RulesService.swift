import Combine
import SwiftUI

struct RulesService {

    let publisher: AnyPublisher<[String], Error>
    private let rulesURL = URL(string: "https://api.myjson.com/bins/18ffp0")!

    init() {
        self.publisher = URLSession.shared
            .dataTaskPublisher(for: rulesURL)
            .map { $0.data }
            .decode(type: RulesResponse.self, decoder: JSONDecoder())
            .map { $0.rules }
            .eraseToAnyPublisher()
    }
}

struct RulesResponse: Codable {
    var rules: [String]
}
