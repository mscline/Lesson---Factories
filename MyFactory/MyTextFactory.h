//
//  MyTextFactory.h
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextBuilder.h"
#import "TypeDefs.h"

@interface MyTextFactory : NSObject

  +(TextBuilder *)returnTextFormatterForClientType:(ClientType)clientType userDeviceSize:(FormFactor)userDeviceSize;

@end
