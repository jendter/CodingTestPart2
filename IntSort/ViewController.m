//
//  ViewController.m
//  IntSort
//
//  Created by Joshua Endter on 1/9/22.
//

#import "ViewController.h"
#import "NumberSorter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NumberSorter *sorter = [NumberSorter new];
    NSArray *toSort = @[@1, @3, @2, @3, @1, @2];
    NSArray *sorted = [sorter sort:toSort];
    NSLog(@"Starting Array: %@", toSort);
    NSLog(@"Sorted Array: %@", sorted);
}

@end
