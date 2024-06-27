//
//  SimpleAlertVC.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SimpleAlertVC.h"

@interface SimpleAlertVC ()

@end

@implementation SimpleAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

+ (SimpleAlertVC *)shared {
    SimpleAlertVC *instance = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                               instantiateViewControllerWithIdentifier:@"SimpleAlertVC"];
    return instance;
}

#pragma mark - Button actions
- (IBAction)actionButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
