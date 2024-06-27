//
//  SimpleAlertModel.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SimpleAlertModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *descriptionContent;
@property (nonatomic, strong) NSString *buttonTitle;

- (instancetype)initWithTitle:(NSString * _Nullable)title
                  description:(NSString * _Nullable)description
                  buttonTitle:(NSString * _Nullable)buttonTitle;

@end

NS_ASSUME_NONNULL_END
