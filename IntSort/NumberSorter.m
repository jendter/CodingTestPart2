//
//  IntSorter.m
//  IntSort
//
//  Created by Joshua Endter on 1/9/22.
//

#import "NumberSorter.h"

@implementation NumberSorter

- (NSArray <NSNumber *>*)sort:(NSArray <NSNumber *>*)array;
{
    if (array.count <= 1) {
        return array;
    }
    NSMutableArray *mutableArray = [array mutableCopy];
    [self quickSort:mutableArray left:@0 right:@(array.count - 1)];
    return mutableArray;
}

- (void)quickSort:(NSMutableArray <NSNumber *>*)array left:(NSNumber *)left right:(NSNumber *)right
{
    if ([left intValue] < [right intValue]) {
        int pivot = [left intValue];
        int i = [left intValue];
        int j = [right intValue];
        while (i < j) {
            while([array[i] intValue] <= [array[pivot] intValue] && i < [right intValue]) {
                i++;
            }
            while([array[j] intValue] > [array[pivot] intValue]) {
                j--;
            }
            if (i < j) {
                [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
        
        [array exchangeObjectAtIndex:pivot withObjectAtIndex:j];
        [self quickSort:array left:left right:@(j - 1)];
        [self quickSort:array left:@(j + 1) right: right];
    }
}

@end
