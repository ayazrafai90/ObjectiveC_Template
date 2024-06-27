//
//  SE_BorderButton.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface SE_BorderButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, strong) IBInspectable UIColor *textColor;
@property (nonatomic, strong) IBInspectable UIColor *hoverTextColor;
@property (nonatomic, strong) IBInspectable UIColor *defaultBackgroundColor;
@property (nonatomic, strong) IBInspectable UIColor *hoverColor;

@end

NS_ASSUME_NONNULL_END
