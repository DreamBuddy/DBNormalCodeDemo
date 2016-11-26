//
//  ViewController.m
//  CodeDemo
//
//  Created by Xu Mengtong on 26/11/16.
//  Copyright © 2016年 Xu Mengtong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [self _]);
    NSLog(@"%@" , [self :@"哈哈哈"]);
    
    CGRect rect = {1,2,3,4}; //CGRectMake(1, 2, 3, 4);
    CGRect rect1 = {1 ,2}; // {1 ,2 ,0 ,0}
    CGRect rect2 = {.origin.x= 5 , .size = {10 ,10}}; //{5 ,0 ,10 ,10}
    
    void (^block)()  = ^(int a ,NSNumber *b ,UIView *c){
        NSLog(@"%d %@ %@" ,a ,b ,c);
    };
    !block ?  : block(1 ,@2 ,self.view);
    
    NSLog(@"----->contain = %d" ,({
        BOOL contain;
        NSArray *arr = @[@1 ,@2 ,@3];
        contain = [arr containsObject:@4];
        contain;
    }));
    
    if (/* DISABLES CODE */ (NO) && [self automaticallyAdjustsScrollViewInsets]) {
        
    }
    
    #define keypath(OBJ ,PATH) \
        (((void) (NO && ((void)OBJ.PATH ,NO)) , # PATH))
    keypath(self, automaticallyAdjustsScrollViewInsets);
    
    ^(){
        NSLog(@"握草？");
    }();
}

-_{
    // 省略返回值 编译器默认是 id 类型
    return @"我是最短的方法";
}

-:_{
   return _;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
