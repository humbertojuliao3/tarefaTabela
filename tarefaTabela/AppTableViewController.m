//
//  AppTableViewController.m
//  TableViewStory
//
//  Created by Rafael Souza Belchior da Silva on 25/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "AppTableViewController.h"
#import "AppTableViewCell.h"
#import "AppDetailViewController.h"

@interface AppTableViewController ()

@end

@implementation AppTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< HEAD:tarefaTabela/TableViewController.m
    nameData = [NSArray arrayWithObjects:@"Genius", @"Contador", @"Lista", nil];
    descriptionData = [NSArray arrayWithObjects:@"Jogos", @"Utilitário", @"Utilitário", nil];
    imageData = [NSArray arrayWithObjects:@"genius.png", @"contador.png", @"lista.png", nil];
=======
    [_appName addObject:@"Genius"];
    [_appDescription addObject:@"Jogos"];
    [_appImages addObject:@"genius.png"];
     [_appName addObject:@"Contador"];
     [_appDescription addObject:@"Utilitário"];
     [_appImages addObject:@"contador.png"];
      [_appName addObject:@"Lista"];
      [_appDescription addObject:@"Utilitário"];
      [_appImages addObject:@"lista.png"];
     

>>>>>>> origin/master:tarefaTabela/AppTableViewController.m
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_appName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"appTableCell";
    
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[AppTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                            reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    
    long row = [indexPath row];
    
    cell.nameLabel.text = _appName[row];
    cell.descriptionLabel.text = _appDescription[row];
    cell.appImage.image = [UIImage imageNamed:_appImages[row]];
    
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    
}


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    if ([[segue identifier] isEqualToString:@"ShowAppDetails"])
    {
        AppDetailViewController *detailViewController =
        [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView
                                    indexPathForSelectedRow];
        
        long row = [myIndexPath row];
        
        detailViewController.appDetail = @[_appName[row],
                                                _appDescription[row], _appImages[row]];
    }
}


@end
