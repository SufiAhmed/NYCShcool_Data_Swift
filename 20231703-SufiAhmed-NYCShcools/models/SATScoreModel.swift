//
//  SATScoreModel.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/17/25.
//

import Foundation

//setting up Model to decode in coming API JSON data
struct SATScore: Codable {
    var dbn: String?
    var school_name: String?
    var num_of_sat_test_takers: String?
    var sat_critical_reading_avg_score: String?
    var sat_math_avg_score: String?
    var sat_writing_avg_score: String?
}
