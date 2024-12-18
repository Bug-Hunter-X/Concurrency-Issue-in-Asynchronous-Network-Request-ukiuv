func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { [weak self] in 
        guard let self = self else { return } // Check if the view controller is still alive
        let data = ["item1", "item2", "item3"]
        completion(.success(data))
    }
}