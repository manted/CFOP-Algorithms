//
//  AlgoTableViewController.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "AlgoTableViewController.h"
#import "F2LAlgorithm.h"
#import "OLLAlgorithm.h"
#import "PLLAlgorithm.h"
#import "AlgoDetailViewController.h"
@interface AlgoTableViewController ()

@end

@implementation AlgoTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    _algorithms = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",Nil];
    NSString *title = [self title];
    if ([title isEqualToString:@"F2L"]) {
        F2LAlgorithm *algo = [[F2LAlgorithm alloc]init];
        _algorithms = algo.f2l;
        _type = F2L;
    }else if([title isEqualToString:@"OLL"]){
        OLLAlgorithm *algo = [[OLLAlgorithm alloc]init];
        _algorithms = algo.oll;
        _type = OLL;
    }else if([title isEqualToString:@"PLL"]){
        PLLAlgorithm *algo = [[PLLAlgorithm alloc]init];
        _algorithms = algo.pll;
        _type = PLL;
    }

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_algorithms count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"algo cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil)
    {
        // Create a cell to display an ingredient.
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier];
    }
    
    NSString *imgName = [self getImageNameOfRow:(int)(indexPath.row + 1)];
    [cell.imageView setImage:[UIImage imageNamed:imgName]];
    [cell.textLabel setNumberOfLines:2];
    [cell.textLabel setText:[_algorithms objectAtIndex:indexPath.row]];
    
    return cell;
}

-(NSString*)getImageNameOfRow:(int)index{
    NSString *name;
    switch (_type) {
        case F2L:
            name = [NSString stringWithFormat:@"f2l%i.gif",index];
            break;
        case OLL:
            name = [NSString stringWithFormat:@"oll%i.gif",index];
            break;
        case PLL:
            name = [NSString stringWithFormat:@"pll%i.gif",index];
            break;
        default:
            break;
    }
    return name;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"detail"]){
        UITableViewCell *cell=(id)sender;
        AlgoDetailViewController *detailVC = segue.destinationViewController;
        [detailVC setImage:cell.imageView.image];
        [detailVC setAlgorithmString:cell.textLabel.text];
    }

}



@end
