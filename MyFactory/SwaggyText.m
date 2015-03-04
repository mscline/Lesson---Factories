//
//  SwaggyText.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "SwaggyText.h"

@implementation SwaggyText

-(NSAttributedString *)createTextFromDataSet:(NSArray *)data
{

    NSMutableArray *destinationArray = [NSMutableArray new];
    NSAttributedString *tempStr;

    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor grayColor], [UIColor orangeColor], [UIColor purpleColor], [UIColor brownColor], nil];
    int counter = 0;

    // add formatting to each element in data set
    for(NSString *str in data){

        tempStr = [MCBuildAttributedText createAttributedString:str withFont:@"Chalkduster" fontSize:16.0 fontColor:colors[counter] nsTextAlignmentStyle:NSTextAlignmentLeft];
        [destinationArray addObject:tempStr];

        counter ++;
        if(counter >= data.count -1){ counter = 0; }

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
