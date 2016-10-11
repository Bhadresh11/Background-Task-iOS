//
//  ViewController.m
//  BackgroungAppRunningTask
//
//  Created by Malay Patel on 10/10/16.
//  Copyright © 2016 Bhadresh Patoliya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(EvertOneSecCallThisMethos:)
                                   userInfo:nil
                                    repeats:YES];
}

-(void)EvertOneSecCallThisMethos:(NSTimer *)timer
{
    
        sec = sec + 1;
                if (sec > 59)
        {
            min = min + 1;
            sec = 0;
        }
        if (min > 59)
        {
            hour = hour + 1;
            min = 0;
        }
        
        NSString *strtime;
        if (hour > 0)
        {
            strtime = [NSString stringWithFormat:@"%02d:%02d:%02d",hour,min,sec];
        }
        else
        {
            strtime = [NSString stringWithFormat:@"%02d:%02d",min,sec];
        }
        NSLog(@"strTime:%@", strtime);
        lblTimer.text = strtime;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
