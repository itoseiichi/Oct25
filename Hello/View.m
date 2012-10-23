//
//  View.m
//  Hello
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        //self.backgroundColor = [UIColor yellowColor];
		self.backgroundColor = [UIColor 
								colorWithRed:1.0 green:0.4 blue:0.2 alpha:1.0];
		// Keep the size of view the same,
		// but move the origin to the center of the view.
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont boldSystemFontOfSize: 32.0];
    NSString *string = @"こんにちは世界！";  //That's Japanese!
	//UIDevice *device = [UIDevice currentDevice]; 
	//NSString *string = device.model;
	//NSString *string = device.uniqueIdentifier;
	//NSString *string = device.systemName;
	//NSString *string = device.systemVersion;
	
	//NSURL *url = [[NSURL alloc] initWithString:
	//			  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
	//NSError *error;
	//NSString *string = [[NSString alloc]
	//					initWithContentsOfURL: url
	//					encoding: NSUTF8StringEncoding
	//					error: &error];
	//if (string == nil){
	//	string = [error localizedDescription];
	//}
	
    //CGPoint point = CGPointMake(50.0, 200.0);
    
	//CGSize size = [string sizeWithFont: font];
	//CGRect b = self.bounds;
	//CGFloat x = b.origin.x + (b.size.width - size.width) / 2;
	//CGFloat y = b.origin.y + (b.size.height - size.height) / 2;
	//CGPoint point = CGPointMake(x, y);
	
	CGSize size = [string sizeWithFont: font];
	CGPoint point = CGPointMake(-size.width / 2,-size.height / 2);
	[string drawAtPoint: point withFont: font];
	//[@"Hello, World!" 
	// 	 drawAtPoint: CGPointZero 
	//	 withFont: [UIFont systemFontOfSize: 32]];
}

@end
