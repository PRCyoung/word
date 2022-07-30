//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, copy) NSString *OrderID;     // 订单号
@property (nonatomic, copy) NSDate *DepartureTime;     // 出发时间
@property (nonatomic, strong) Address *DepartureAddress;     // 出发地点
@property (nonatomic, strong) Address *DestinationAddress;     // 目的地点
@property (nonatomic, copy) NSString *SeatID;     // 座位号
@end




@interface Passenger : Person

@property (nonatomic, assign) BOOL Over18;     // 是否年满 18 岁
@property (nonatomic, strong) NSMutableArray *HistoryOrders;     // 历史订单 （数组）
@property (nonatomic, strong) NSMutableArray *PendingOrders;     // 未出行订单 （数组）




// Function 方法
// 去订票
- (BOOL)BookOrders:(NSDate *)departuretime departureaddress:(Address *)departureaddress destinationaddress:(Address *)destinationaddress;

// 去检票
- (BOOL)CheckOrders:(NSString *)name orderid:(NSString *)orderid;
@end

NS_ASSUME_NONNULL_END
