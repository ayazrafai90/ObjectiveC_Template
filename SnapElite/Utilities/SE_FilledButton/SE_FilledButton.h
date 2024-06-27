//
//  SE_FilledButton.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface SE_FilledButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, strong) IBInspectable UIColor *backColor;
@property (nonatomic, strong) IBInspectable UIColor *textColor;

@end

NS_ASSUME_NONNULL_END
