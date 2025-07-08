//
//  satScoresViewModel.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/18/25.
//

import Foundation
typealias CompletionHandlerTwo = (([SATScore])->())

class SATScoreViewModel {
    
    var error: Error?
    
    func fetchNYCSchoolSATData(dbn: String, completionHandler: @escaping CompletionHandlerTwo) {
        ApiManager().fetchNYCSchoolDataFrom(url: "\(Server.SATScore.rawValue)\(dbn)") { data in
            let jd = JSONDecoder.init()
            do {
                let result = try jd.decode([SATScore].self, from: data!)
                completionHandler(result)
            }catch {
               print("Parsing LOG >>>> \(error)")
            }
        }
    }
}
