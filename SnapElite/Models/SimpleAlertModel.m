//
//  SimpleAlertModel.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SimpleAlertModel.h"

@implementation SimpleAlertModel

- (instancetype)initWithTitle:(NSString * _Nullable)title
                  description:(NSString * _Nullable)description
                  buttonTitle:(NSString * _Nullable)buttonTitle {
    self = [super init];
    if (self) {
        _title                  = [title copy];
        _descriptionContent     = [description copy];
        _buttonTitle            = [buttonTitle copy];
    }
    return self;
}

@end
