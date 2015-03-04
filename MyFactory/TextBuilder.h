//
//  GenericText.h
//  MyFactory
//
//  Created by xcode on 1/12/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCBuildAttributedText.h"

@interface TextBuilder : NSObject

  -(NSMutableArray *)sortData:(NSMutableArray *)data;
  -(NSAttributedString *)createTextFromDataSet:(NSArray *)data;

@end
