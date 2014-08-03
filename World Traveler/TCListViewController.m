//
//  TCViewController.m
//  World Traveler
//
//  Created by Koen Hendriks on 01/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import "TCListViewController.h"
#import "TCFourSquareSessionManager.h"
#import "AFMMRecordResponseSerializationMapper.h"
#import "AFMMRecordResponseSerializer.h"
#import "Venue.h"
#import "Location.h"

static NSString *const kCLIENTID = @"BVPGGJCV0LDN2MWRKJI2SQMY4RDCTHVY45MJJSE1AU4TVM4F";
static NSString *const kCLIENTSECRET = @"AZIJCFAVEASNP2FAHTFJAWMOJTHS1NDJMG1XZIWPBHJNI5NJ";

@interface TCListViewController ()

@property (strong, nonatomic) NSArray *venues;

@end

@implementation TCListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Setup the TCFourSquareSessionManager, our NSManagedObjectContext and the response serializer
    TCFourSquareSessionManager *sessionManager = [TCFourSquareSessionManager sharedClient];
    
    NSManagedObjectContext *context = [NSManagedObjectContext MR_defaultContext];
    
    AFHTTPResponseSerializer *HTTPResponseSerializer = [AFJSONResponseSerializer serializer];
    
    AFMMRecordResponseSerializationMapper *mapper = [[AFMMRecordResponseSerializationMapper alloc]init];
    [mapper registerEntityName:@"Venue" forEndpointPathComponent:@"venues/search?"];
    
    AFMMRecordResponseSerializer *serializer = [AFMMRecordResponseSerializer serializerWithManagedObjectContext:context responseObjectSerializer:HTTPResponseSerializer entityMapper:mapper];
    
    sessionManager.responseSerializer = serializer;
    
    // Set the delegate and datasource properties
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)refreshBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [[TCFourSquareSessionManager sharedClient] GET:@"venues/search?ll=30.25,-97.75" parameters:@{@"client_id": kCLIENTID, @"client_secret": kCLIENTSECRET, @"v": @"20140803"} success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"Succes: %@", responseObject);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.venues count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Venue *venue = self.venues[indexPath.row];
    cell.textLabel.text = venue.name;
    cell.detailTextLabel.text = venue.location.address;
    
    return cell;
}













@end










