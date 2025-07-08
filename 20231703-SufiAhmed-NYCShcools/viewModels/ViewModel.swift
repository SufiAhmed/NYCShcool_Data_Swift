//
//  viewModel.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/17/25.
//

//Main ViewModel Class. This will hold most of the bussines logic for this app

import Foundation
typealias CompleionHandler = (([NYCSchool])->())

class NYCSchoolViewModel {
    
    var array = [NYCSchool]()
    var error: Error?
    
    //fetch API Handler here, will intialize URL and then decode the incoming JSON data as per our NYCSchool model
    func fetchNYCSchoolData(completionHandler: @escaping CompleionHandler) {
        ApiManager().fetchNYCSchoolDataFrom(url: Server.NYCSCHOOL.rawValue) { data in
            let jd = JSONDecoder.init()
            do {
                let result = try jd.decode([NYCSchool].self, from: data!)
                completionHandler(result)
            }catch {
               print("Parsing LOG >>>> \(error)")
            }
        }
    }
    

    //number of rows to populate for tableView
    func getRow() -> Int {
        return array.count
    }
    
    //return the index for items we will get the specific details for
    func getNYCShcoolIndex(index: Int) -> NYCSchool {
        return array[index]
    }
    
    //Functions return specifc school information
    func getSchoolName(nycSchool: NYCSchool) -> String {
        return nycSchool.school_name ?? ""
    }
    
    func getSchoolState(nycSchool: NYCSchool) -> String {
        return nycSchool.state_code ?? ""
    }
    
    func getSchoolZipCode(nycSchool: NYCSchool) -> String {
        return nycSchool.zip ?? ""
    }
    
    func getSchoolCity(nycSchool: NYCSchool) -> String {
        return nycSchool.city ?? ""

    }
    
    func getSchoolDBN(nycSchool: NYCSchool) -> String {
        return nycSchool.dbn ?? ""
    }
    
    func getSchoolAddress(nycSchool: NYCSchool) -> String {
        return nycSchool.location ?? ""

    }
    
    func getSchoolPhoneNumber(nycSchool: NYCSchool) -> String {
        return nycSchool.phone_number ?? ""
    }
    
    func getSchoolWebsite(nycSchool: NYCSchool) -> String {
        return nycSchool.website ?? ""
    }
    
    func getSchoolOverView(nycSchool: NYCSchool) -> String {
        return nycSchool.overview_paragraph ?? ""
    }
}
