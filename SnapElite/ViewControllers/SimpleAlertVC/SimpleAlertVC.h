//
//  SimpleAlertVC.h
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import <UIKit/UIKit.h>
#import "SimpleAlertModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleAlertVC : UIViewController

+ (SimpleAlertVC *)sharedWith:(SimpleAlertModel *)model;

@end

NS_ASSUME_NONNULL_END
