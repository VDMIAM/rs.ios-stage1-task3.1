#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    NSMutableString *mString = [[NSMutableString alloc] init];
    NSInteger numberOfElements = numbers.count;
      
    if ([numbers isEqual:@[]])
        return nil;
    else {
        for (int i = 0; i < numbers.count-1; i++) {
            numberOfElements--;
            int number = numbers[i].intValue;
            
            if (number < 0)
                [mString appendFormat:@" - %dx^%ld", numbers[i].intValue * -1, numberOfElements];
              
            if (number > 0)
                [mString appendFormat:@" + %dx^%ld", numbers[i].unsignedIntValue, numberOfElements];
        }
        
        if (numbers.lastObject.intValue != 0)
            [mString appendFormat:@" + %@", numbers.lastObject];
        
        return [[[mString substringFromIndex:3]stringByReplacingOccurrencesOfString:@"^1" withString:@""] stringByReplacingOccurrencesOfString:@"1x"  withString:@"x"];
    }
}
@end
