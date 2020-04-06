#import "Combinator.h"

@implementation Combinator
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    NSInteger m = [array[0] integerValue];
    NSInteger n = [array[1] integerValue];
    NSInteger k = 0;
    
    if (m == n) {
        return @1;
    }
    
    while (k < n) {
        NSInteger l = [self fact:n] / ([self fact:n - k] * [self fact:k]);
        if (l == m) {
            return [NSNumber numberWithInteger:k];
        }
        k++;
    }
    return nil;
}

- (NSInteger)fact:(NSInteger)n {
    if (n == 0) {
        return 1;
    } else {
        return n * [self fact:n - 1];
    }
}
@end
