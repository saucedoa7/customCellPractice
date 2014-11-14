//
//  CutomTableViewCell.m
//  CustomCellPractice
//
//  Created by Albert Saucedo on 11/9/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "CutomTableViewCell.h"

@implementation CutomTableViewCell
//@synthesize tells compiler to automatically generate code for accessing the properties we declared earlier

@synthesize lblCity;
@synthesize lblTeamName;
@synthesize imgTeamLogo;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
