//
//  _0231703_SufiAhmed_NYCShcoolsTests.swift
//  20231703-SufiAhmed-NYCShcoolsTests
//
//  Created by Sufiyan Ahmed on 3/19/25.
//

import XCTest
@testable import _0231703_SufiAhmed_NYCShcools

class _0231703_SufiAhmed_NYCShcoolsTests: XCTestCase {
    
    var nycSchools: NYCSchool?
    var satScore: SATScore?
    
    var nycVM: NYCSchoolViewModel = NYCSchoolViewModel()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        nycSchools = NYCSchool.init()
        satScore = SATScore.init()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        nycSchools = nil
        satScore = nil
    }
    
    func testSchoolName() {
        nycSchools?.school_name = "Brooklyn Public School"
        let schoolName = nycSchools?.school_name ?? ""
        XCTAssertEqual("Brooklyn Public School", schoolName)
    }
    
    func testSchoolState() {
        nycSchools?.state_code = "New York"
        let state = nycSchools?.state_code ?? ""
        XCTAssertEqual("New York", state)
    }
    
    func testSchoolZip() {
        nycSchools?.zip = "60504"
        let result = nycSchools?.zip ?? ""
        XCTAssertEqual("60504", result)
    }
    
    func testSchoolCity() {
        nycSchools?.city = "Brooklyn"
        let result = nycSchools?.city ?? ""
        XCTAssertEqual("Brooklyn", result)
    }
    
    func testSchoolDBN() {
        nycSchools?.dbn = "112233"
        let result = nycSchools?.dbn ?? ""
        XCTAssertEqual("112233", result)
    }
    
    func testSchoolAddress() {
        nycSchools?.location = "367 John St Brooklyn, NY 60504"
        let result = nycSchools?.location ?? ""
        XCTAssertEqual("367 John St Brooklyn, NY 60504", result)
    }
    
    func testSchoolPhoneNumber() {
        nycSchools?.phone_number = "331-224-3131"
        let result = nycSchools?.phone_number ?? ""
        XCTAssertEqual("331-224-3131", result)
    }
    
    func testSchoolWebsite() {
        nycSchools?.website = "www.brooklynpublicschool.com"
        let result = nycSchools?.website ?? ""
        XCTAssertEqual("www.brooklynpublicschool.com", result)
    }
    
    func testSchoolOverview() {
        nycSchools?.overview_paragraph = "A long paragraph about Brooklyn public school"
        let result = nycSchools?.overview_paragraph ?? ""
        XCTAssertEqual("A long paragraph about Brooklyn public school", result)
    }
}
