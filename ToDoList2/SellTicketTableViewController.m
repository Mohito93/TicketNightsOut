//
//  SellTicketTableViewController.m
//  ToDoList2
//
//  Created by Martin Engelcke on 04/10/2014.
//
//

#import "SellTicketTableViewController.h"
#import "SellTicket.h"

@interface SellTicketTableViewController ()


@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UITextField *eventDate;
@property (weak, nonatomic) IBOutlet UITextField *eventCity;
@property (weak, nonatomic) IBOutlet UITextField *eventPrice;
@property (weak, nonatomic) IBOutlet UITextField *personName;
@property (weak, nonatomic) IBOutlet UITextField *personPhone;
@property (weak, nonatomic) IBOutlet UITextField *personEmail;
@property (weak, nonatomic) IBOutlet UITextField *bankAccount;
@property (weak, nonatomic) IBOutlet UITextField *bankBankCode;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation SellTicketTableViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    
    if (self.eventName.text.length > 0
        && self.eventDate.text.length > 0
        && self.eventCity.text.length > 0
        && self.eventPrice.text.length > 0
        && self.personName.text.length > 0
        && self.personPhone.text.length > 0
        && self.personEmail.text.length > 0
        && self.bankAccount.text.length > 0
        && self.bankBankCode.text.length > 0) {
        
        self.sellTicket = [[SellTicket alloc] init];
        
        self.sellTicket.eventName = self.eventName.text;
        self.sellTicket.eventData = self.eventName.text;
        self.sellTicket.eventCity = self.eventName.text;
        self.sellTicket.eventPrice = self.eventName.text;
        self.sellTicket.sellerName = self.personName.text;
        self.sellTicket.sellerPhone = self.personPhone.text;
        self.sellTicket.sellerEmail = self.personEmail.text;
        
        self.sellTicket.ticketSold = NO;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 9;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

@end
