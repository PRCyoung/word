#import "student.h"

@implementation student

-(void)study:(float)time{
    NSLog(@"name:%@,major:%@,age:%d,time:%.2fh",name,major,age,time);
}

@end
