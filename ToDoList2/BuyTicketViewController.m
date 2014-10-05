//
//  BuyTicketViewController.m
//  ToDoList2
//
//  Created by Mohit on 5/10/14.
//
//

#import "BuyTicketViewController.h"

@interface BuyTicketViewController ()
@property (weak, nonatomic) IBOutlet UILabel *eventLabel;

@end

@implementation BuyTicketViewController

@synthesize eventName;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(eventName);
    _eventLabel.text = self.eventName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
