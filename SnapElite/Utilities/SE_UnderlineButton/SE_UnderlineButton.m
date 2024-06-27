//
//  SE_UnderlineButton.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SE_UnderlineButton.h"

@implementation SE_UnderlineButton

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
    
    if (_lineWidth == 0) { _lineWidth = 1.0; }
    if (!_textColor) { _textColor = [UIColor colorNamed:@"primaryLight"]; }
    if (!_underlineColor) { _underlineColor = [UIColor colorNamed:@"primaryLight"]; }
    
    [self updateView];
}

// Update the view properties
- (void)updateView {
    [self setButtonUnderline];
    [self setTitleColor:_textColor forState:UIControlStateNormal];
}

// Set underline
- (void)setButtonUnderline {

    // Set the title attributes to include an underline
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:self.titleLabel.text];
    [attributedTitle addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(0, attributedTitle.length)];
    [attributedTitle addAttribute:NSUnderlineColorAttributeName value:_underlineColor range:NSMakeRange(0, attributedTitle.length)];
    
    // Set the attributed title for the button
    [self setAttributedTitle:attributedTitle forState:UIControlStateNormal];
    
    // To set border size, you can add an underline using a layer
//    CGSize size = self.frame.size;
//    CALayer *underline = [CALayer layer];
//    underline.backgroundColor = [UIColor blueColor].CGColor;
//    underline.frame = CGRectMake(0, size.height - 2, size.width, 2); // Adjust height as needed
}

// Override setters to update the view when properties change
- (void)setLineWidth:(CGFloat)lineWidth {
    _lineWidth = lineWidth;
    [self updateView];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    [self updateView];
}

@end
