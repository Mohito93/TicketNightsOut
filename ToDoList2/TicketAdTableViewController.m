//
//  TicketAdTableViewController.m
//  ToDoList2
//
//  Created by Mohit on 5/10/14.
//
//

#import "TicketAdTableViewController.h"
#import "SellTicketTableViewController.h"
#import "SellTicket.h"
#import "BuyTicketViewController.h"

@interface TicketAdTableViewController ()

@property NSMutableArray *events;

@end

@implementation TicketAdTableViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    //    AddToDoItemViewController *source = [segue sourceViewController];
    //    ToDoItem *item = source.toDoItem;
    //    if (item != nil) {
    //        [self.toDoItems addObject:item];
    //        [self.tableView reloadData];
    //    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.events = [[NSMutableArray alloc] init];
    [self loadInitialData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)loadInitialData {
    SellTicket *event1 = [[SellTicket alloc] init];
    event1.eventName = @"MLH HACK";
    event1.eventData = @"4th October 2014";
    event1.eventCity = @"London";
    event1.eventPrice = @"$20";
    event1.sellerName = @"Martin";
    event1.sellerEmail = @"123@abc.com";
    event1.sellerPhone = @"07777777777";
    [self.events addObject:event1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.events count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    SellTicket *event = [self.events objectAtIndex:indexPath.row];
    NSString *eventName = event.eventName;
    NSString *eventDate = event.eventData;
    NSString *eventPrice = event.eventPrice;
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@ - %@",eventName,eventDate,eventPrice];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"buyTicket"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BuyTicketViewController *destViewController = segue.destinationViewController;
        SellTicket *curr = [self.events objectAtIndex:indexPath.row];
        destViewController.eventName = curr.eventName;
    }
}

@end
