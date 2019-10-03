import Foundation

@objc(Bulb)
class Bulb: NSObject {
  @objc
  static var isOn = false
  
  
  
  @objc
  func turnOn() {
    Bulb.isOn = true
    print("Bulb is now ON")
  }
  
  @objc
  func turnOff() {
    Bulb.isOn = false
    print("Bulb is now OFF")
  }
  
  @objc
  func getStatus(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), Bulb.isOn])
  }
  
  @objc
  func getBulbDescription(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), "Bulb is iOS great"])
  }

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
