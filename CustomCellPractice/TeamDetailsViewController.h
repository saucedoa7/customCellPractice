//
//  TeamDetailsViewController.h
//  CustomCellPractice
//
//  Created by Albert Saucedo on 12/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTeamLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgTeamLogo;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UILabel *lblEst;

@property (strong, nonatomic) NSArray *details;

@end
