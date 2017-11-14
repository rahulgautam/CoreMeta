//
// Created by Joshua Gretz on 10/23/15.
// Copyright (c) 2015 Truefit. All rights reserved.
//

import Foundation

class Tree : NSObject {}
class Leaf : NSObject {}

class Flower : NSObject {}
class Rose : NSObject {}

//******************

@objc protocol Lizard {}
@objc protocol Fish {}

class Trout : NSObject, Fish {}
class Shark : NSObject {
    @objc var name:String?
}
class Whale : NSObject {}
class Turtle : NSObject {}

class Ocean : NSObject {
    @objc var fish: Fish?
    @objc var shark : Shark?
    @objc var whale : Whale?

    @objc var depth = 12.5

    @objc fileprivate(set) var turtle : Turtle?
}

class Pond: Ocean {
}

//******************

class Pizza : NSObject, CMContainerAutoRegister {
    @objc var name:String?

    class func cache() -> Bool {
        return true
    }

    class func onCreate() -> (NSObject) -> Void {
        return { ($0 as! Pizza).name = "Pep" }
    }
}

class Cake : NSObject {
    @objc var flavor:String?
    @objc var color:String?
    @objc var filling:String?
    @objc var icing = false

    override init() {
        super.init()
    }

    @objc convenience init(flavor:String?, color:String?, icing: Bool, filling:String?) {
        self.init()

        self.flavor = flavor
        self.color = color
        self.icing = icing
        self.filling = filling
    }
}
