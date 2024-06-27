//
//  SE_RoundedView.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface SE_RoundedView : UIView

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, strong) IBInspectable UIColor *defaultBackgroundColor;

@end

NS_ASSUME_NONNULL_END
