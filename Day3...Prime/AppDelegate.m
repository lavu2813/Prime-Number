//
//  AppDelegate.m
//  Day3...Prime
//
//  Created by Student P_04 on 14/06/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor=[UIColor yellowColor];
    self.myViewController=[[UIViewController alloc]init];
    self.window.rootViewController=self.myViewController;
    
    self.checkButton=[[UIButton alloc]initWithFrame:CGRectMake(40, 300, 330, 60)];
    self.checkButton.backgroundColor=[UIColor redColor];
    //self.checkButton.titleLabel.text=@"Check ";
    [self.checkButton setTitle:@"Check Number" forState:UIControlStateNormal];
    [self.checkButton setTintColor:[UIColor whiteColor]];
    self.checkButton.titleLabel.font=[UIFont boldSystemFontOfSize:30];
    [self.checkButton addTarget:self action:@selector(checkNumber) forControlEvents:UIControlEventTouchUpInside];
    [self.myViewController.view addSubview:self.checkButton];
    
    self.myTextField=[[UITextField alloc]initWithFrame:CGRectMake(40, 60, 330, 60)];
    self.myTextField.placeholder=@"Enter the Number";
    
    self.myTextField.backgroundColor=[UIColor whiteColor];
    
    [self.myTextField.layer setBorderWidth:3];
    [self.myTextField.layer setBorderColor:[UIColor blackColor].CGColor];
    self.myTextField.layer.cornerRadius=10;
    self.myLabel=[[UILabel alloc]initWithFrame:CGRectMake(120, 150, 330, 50)];
    [self.myLabel setTextColor:[UIColor blueColor]];
    self.myLabel.font=[UIFont boldSystemFontOfSize:20];
    [self.myViewController.view addSubview:self.myLabel];
    self.myTextField.keyboardType=UIKeyboardTypeNumberPad;
    [self.myViewController.view addSubview:self.myTextField];
    
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    return YES;
}
-(void)checkNumber
{
    int number;
    number=[self.myTextField.text intValue];
    if(number==2||number==3||number==5)
    {
        self.myLabel.text=@"Number Is Prime";
    }
    else if(number%2==0||number%2==0||number%2==0)
    {
        self.myLabel.text=@"Number Is Not Prime";
    }
    else
    {
        self.myLabel.text=@"Number Is Prime";
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
