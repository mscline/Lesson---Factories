//
//  VersionTwo.h
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypeDefs.h"


@interface VersionTwo : NSObject

  -(NSAttributedString *)returnTextToPresentToClientType:(ClientType)clientType userDeviceSize:(FormFactor)userDeviceSize;

@end
