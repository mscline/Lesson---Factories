//
//  VersionTwo.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "VersionTwo.h"
#import "MCBuildAttributedText.h"
#import "TextBuilder.h"
#import "MyTextFactory.h"

@interface VersionTwo()

@property NSMutableArray *dataSet;
@property NSAttributedString *textForUserConsumption;

@end


@implementation VersionTwo
  @synthesize dataSet, textForUserConsumption;

-(NSAttributedString *)returnTextToPresentToClientType:(ClientType)clientType userDeviceSize:(FormFactor)userDeviceSize
{

    NSArray *data = [self downloadDataFromServer];  // you would really do this using an asynch call
    dataSet = data.mutableCopy;

    TextBuilder *textFormatter = [MyTextFactory returnTextFormatterForClientType:clientType userDeviceSize:userDeviceSize];

    dataSet = [textFormatter sortData:dataSet];
    textForUserConsumption = [textFormatter createTextFromDataSet:dataSet];

    return textForUserConsumption;

}


#pragma DOWNLOAD DATA

-(NSArray *)downloadDataFromServer
{

    NSArray *sampleData = @[@"Peter Smith\n", @"John Smith\n", @"Mark\n", @"Paul\n", @"Tom\n", @"Kai\n", @"sfd\n", @"dsfsf\n"];

    return sampleData;

}

@end
