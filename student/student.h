#import <Foundation/Foundation.h>

@interface student : NSObject
{
    @public
    NSString *name;
    NSString *major;
    NSUInteger age;
}


@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *major;
@property(nonatomic, assign) NSUInteger age;

-(void)study:(float)time;

@end
