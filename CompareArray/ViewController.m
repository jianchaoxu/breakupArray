//
//  ViewController.m
//  CompareArray
//
//  Created by 易骏 on 16/11/14.
//  Copyright © 2016年 xjc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
    NSArray *array1 = @[@"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-01",@"2014-04-02",@"2014-04-03",
                        
                        @"2014-04-04",@"2014-04-06",@"2014-04-08",
                        
                        @"2014-04-05",@"2014-04-07",@"2014-04-09"];
    NSMutableArray *array = [NSMutableArray arrayWithArray:array1];
    
    NSMutableArray *dateMutablearray = [@[] mutableCopy];
    for (int i = 0; i < array.count; i ++) {
        
        NSString *string = array[i];
        
        NSMutableArray *tempArray = [@[] mutableCopy];
        
        [tempArray addObject:string];
        
        for (int j = i+1; j < array.count; j ++) {
            
            NSString *jstring = array[j];
            
            if([string isEqualToString:jstring]){
                
                [tempArray addObject:jstring];
                
                [array removeObjectAtIndex:j];
                j -= 1;
                
            }
            
        }
        
        [dateMutablearray addObject:tempArray];
        
    }
    
    NSLog(@"dateMutable:%@",dateMutablearray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
