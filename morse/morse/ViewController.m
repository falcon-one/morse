//
//  ViewController.m
//  morse
//
//  Created by Junichi Tanabu on 2015/01/03.
//  Copyright (c) 2015年 Junichi Tanabu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// LED swithch function
- (IBAction)changeSwitch:(id)sender
{
    // 背面カメラの初期化
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    if(ledLightSwitch.on == YES) {
        self.view.backgroundColor = [UIColor whiteColor];
        
        [captureDevice lockForConfiguration:NULL];
        captureDevice.torchMode = AVCaptureTorchModeOn;
        [captureDevice unlockForConfiguration];
    } else {
        self.view.backgroundColor = [UIColor blackColor];
        
        [captureDevice lockForConfiguration:NULL];
        captureDevice.torchMode = AVCaptureTorchModeOff;
        [captureDevice unlockForConfiguration];
    }
}

@end
