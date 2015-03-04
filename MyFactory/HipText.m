//
//  HipText.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "HipText.h"

@implementation HipText

-(NSAttributedString *)createTextFromDataSet:(NSArray *)data
{

    NSMutableArray *destinationArray = [NSMutableArray new];
    NSAttributedString *tempStr;


    // add formatting to each element in data set
    for(NSString *str in data){

        // pull out first letter
        NSString *strA = [str substringWithRange:NSMakeRange(0, 1)];
        NSString *strB = [str substringFromIndex:1];


        // format first letter
        tempStr = [MCBuildAttributedText createAttributedString:strA withFont:@"Papyrus" fontSize:24.0 fontColor:[UIColor blueColor] nsTextAlignmentStyle:NSTextAlignmentLeft];

        [destinationArray addObject:tempStr];

        // format rest of string
        tempStr = [MCBuildAttributedText createAttributedString:strB withFont:@"Papyrus" fontSize:16.0 fontColor:[UIColor blackColor] nsTextAlignmentStyle:NSTextAlignmentLeft];

        [destinationArray addObject:tempStr];

    }

    // combine array into one string
    return [MCBuildAttributedText combineAttributedStrings:(NSArray *)destinationArray];
    
}

-(NSMutableArray *)sortData:(NSMutableArray *)data
{

    // add code here
    return data;
    
}

@end
