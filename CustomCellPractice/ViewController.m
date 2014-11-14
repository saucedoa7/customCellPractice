//
//  ViewController.m
//  CustomCellPractice
//
//  Created by Albert Saucedo on 11/7/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved...
//

#import "ViewController.h"
#import "CutomTableViewCell.h"

@interface ViewController ()

@property NSArray *cities;
@property NSArray *images;
@property NSArray *teamNames;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    self.cities = [NSArray arrayWithObjects:@"MIL",
                 @"STL",
                 @"PIT",
                 @"CIN",
                 @"CHI", nil];

    self.images = [NSArray arrayWithObjects:@"MIL",
                   @"STL",
                   @"PIT",
                   @"CIN",
                   @"Cubs", nil];

    self.teamNames = [NSArray arrayWithObjects:@"Brewers",
                      @"Cardinals",
                      @"Pirates",
                      @"Reds",
                      @"Cubs",nil];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cities count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *tableCellID = @"CutomTableViewCell";

    CutomTableViewCell *cell = (CutomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellID];

    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCell"
                                                     owner:self
                                                   options:nil];

        cell = [nib objectAtIndex:0];
    }

    if ([[self.cities objectAtIndex:indexPath.row] isEqualToString:@"CHI - Cubs"]) {
        cell.lblCity.text = [self.cities objectAtIndex:indexPath.row];
        cell.imgTeamLogo.image = [UIImage imageNamed:@"Cubs"];
    } else {
        cell.lblCity.text = [self.cities objectAtIndex:indexPath.row];
        cell.imgTeamLogo.image = [UIImage imageNamed:[self.images objectAtIndex:indexPath.row]];
        cell.lblTeamName.text = [self.teamNames objectAtIndex:indexPath.row];
    }

    return  cell;

}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"NL Central";
}
@end