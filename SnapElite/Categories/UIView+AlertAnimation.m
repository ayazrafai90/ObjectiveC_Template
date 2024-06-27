//
//  UIView+AlertAnimation.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "UIView+AlertAnimation.h"

@implementation UIView (AlertAnimation)

- (void)animateView {
    // Initial state: scale down the view
    self.transform = CGAffineTransformMakeScale(0.5, 0.5);
    
    // Animate to final state: scale up to normal size with smooth animation
    [UIView animateWithDuration:0.2 // Adjust duration as needed
                          delay:0.0
         usingSpringWithDamping:0.6 // Adjust damping ratio for desired bounce effect
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
        self.transform = CGAffineTransformIdentity;
    } completion:nil];
}
@end
