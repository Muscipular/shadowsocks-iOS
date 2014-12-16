// Generated by json_to_model

#import "Configuration.h"

@implementation Configuration  {

}

- (id)initWithJSONDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (![dictionary isKindOfClass:[NSDictionary class]])
        return nil;

    if (self) {
 
        self.current = (dictionary[@"current"] != [NSNull null]) ? [dictionary[@"current"] integerValue] : 0;
        self.socksPort = (dictionary[@"socksPort"] != [NSNull null]) ? [dictionary[@"socksPort"] integerValue] : 1080;
        self.socksBind = (dictionary[@"socksBind"] != [NSNull null]) ? dictionary[@"socksBind"] : @"127.0.0.1";
        self.pacPort = (dictionary[@"pacPort"] != [NSNull null]) ? [dictionary[@"pacPort"] integerValue] : 1080;
        self.pacBind = (dictionary[@"pacBind"] != [NSNull null]) ? dictionary[@"pacBind"] : @"127.0.0.1";
  
        self.profiles = [[NSMutableArray alloc] initWithCapacity:16];
        for (NSDictionary *_ in dictionary[@"profiles"]) {
            
                [((NSMutableArray *)self.profiles) addObject:[[Profile alloc] initWithJSONDictionary:_]];
            
        }
    }
    return self;
}

- (id)initWithJSONData:(NSData *)data {
    self = [super init];
    if (self) {
        NSError *error = nil;
        id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if (result) {
            self = [self initWithJSONDictionary:result];
        } else {
            return nil;
        }
    }
    return self;
}

- (NSDictionary *)JSONDictionary {

    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

    
    dictionary[@"current"] = @(self.current);
    dictionary[@"pacBind"] = self.pacBind;
    dictionary[@"pacPort"] = @(self.pacPort);
    dictionary[@"socksBind"] = self.socksBind;
    dictionary[@"socksPort"] = @(self.socksPort);
  
    {
        NSMutableArray *_ = [[NSMutableArray alloc] init];
        dictionary[@"profiles"] = _;
        
        for (Profile *__ in self.profiles) {
            
                [_ addObject:[__ JSONDictionary]];
            
        }
        
    }
 
    return dictionary;
}


- (NSData *)JSONData {
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:[self JSONDictionary] options:0 error:&error];
    if (error) {
        @throw error;
    }
    return data;
}


@end