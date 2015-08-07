//
//  SZDeviceSpecificLayoutConstraint.h
//  DevSpecLayoutConstraintDemo
//
//  Created by Сергей Галездинов on 31.07.15.
//
//

#import <UIKit/UIKit.h>

@interface SZDeviceSpecificLayoutConstraint : NSLayoutConstraint

/**
 Set this property to YES if you want any new constant assignment to reflect proportionally on a specific device 
 @note
 default value is NO
 */
@property (nonatomic) IBInspectable BOOL changeProportionally;

/**
 Set this value to YES if you need to keep the constraint value always as specified for a specific device
 @note
 default value is NO
 */
@property (nonatomic) IBInspectable BOOL ignoreChange;

/**
 Set each of this constants independently
 */
@property (nonatomic) IBInspectable CGFloat constant4s;
@property (nonatomic) IBInspectable CGFloat constant5;
@property (nonatomic) IBInspectable CGFloat constant6;
@property (nonatomic) IBInspectable CGFloat constant6Plus;

@end
