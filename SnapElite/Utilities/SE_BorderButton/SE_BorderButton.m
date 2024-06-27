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
    if (!_hoverTextColor) { _hoverTextColor = [UIColor colorNamed:@"primaryDark"]; }
    
    if (!_defaultBackgroundColor) {
        _defaultBackgroundColor = [UIColor clearColor];
    }
    if (!_hoverColor) {
        _hoverColor = [UIColor colorNamed:@"primaryLight"];
    }
    
    [self updateView];
}

// Update the view properties
- (void)updateView {
    
    self.layer.borderWidth      = self.borderWidth;
    self.layer.borderColor      = self.borderColor.CGColor;
    self.layer.cornerRadius     = self.cornerRadius;
    self.layer.masksToBounds    = self.cornerRadius > 0;
    
    [self setButtonThemeAsHovered:NO];
}

- (void)setButtonThemeAsHovered:(BOOL)hovered {
    [self setTitleColor:hovered ? _hoverTextColor : _textColor forState:UIControlStateNormal];
    [self setBackgroundColor:hovered ? _hoverColor : _defaultBackgroundColor];
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

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [super traitCollectionDidChange:previousTraitCollection];
    [self updateView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self setButtonThemeAsHovered:YES];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    CGPoint currentLocation = [touch locationInView:self];
    
    // Check if the touch is inside the button's bounds
    if (CGRectContainsPoint(self.bounds, currentLocation)) {
        [self setButtonThemeAsHovered:YES];
    } else {
        [self setButtonThemeAsHovered:NO];
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    [self setButtonThemeAsHovered:NO];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    [self setButtonThemeAsHovered:NO];
}

@end
