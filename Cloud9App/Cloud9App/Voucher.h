//
//  Voucher.h
//  Cloud9App
//
//  Created by Krishna Sapkota on 03/07/2013.
//  Copyright (c) 2013 Krishna Sapkota. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface Voucher : UIViewController <ZBarReaderDelegate> {
    IBOutlet UIButton *scanButton;
    NSString *event_id;
}

@property (retain, nonatomic) NSString *event_id;
@property (nonatomic, retain) IBOutlet UIButton *scanButton;

-(IBAction) scanButtonPress:sender;

@end
