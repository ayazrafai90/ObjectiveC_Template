//
//  ConfirmationAlertVC.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "ConfirmationAlertVC.h"

@interface ConfirmationAlertVC ()

@end

@implementation ConfirmationAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

+ (ConfirmationAlertVC *)shared {
    ConfirmationAlertVC *instance = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                     instantiateViewControllerWithIdentifier:@"ConfirmationAlertVC"];
    return instance;
}

#pragma mark - Button actions
- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)actionButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
