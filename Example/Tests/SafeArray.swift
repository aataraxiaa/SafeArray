import UIKit
import XCTest
import SafeArray

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMap() {
        var safeArray = SafeArray<String>()
        
        let elementsToAdd = ["Pete", "Maiya"]
        
        safeArray.append(contentsOf: elementsToAdd)
        
        let mappedArray = safeArray.map { "Hi"+$0 }
        
        XCTAssert(mappedArray == ["HiPete", "HiMaiya"])
    }
}
