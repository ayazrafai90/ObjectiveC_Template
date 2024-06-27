//
//  SE_FilledButton.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SE_FilledButton.h"

@implementation SE_FilledButton

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
    
    if (_cornerRadius == 0) { _cornerRadius = 16.0; }
    if (!_backColor) { _backColor = [UIColor colorNamed:@"primaryLight"]; }
    if (!_textColor) { _textColor = [UIColor colorNamed:@"primaryDark"]; }
    
    [self updateView];
}

// Update the view properties
- (void)updateView {
    
    self.layer.cornerRadius     = _cornerRadius;
    self.layer.masksToBounds    = _cornerRadius > 0;
    self.backgroundColor        = _backColor;
    [self setTitleColor:_textColor forState:UIControlStateNormal];
}

// Override setters to update the view when properties change

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self updateView];
}

- (void)setBackColor:(UIColor *)backColor {
    _backColor = backColor;
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    [self updateView];
}

@end
