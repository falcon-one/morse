//
//  ViewController.h
//  morse
//
//  Created by Junichi Tanabu on 2015/01/03.
//  Copyright (c) 2015年 Junichi Tanabu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    IBOutlet UISwitch *ledLightSwitch;
}

- (IBAction)changeSwitch:(id)sender;


@end

