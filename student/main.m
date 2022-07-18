#import <Foundation/Foundation.h>
#import "student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        student *s = [[student alloc] init];
        s->name=@"lin chong yang";
        s->major=@"cs";
        s->age=24;
        
        [s study:100.25];
    }
    return 0;
}