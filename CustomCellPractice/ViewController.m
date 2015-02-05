//
//  ViewController.m
//  CustomCellPractice
//
//  Created by Albert Saucedo on 11/7/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved...
//

#import "ViewController.h"
#import "CutomTableViewCell.h"
#import "TeamDetailsViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tblTeamsTable;
@property NSArray *cities;
@property NSArray *images;
@property NSArray *teamNames;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tblTeamsTable.separatorColor = [UIColor colorWithHue:0.33 saturation:1 brightness:1 alpha:1];
    UIBarButtonItem *newButton = [[UIBarButtonItem alloc] initWithTitle:@"B===D~" style:UIBarButtonItemStylePlain target:nil action:nil];

    [[self navigationItem] setBackBarButtonItem:newButton];

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

    static NSString *tableCellID = @"myCellID";
    CutomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableCellID forIndexPath:indexPath];

    NSInteger row  = [indexPath row];

    cell.lblCity.text  = self.cities [row];
    cell.lblTeamName.text = self.teamNames [row];
    cell.imgTeamLogo.image = [UIImage imageNamed:self.images[row]];

    if ([cell.lblCity.text isEqualToString:@"CHI"]) {
        cell.lblTeamName.textColor = [UIColor colorWithHue:0.57 saturation:1 brightness:0.61 alpha:1];
    } else if ([cell.lblCity.text isEqualToString:@"CIN"]) {
        cell.lblTeamName.textColor = [UIColor colorWithHue:0.97 saturation:1 brightness:1 alpha:1];
    } else if ([cell.lblCity.text isEqualToString:@"PIT"]) {
        cell.lblTeamName.textColor = [UIColor colorWithHue:0.11 saturation:0.85 brightness:1 alpha:1];
    } else if ([cell.lblCity.text isEqualToString:@"STL"]) {
        cell.lblTeamName.textColor = [UIColor colorWithHue:0.96 saturation:0.92 brightness:0.8 alpha:1];
    } else if ([cell.lblCity.text isEqualToString:@"MIL"]) {
        cell.lblTeamName.textColor = [UIColor colorWithHue:0.61 saturation:0.81 brightness:0.18 alpha:1];
    }

    return  cell;

}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"NL Central";
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        TeamDetailsViewController *TVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tblTeamsTable indexPathForSelectedRow];

        NSInteger row = [indexPath row];
        TVC.details = @[self.cities[row], self.teamNames[row], self.images[row]];
    }
}
@end