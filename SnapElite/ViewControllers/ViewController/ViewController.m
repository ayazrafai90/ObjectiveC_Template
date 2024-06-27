//
//  ViewController.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "ViewController.h"
#import "SimpleAlertVC.h"
#import "ConfirmationAlertVC.h"
#import "SimpleAlertModel.h"

@interface ViewController () <UIColorPickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *colorIndicationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Button actions
- (IBAction)colorPickerButtonTapped:(id)sender {
    [self presentColorPicker];
}

- (IBAction)subscribeNowButtonTapped:(id)sender {
    
    SimpleAlertModel *model = [[SimpleAlertModel alloc]initWithTitle:@"Lorem ipsum"
                                                         description:@"Lorem ipsum dolor sit amet consectetur. Turpis duis non consectetur mauris purus."
                                                         buttonTitle:@"Got it"];
    SimpleAlertVC *controller = [SimpleAlertVC sharedWith: model];
    controller.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:controller animated:NO completion:nil];
}

- (IBAction)creditButtonTapped:(id)sender {
    
    ConfirmationAlertVC *controller = [ConfirmationAlertVC shared];
    controller.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:controller animated:NO completion:nil];
}

#pragma mark - Color picker actions
- (void)presentColorPicker {
    UIColorPickerViewController *colorPickerVC = [[UIColorPickerViewController alloc] init];
    colorPickerVC.delegate = self;
    colorPickerVC.selectedColor = _colorIndicationView.backgroundColor;
    colorPickerVC.supportsAlpha = YES; // If you want to allow alpha channel
    colorPickerVC.selectedColor = self.view.backgroundColor; // Set the initial selected color
    [self presentViewController:colorPickerVC animated:YES completion:nil];
}

#pragma mark - UIColorPickerViewControllerDelegate

- (void)colorPickerViewControllerDidSelectColor:(UIColorPickerViewController *)viewController {
    _colorIndicationView.backgroundColor = viewController.selectedColor;
}

- (void)colorPickerViewControllerDidFinish:(UIColorPickerViewController *)viewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
