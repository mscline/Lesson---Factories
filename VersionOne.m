//
//  VersionOne.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "VersionOne.h"
#import "MCBuildAttributedText.h"


// DIRECTIONS
// 1) break out code for each client type (the sort routine and the text formatter) into its own class
//    each of these should be a subclass of a general class for all client types
// 2) break out the if...else statements in your returnTextToPresentToClientType (below) into a new
//    class called myFactory which will return the desired text formatter
// 3) think about how to access our functionality in the main body of our program, then do it
// 4) add a new client type without modifying anything in your previous code, other than in your factory class


// discussion questions:
// 1) how does the use of a factory, promote flexibility?
// 2) does the use of a factory truly reduce complexity?
// 3) what are the pros and cons of coupling vs. decoupling?  is a factory tightly coupled or decoupled?
// 3) how is the delegate method cellForRowAtIndexPath similiar to a factory method?
//    and how is it different from a factory method?


@interface VersionOne()

  @property NSMutableArray *dataSet;
  @property NSAttributedString *textForUserConsumption;

@end


@implementation VersionOne
  @synthesize dataSet, textForUserConsumption;

-(NSAttributedString *)returnTextToPresentToClientType:(ClientType)clientType userDeviceSize:(FormFactor)userDeviceSize
{

    NSArray *data = [self downloadDataFromServer];  // you would really do this using an asynch call
    dataSet = data.mutableCopy;

    if (clientType == business) {

        // a business will want data sorted by date
        dataSet = [self dateSort:dataSet];

        // a business will need a clean presentation style
        textForUserConsumption = [self createBusinessTextFromDataSet:data];


    } else if (clientType == hipster) {

        // a hipster wants the data sorted based on who they have given cool points to
        dataSet = [self coolSort:dataSet];

        // a hipster is attracted to a trendy layout style
        textForUserConsumption = [self createHipsterFromDataSet:dataSet];


    } else if (clientType == swaggy) {

        // swaggy clients are cool and want a reverse sort
        dataSet = [self reverseSort:dataSet];

        // just gotta have a cool colors
        textForUserConsumption = [self createSwaggyTextFromDataSet:dataSet];

    }

    // if we are using a
    if(userDeviceSize == watch){

        // if you are using a watch, no sort

        // if we are using a watch, we need a clean presentation style
        textForUserConsumption = [self createBusinessTextFromDataSet:data];

    }

    return textForUserConsumption;

}


#pragma DOWNLOAD DATA

-(NSArray *)downloadDataFromServer
{

    NSArray *sampleData = @[@"Peter Smith\n", @"John Smith\n", @"Mark\n", @"Paul\n", @"Tom\n", @"Kai\n", @"sfd\n", @"dsfsf\n"];

    return sampleData;

}


#pragma mark SORT ROUTINES

-(NSMutableArray *)reverseSort:(NSMutableArray *)data
{

    // add code here
    return data;

}

-(NSMutableArray *)coolSort:(NSMutableArray *)data
{
    
    // add code here
    return data;
    
}

-(NSMutableArray *)dateSort:(NSMutableArray *)data
{
    
    // add code here
    return data;
    
}


#pragma mark MAKE COOL TEXT

-(NSAttributedString *)createBusinessTextFromDataSet:(NSArray *)data
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

-(NSAttributedString *)createSwaggyTextFromDataSet:(NSArray *)data
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

-(NSAttributedString *)createHipsterFromDataSet:(NSArray *)data
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

@end
