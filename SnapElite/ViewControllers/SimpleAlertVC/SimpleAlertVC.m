//
//  SimpleAlertVC.m
//  SnapElite
//
//  Created by Ayaz Rafai on 27/06/24.
//

#import "SimpleAlertVC.h"
#import "UIView+AlertAnimation.h"

@interface SimpleAlertVC ()

@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) SimpleAlertModel *model;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;

@end

@implementation SimpleAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self populateData];
}

- (void)dealloc {
    NSLog(@"DEINIT called");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_contentView animateView];
}

+ (SimpleAlertVC *)sharedWith:(SimpleAlertModel *)model {
    SimpleAlertVC *instance = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                               instantiateViewControllerWithIdentifier:@"SimpleAlertVC"];
    instance.model = model;
    return instance;
}

- (void)populateData {
    _titleLabel.text = _model.title;
    _descriptionLabel.text = _model.descriptionContent;
    [_actionButton setTitle:_model.buttonTitle forState:UIControlStateNormal];
}

#pragma mark - Button actions
- (IBAction)actionButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
