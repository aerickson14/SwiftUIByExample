import Combine
import SwiftUI

class ContentViewModel: ObservableObject {

    @Published var rules: [String] = []
    @Published var showAddRule: Bool = false
    @Published var isLoading: Bool = true

    private let rulesService: RulesService
    private var cancellables = Set<AnyCancellable>()

    init() {
        self.rulesService = RulesService()

        rulesService.publisher
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case let .failure(error):
                    NSLog("Error: \(error.localizedDescription)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] rules in
                self?.rules = rules
                self?.isLoading = false
            })
            .store(in: &cancellables)
    }
}
