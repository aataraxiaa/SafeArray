# SafeArray

[![CI Status](http://img.shields.io/travis/Pete Smith/SafeArray.svg?style=flat)](https://travis-ci.org/Pete Smith/SafeArray)
[![Version](https://img.shields.io/cocoapods/v/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)
[![License](https://img.shields.io/cocoapods/l/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)
[![Platform](https://img.shields.io/cocoapods/p/SafeArray.svg?style=flat)](http://cocoapods.org/pods/SafeArray)

# SafeArray

SafeArray is a wrapper on a Swift Array which provides thread-safe access to the Array elements.

SafeArray is attended to be used in place of a general Swift Array
It provides thread-safe access to it's underlying Array collection.
Thread-safe versions Array/Collection methods such as append, map are provided.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

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
