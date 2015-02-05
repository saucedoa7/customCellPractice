//
//  TeamDetailsViewController.m
//  CustomCellPractice
//
//  Created by Albert Saucedo on 12/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "TeamDetailsViewController.h"

@interface TeamDetailsViewController ()

@end

@implementation TeamDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.navigationItem.title = self.details[0];

    self.lblCity.text = @"";
    self.lblTeamLabel.text = self.details[1];
    self.imgTeamLogo.image = [UIImage imageNamed:self.details[2]];


    if ([self.navigationItem.title isEqualToString:@"CHI"]) {
        self.lblEst.text = @"Est: 1870";
        self.lblTeamLabel.textColor = [UIColor colorWithHue:0.57 saturation:1 brightness:0.61 alpha:1];
    } else {
        self.lblEst.text = @"Est: N/A";
    }
}

@end
