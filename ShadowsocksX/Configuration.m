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
  
        self.profiles = [[NSMutableArray alloc] initWithCapacity:16];
        for (NSDictionary *_ in dictionary[@"profiles"]) {
            
                [((NSMutableArray *)self.profiles) addObject:[[Profile alloc] initWithJSONDictionary:_]];
            
        }
        
        self.socksPort = (dictionary[@"socksPort"] != nil) ? [dictionary[@"socksPort"] integerValue] : 1080;
        
        self.socksBind = (dictionary[@"socksBind"] != nil) ? [dictionary[@"socksBind"] stringValue] : @"127.0.0.1";
        
        self.pacPort = (dictionary[@"pacPort"] != nil) ? [dictionary[@"pacPort"] integerValue] : 1080;
        
        self.pacBind = (dictionary[@"pacBind"] != nil) ? [dictionary[@"pacBind"] stringValue] : @"127.0.0.1";
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