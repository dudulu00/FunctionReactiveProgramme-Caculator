//
//  main.m
//  CaculatorByFRP
//
//  Created by hoomsun on 16/6/30.
//  Copyright © 2016年 njm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "Caculator.h"

int main(int argc, char * argv[]) {
    //    @autoreleasepool {
    //        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    //    }
    
    Caculator *c = [[Caculator alloc] init];
    
    BOOL is10 = [[[c caculate:^int(int result) {
        
        result += 5;
        result += 5;
        result += 5;
        
        return result;
        
    }] isEqul:^BOOL(int result) {
        
        return result == 10;
    }] isEqu];
    
    NSLog(@"is10 : %d",is10);
    
    
}
