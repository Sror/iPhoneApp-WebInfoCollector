//
//  FirstJsonLoader.m
//  Cloud9App
//
//  Created by Krishna Sapkota on 09/03/2013.
//  Copyright (c) 2013 Krishna Sapkota. All rights reserved.
//

#import "FirstJsonLoader.h"
#import "MyJson.h"

#define kjsonVenueURL @"venuesAndEvents.php"
#define kjsonEventURL @"datesAndEvents.php"

static NSMutableArray *venues;
static NSMutableArray *events;
static NSMutableArray  *venueDictArray;

@implementation FirstJsonLoader {
   
}


+ (void) procesJson{
    MyJson * json = [[MyJson alloc] init];
    venues = [json toArray:kjsonVenueURL];
    events = [json toArray:kjsonEventURL];
    NSLog(@" venues: url %@",kjsonVenueURL);
    NSLog(@" venues: jsonResults %@",venues);

}

+ (void) processVenues{
    venueDictArray = [[NSMutableArray alloc]init];
    NSEnumerator *e = [venues objectEnumerator];
    id object;
    while (object = [e nextObject]) {
        // do something with object
        NSDictionary *jsonDict = object;
       
        NSMutableString *venueId = [jsonDict objectForKey:@"venue_id"];
        NSMutableString *name = [jsonDict objectForKey:@"name"];
        NSMutableString *address = [jsonDict  objectForKey:@"address"];
        NSMutableString *quantity = [jsonDict objectForKey:@"quantity"];
    
        NSMutableString *countDetail = [NSMutableString stringWithFormat:@"%@ Event(s)",quantity];
        
        NSMutableString *logo = [jsonDict objectForKey:@"logo"];
        NSURL *imageURL = [NSURL URLWithString:logo];
        NSData  *imageData = [NSData dataWithContentsOfURL:imageURL];
        UIImage *logoImage = [[UIImage alloc] initWithData:imageData];
        
        //create a new dictionary of processed values
        NSMutableDictionary *eventDict = [[NSMutableDictionary alloc] init];
        [eventDict setObject:venueId forKey:@"venue_id"];
        [eventDict setObject:name forKey:@"name"];
        [eventDict setObject:address forKey:@"address"];
        [eventDict setObject:countDetail forKey:@"countDetail"];
        [eventDict setObject:logoImage forKey:@"logoImage"];
        
        [venueDictArray addObject:eventDict];
        
    }
}



+ (NSMutableArray *) getVenues{
    [FirstJsonLoader processVenues];
    return venueDictArray;
}

+ (NSMutableArray *) getEvents{
  
    return venues;
}

@end
