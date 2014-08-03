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

static NSString *const kCLIENTID = @"BVPGGJCV0LDN2MWRKJI2SQMY4RDCTHVY45MJJSE1AU4TVM4F";
static NSString *const kCLIENTSECRET = @"AZIJCFAVEASNP2FAHTFJAWMOJTHS1NDJMG1XZIWPBHJNI5NJ";

@interface TCListViewController ()

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)refreshBarButtonItemPressed:(UIBarButtonItem *)sender {
}
@end
