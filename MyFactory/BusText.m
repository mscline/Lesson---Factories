//
//  BusText.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "BusText.h"

@implementation BusText


-(NSAttributedString *)createTextFromDataSet:(NSArray *)data
{

    NSMutableArray *destinationArray = [NSMutableArray new];
    NSAttributedString *tempStr;

    // add formatting to each element in data set
    for(NSString *str in data){

        tempStr = [MCBuildAttributedText createAttributedString:str withFont:@"Palatino-Roman" fontSize:16.0 fontColor:[UIColor blueColor] nsTextAlignmentStyle:NSTextAlignmentLeft];
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

