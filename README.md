[![Build Status](https://travis-ci.org/Sega-Zero/SZDeviceSpecificLayoutConstraint.svg)](https://travis-ci.org/Sega-Zero/SZDeviceSpecificLayoutConstraint)
[![Pod Version](https://img.shields.io/cocoapods/v/SZDeviceSpecificLayoutConstraint.svg?style=flat)](http://cocoadocs.org/docsets/SZDeviceSpecificLayoutConstraint/)
[![Pod Platform](http://img.shields.io/cocoapods/p/SZDeviceSpecificLayoutConstraint.svg?style=flat)](http://cocoadocs.org/docsets/SZDeviceSpecificLayoutConstraint/)
[![Pod License](http://img.shields.io/cocoapods/l/SZDeviceSpecificLayoutConstraint.svg?style=flat)](http://opensource.org/licenses/MIT)
[![Reference Status](https://www.versioneye.com/objective-c/SZDeviceSpecificLayoutConstraint/reference_badge.svg?style=flat)](https://www.versioneye.com/objective-c/SZDeviceSpecificLayoutConstraint/references)

#What this class is for?
Ever need to move some UI blocks higher on iphone 4s?

Ever need to hide some UI block on iphone 4s and show it on every other type of device?

Ever tried to make a universal UI with some elements than should grow/shrink on some devices and Size Classes didn't help at all?

If your answer is 'YES' - you may find this class helpful. `SZDeviceSpecificLayoutConstraint` allows you to specify additional `constant` values for a specific device. This allows you to make your autolayout more flexible.

#Installation

##CocoaPods
This class is available via [CocoaPods](http://cocoapods.org/). Write this in your `Podfile`:

```ruby
pod 'SZDeviceSpecificLayoutConstraint'
```
Then run `pod install` or `pod update`

##Manual

Simply clone this repo and copy `SZDeviceSpecificLayoutConstraint.h` and `SZDeviceSpecificLayoutConstraint.m` to your project.

#How to use

1. Select your constraint in IB, set it's class to `SZDeviceSpecificLayoutConstraint`:
<img src="http://i.imgur.com/1zrxbSM.png" alt="class set screenshot" width="50%" height="50%"/>

2. Set any specific constraint value in property inspector:<br>
<img src="http://i.imgur.com/0HsNrs6.png" alt="constant set screenshot" width="50%" height="50%"/>

3. Drink your coffie, you're **awesome**!<br>
