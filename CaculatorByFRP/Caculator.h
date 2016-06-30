//
//  Caculator.h
//  CaculatorByFRP
//
//  Created by hoomsun on 16/6/30.
//  Copyright © 2016年 njm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject

@property (nonatomic, assign) int result;
@property (nonatomic, assign) BOOL isEqu;

- (Caculator *)caculate:(int (^)(int result))cacuBlock;
- (Caculator *)isEqul:(BOOL (^)(int result))equBlock;


@end
