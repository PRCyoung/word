#import <Foundation/Foundation.h>
#import "Person.h"
#import "Passenger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //初始化变量
        NSMutableArray *array1 = [[NSMutableArray alloc] init];
        NSMutableArray *array2 = [[NSMutableArray alloc] init];
        NSDate *departuretime = [NSDate date];
        Address *departureaddress = [Address new];
        Address *destinationaddress = [Address new];
        NSString *TrueID = [NSString new];
        
        //乘客A
        Passenger *passengerA=[Passenger new];
        
        //初始化姓名
        passengerA.name = @"AAA";
        passengerA.Over18 = YES;
        
        //初始化订单
        passengerA.PendingOrders = array1;
        passengerA.HistoryOrders = array2;
        
        //乘客A出行时间，地点
        departuretime = [NSDate date];
        departureaddress.country = @"China";
        departureaddress.province = @"LiaoNing";
        departureaddress.city = @"ShenYang";
        destinationaddress.country = @"China";
        destinationaddress.province = @"AnHui";
        destinationaddress.province = @"HeFei";
                
        //乘客A买票
        BOOL resultA0 = [passengerA BookOrders:departuretime departureaddress:departureaddress destinationaddress:destinationaddress];
         
        
        NSLog(@"%d",resultA0);
        
        Orders *order = [Orders new];
        for (order in passengerA.PendingOrders) {
            NSLog(@"%@",order.OrderID);
            NSLog(@"%@",order.SeatID);
        }
        
        //乘客A检票
        BOOL resultA1 = [passengerA CheckOrders:@"AAA" orderid:@"1234567"];
        NSLog(@"%d",resultA1);
        
        for (order in passengerA.PendingOrders) {
            TrueID = order.OrderID;
            NSLog(@"%@",order.OrderID);
        }
        
        BOOL resultA2 = [passengerA CheckOrders:@"AAA" orderid:TrueID];
        NSLog(@"%d",resultA2);
        
        for (order in passengerA.PendingOrders) {
            NSLog(@"%@",order.OrderID);
        }
        
        
        
        
        
        
    }
    return 0;
}
