//
//  ViewController.m
//  MyFactory
//
//  Created by xcode on 1/9/15.
//  Copyright (c) 2015 MSCline. All rights reserved.
//

#import "ViewController.h"
#import "VersionOne.h"
#import "VersionTwo.h"

@interface ViewController ()


  @property (weak, nonatomic) IBOutlet UITextView *textView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    ClientType ourClientType = hipster;     //  hipster, swaggy, business, steamPunk_comingSoon
    FormFactor ourClientsDeviceSize = smallForm;     // smallForm, largeForm, watch, tba


    VersionTwo *ourProgram = [VersionTwo new];  // VersionOne, VersonTwo

    NSAttributedString *ourStringForDisplay = [ourProgram returnTextToPresentToClientType:ourClientType userDeviceSize:ourClientsDeviceSize];
    self.textView.attributedText = ourStringForDisplay;


}


@end
