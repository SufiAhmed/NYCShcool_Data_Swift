//
//  viewModel.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/17/25.
//


import Foundation

class ApiManager {
    func fetchNYCSchoolDataFrom(url: String, completionHandler: @escaping ((Data?)->())) {
        guard let url = URL.init(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil && data != nil {
                completionHandler(data)
            } else {
                print(error?.localizedDescription ?? "Error")
            }
        }.resume()
    }
}
