//
//  Created by Pete Smith
//  http://www.petethedeveloper.com
//
//
//  License
//  Copyright © 2016-present Pete Smith
//  Released under an MIT license: http://opensource.org/licenses/MIT
//


/*  
 SafeArray is attended to be used in place of a general Swift Array
 It provides thread-safe access to it's underlying Array collection.
 Thread-safe versions Array/Collection methods such as append, map are provided.
*/
public struct SafeArray<Element> {
    
    // MARK: - Properties 
    fileprivate var internalElements = Array<Element>()
    fileprivate var dispatchQueue: DispatchQueue = DispatchQueue(label: "SafeArray queue")
    
    /// Initializer for the SafeArray type
    ///
    /// - Parameter elements: Optional initial collection of elements
    public init(withElements elements: [Element]? = nil) {
        guard let elements = elements else { return }
        
        dispatchQueue.sync {
            self.internalElements.append(contentsOf: elements)
        }
    }
}

public extension SafeArray {
    
    
    /// Thread-safe get access to the SafeArray's elements
    public var elements: [Element] {
        mutating get {
            var elements: [Element] = []
            
            dispatchQueue.sync {
                elements.append(contentsOf: internalElements)
            }
            
            return elements
        }
    }
    
    
    /// Resets the SafeArray. Removes all current elements, and adds all the specified elements
    ///
    /// - Parameter elements: Elements to add to SafeArray
    public mutating func reset(withElements elements: [Element]) {
        
        dispatchQueue.sync {
            self.internalElements = elements
        }
    }
    
    /// Thread-safe appending of a single element
    ///
    /// - Parameter element: Element to append
    public mutating func append(element: Element) {
        
        dispatchQueue.sync {
            internalElements.append(element)
        }
    }
    
    /// Thread-safe appending of a collection of Elements
    ///
    /// - Parameter elements: Collection to append
    public mutating func append(contentsOf elements: [Element]) {
        
        dispatchQueue.sync {
            self.internalElements.append(contentsOf: elements)
        }
    }
    
    /// Map method which returns an Array containing elements creating by the supplied transform
    ///
    /// - Parameter transform: Transform closure
    /// - Returns: Array of elements created by the map method
    /// - Throws: Possible Throw
    public mutating func map<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        
        var results: [T] = []
        
        try dispatchQueue.sync {
            results = try self.internalElements.map(transform)
        }
        
        return results
    }
    
    
    /// Filter method which returns an Array containing elements which should be included
    ///
    /// - Parameter isIncluded: Closure used to determine if an element should be included in returned Array
    /// - Returns: Array of filtered elements
    /// - Throws: Possible Throw
    public mutating func filter(_ isIncluded: (Element) throws -> Bool) rethrows -> [Element] {
        
        var results: [Element] = []
        
        try dispatchQueue.sync {
            results = try self.internalElements.filter(isIncluded)
        }
        
        return results
    }
}
