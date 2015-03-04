//
//  MyTextFactory.m
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "MyTextFactory.h"
#import "SwaggyText.h"
#import "BusText.h"
#import "HipText.h"

@implementation MyTextFactory

+(TextBuilder *)returnTextFormatterForClientType:(ClientType)clientType userDeviceSize:(FormFactor)userDeviceSize
{

    if(userDeviceSize == watch){ return [BusText new]; }

    if(clientType == business) { return [BusText new]; }
    if(clientType == hipster)  { return [HipText new]; }
    if(clientType == swaggy)   { return [SwaggyText new]; }


    return nil;

}

@end
