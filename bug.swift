func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { 
        let data = ["item1", "item2", "item3"]
        completion(.success(data))
    }
}