//
//  Caculator.m
//  CaculatorByFRP
//
//  Created by hoomsun on 16/6/30.
//  Copyright © 2016年 njm. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator


- (Caculator *)caculate:(int (^)(int result))cacuBlock {
	
    self.result = cacuBlock(self.result);
    
    return self;
}

- (Caculator *)isEqul:(BOOL (^)(int result))equBlock {
	
    self.isEqu = equBlock(self.result);
    
    return self;
}


@end
