//
//  CutomTableViewCell.h
//  CustomCellPractice
//
//  Created by Albert Saucedo on 11/9/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CutomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblCity;
@property (strong, nonatomic) IBOutlet UILabel *lblTeamName;
@property (strong, nonatomic) IBOutlet UIImageView *imgTeamLogo;


@end
