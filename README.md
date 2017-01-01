# SafeArray

[![CI Status](http://img.shields.io/travis/superpeteblaze/SafeArray.svg?style=flat)](https://travis-ci.org/Pete Smith/SafeArray)
[![Version](https://img.shields.io/cocoapods/v/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)
[![License](https://img.shields.io/cocoapods/l/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)
[![Platform](https://img.shields.io/cocoapods/p/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)

# SafeArray

SafeArray is a wrapper on a Swift Array which provides thread-safe access to it's underlying Array elements.

Thread-safe versions Array/Collection methods such as append, map are provided.

## Examples

### Creating a SafeArray

```
let safeArray = SafeArray<Int>(withElements: [1,2,3]])
```

### Appending elements

```
var safeArray = SafeArray<Int>(withElements: [1,2,3]])
safeArray.append(contentsOf: [4,5])
```

### Map

```
let safeArray = SafeArray<String>(withElements: ["world1","world2"])        
let mappedArray = safeArray.map { "Hello "+$0 }
```

### Filter

```
let safeArray = SafeArray<Int>(withElements: [1,2,3])
let filteredArray = safeArray.filter { $0 != 1 }
```

## Requirements

iOS 9

## Installation

SafeArray is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SafeArray"
```

## Author

Pete Smith, peadar81@gmail.com

## License

SafeArray is available under the MIT license. See the LICENSE file for more info.
