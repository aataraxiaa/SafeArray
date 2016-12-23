import UIKit
import XCTest
import SafeArray

class Tests: XCTestCase {
    
    let intElementsOne = [1,2,3]
    let intElementsTwo = [4,5,6]
    let stringElements = ["Pete", "Maiya"]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitialization() {
        
        let safeArray = SafeArray<Int>(withElements: intElementsOne)
        
        XCTAssert(safeArray.elements == intElementsOne)
    }
    
    func testReset() {
        
        var safeArray = SafeArray<Int>(withElements: intElementsOne)
        
        safeArray.reset(withElements: intElementsTwo)
        
        XCTAssert(safeArray.elements == intElementsTwo)
    }
    
    func testAppendOne() {
        
        var safeArray = SafeArray<String>(withElements: stringElements)
        
        safeArray.append("Hi")
        
        var newArray: [String] = []
        newArray.append(contentsOf: stringElements)
        newArray.append("Hi")
        
        XCTAssert(safeArray.elements == newArray)
    }
    
    func testAppendMany() {
        
        var safeArray = SafeArray<Int>(withElements: intElementsOne)
        
        safeArray.append(contentsOf: intElementsTwo)
        
        let newArray = intElementsOne + intElementsTwo
        
        XCTAssert(safeArray.elements == newArray)
    }
    
    func testMap() {
        
        let safeArray = SafeArray<String>(withElements: stringElements)
        
        let mappedArray = safeArray.map { "Hi"+$0 }
        
        XCTAssert(mappedArray.elements == ["HiPete", "HiMaiya"])
    }
    
    func testFilter() {
        
        let safeArray = SafeArray<Int>(withElements: intElementsOne)
        
        let filteredArray = safeArray.filter { $0 != 1 }
        
        XCTAssert(filteredArray.elements == [2,3])
    }
}
