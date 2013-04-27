//
//  NSUtilities.h
//  Cloud9App
//
//  Created by Krishna Sapkota on 09/03/2013.
//  Copyright (c) 2013 Krishna Sapkota. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUtilities : NSObject

+ (NSMutableString *) getFormatedDate:(NSString *)date ;
+ (UIView *) getHeaderView:(UIImage *) logoImage forTitle:(NSString *)titleText forDetail:(NSString *)description;
+ (UIButton*) getBackButon;
+ (UIImageView *) getImageViewOfUrl:(NSString *) strUrlForImage ;
+ (NSString *) getToday;
+ (UIView *) getBadgeLikeView: (NSString *) strToDisplay;

@end
