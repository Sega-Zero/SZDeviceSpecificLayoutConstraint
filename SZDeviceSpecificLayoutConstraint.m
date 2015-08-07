//
//  SZDeviceSpecificLayoutConstraint.m
//  DevSpecLayoutConstraintDemo
//
//  Created by Сергей Галездинов on 31.07.15.
//
//

#import "SZDeviceSpecificLayoutConstraint.h"

typedef NS_ENUM(NSUInteger, SZDeviceType) {
    szdtUnknown,
    szdtIPhone4s,
    szdtIPhone5,
    szdtIPhone6,
    szdtIPhone6P,
    MAX_DEVICE
};

@implementation SZDeviceSpecificLayoutConstraint {
    BOOL _valuesSet[MAX_DEVICE];
}

SZDeviceType currentDeviceType = szdtUnknown;
__attribute__((constructor))
static void initializer()
{
    //we don't need a precise device determination, since the screen size in points really matters
    //so, detect a particular device from the screen height
    CGSize bounds = [UIScreen mainScreen].bounds.size;
    switch ((int)MAX(bounds.width, bounds.height)) {
        case 480:
            currentDeviceType = szdtIPhone4s;
            break;
        case 568:
            currentDeviceType = szdtIPhone5;
            break;
        case 667:
            currentDeviceType = szdtIPhone6;
            break;
        case 736:
            currentDeviceType = szdtIPhone6P;
            break;

        default:
            break;
    }
}

@dynamic constant;

-(CGFloat)constant {
    return [self specificConstant];
}

-(void)setConstant:(CGFloat)constant {
    //change specific constant proportionally to new value?
    if (!self.ignoreChange && self.changeProportionally && _valuesSet[currentDeviceType]) {
        switch (currentDeviceType) {
            case szdtIPhone4s:
                self.constant4s *= constant / [super constant];

            case szdtIPhone5:
                self.constant5 *= constant / [super constant];

            case szdtIPhone6:
                self.constant6 *= constant / [super constant];

            case szdtIPhone6P:
                self.constant6Plus *= constant / [super constant];
                
            default:
                ;
        }
    } else {
        //should new value be ignored?
        if (!self.ignoreChange && _valuesSet[currentDeviceType]) {
            switch (currentDeviceType) {
                case szdtIPhone4s:
                    self.constant4s = constant;

                case szdtIPhone5:
                    self.constant5 = constant;

                case szdtIPhone6:
                    self.constant6 = constant;

                case szdtIPhone6P:
                    self.constant6Plus = constant;
                    
                default:
                    ;
            }
        }
    }

    [super setConstant:[self specificConstant]];
}

#pragma mark internal methods

-(CGFloat)specificConstant {
    if (!_valuesSet[currentDeviceType]) {
        return [super constant];
    }

    switch (currentDeviceType) {
        case szdtIPhone4s:
            return self.constant4s;

        case szdtIPhone5:
            return self.constant5;

        case szdtIPhone6:
            return self.constant6;

        case szdtIPhone6P:
            return self.constant6Plus;

        case szdtUnknown:
            return [super constant];

        default:
            return [super constant];
    }
}

-(void)setConstant4s:(CGFloat)constant4s {
    _constant4s = constant4s;
    _valuesSet[szdtIPhone4s] = YES;
}

-(void)setConstant5:(CGFloat)constant5 {
    _constant5 = constant5;
    _valuesSet[szdtIPhone5] = YES;
}

-(void)setConstant6:(CGFloat)constant6 {
    _constant6 = constant6;
    _valuesSet[szdtIPhone6] = YES;
}

-(void)setConstant6Plus:(CGFloat)constant6Plus {
    _constant6Plus = constant6Plus;
    _valuesSet[szdtIPhone6P] = YES;
}

@end
