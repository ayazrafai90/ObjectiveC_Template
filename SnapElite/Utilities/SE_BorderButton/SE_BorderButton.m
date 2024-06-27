//
//  SE_BorderButton.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SE_BorderButton.h"

@implementation SE_BorderButton

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
    if (_borderWidth == 0) { _borderWidth = 1.5; }
    if (!_borderColor) { _borderColor = [UIColor colorNamed:@"primaryLight"]; }
    if (!_textColor) { _textColor = [UIColor colorNamed:@"primaryLight"]; }
    
    [self updateView];
}

// Update the view properties
- (void)updateView {
    
    self.layer.borderWidth      = self.borderWidth;
    self.layer.borderColor      = self.borderColor.CGColor;
    self.layer.cornerRadius     = self.cornerRadius;
    self.layer.masksToBounds    = self.cornerRadius > 0;
    [self setTitleColor:_textColor forState:UIControlStateNormal];
    
}

// Override setters to update the view when properties change

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self updateView];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    [self updateView];
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    [self updateView];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    [self updateView];
}

@end
