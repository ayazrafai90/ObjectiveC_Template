//
//  SE_RoundedView.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SE_RoundedView.h"

@implementation SE_RoundedView

// Default values for the properties
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    
    if (_cornerRadius == 0) { _cornerRadius = 12.0; }
    if (!_defaultBackgroundColor) { _defaultBackgroundColor = [UIColor colorNamed:@"cardBG"]; }
    
    [self updateView];
}

// Update the view properties
- (void)updateView {
    self.backgroundColor = self.defaultBackgroundColor;
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.masksToBounds = self.cornerRadius > 0;
}

// Override setters to update the view when properties change
- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self updateView];
}

- (void)setDefaultBackgroundColor:(UIColor *)defaultBackgroundColor {
    _defaultBackgroundColor = defaultBackgroundColor;
    [self updateView];
}

@end
