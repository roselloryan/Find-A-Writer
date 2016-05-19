//
//  main.m
//  FindAWriter


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53";
        
        NSArray *nameAndKey = [line componentsSeparatedByString:@"| "];
        NSString *name = [nameAndKey objectAtIndex:0];
        NSArray *seperatedKey = [[nameAndKey objectAtIndex:1] componentsSeparatedByString:@" "];
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        for (NSString *numString in seperatedKey) {
            
            NSString *letterString = [NSString stringWithFormat:@"%c", [name characterAtIndex: [numString integerValue] - 1]];
            if (!letterString) {
                NSString *space = @" ";
                [solutionString appendString:space];
            }
            else {
                [solutionString appendString: letterString];
            }
        }
        
        NSLog(@"solutionString: %@", solutionString);
    }
    return 0;
}
