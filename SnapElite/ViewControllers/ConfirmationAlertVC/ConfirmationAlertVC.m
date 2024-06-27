//
//  ConfirmationAlertVC.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "ConfirmationAlertVC.h"
#import "UIView+AlertAnimation.h"

@interface ConfirmationAlertVC ()

@property (weak, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ConfirmationAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_contentView animateView];
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
