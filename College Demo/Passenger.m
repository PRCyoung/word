//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"
#import "math.h"

@implementation Orders

@end

@implementation Passenger
// 去订票
- (BOOL)BookOrders:(NSDate *)departuretime departureaddress:(Address *)departureaddress destinationaddress:(Address *)destinationaddress{
        
    BOOL result=YES;                //订票结果
    srand((unsigned)time(NULL));    //随机种子
    Orders *order = [Orders new];   //新建订单对象

    //生成订单号
    int orderid=rand() % (int)pow(10, 6);
    order.OrderID = [NSString stringWithFormat:@"%0.6d",orderid];
    
    //订单信息
    order.DepartureTime = departuretime;
    order.DepartureAddress = departureaddress;
    order.DestinationAddress = destinationaddress;
    
    //生成座位号
    int seatid=rand() % 30;
    order.SeatID = [NSString stringWithFormat:@"%0.2d",seatid];
    
    //添加到历史订单和未出行订单
    [self.HistoryOrders addObject:order];
    [self.PendingOrders addObject:order];
        
    return result;
}

// 去检票
- (BOOL)CheckOrders:(NSString *)name orderid:(NSString *)orderid{
    
    Orders *order = [Orders new];       //新建订单对象
    BOOL result = YES|NO;               //检票结果
    
    //开始检票
    for(order in self.PendingOrders)
    {
        if([orderid isEqualToString:order.OrderID] && [name isEqualToString:self.name])
        {
            [self.PendingOrders removeLastObject];  //检票成功，从未出行订单中删除
            result = YES;break;
        }
        else result = NO;   //检票失败
    }

    return result;
}
@end
