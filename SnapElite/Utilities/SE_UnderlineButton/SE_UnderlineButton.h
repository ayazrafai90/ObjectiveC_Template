//
//  SE_UnderlineButton.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface SE_UnderlineButton : UIButton

@property (nonatomic, strong) IBInspectable UIColor *textColor;
@property (nonatomic, strong) IBInspectable UIColor *underlineColor;

@end

NS_ASSUME_NONNULL_END
