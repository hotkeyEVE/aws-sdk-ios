/*
 * Copyright 2010 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 * 
 *  http://aws.amazon.com/apache2.0
 * 
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "SimpleDBGetAttributesRequest.h"


@implementation SimpleDBGetAttributesRequest

@synthesize domainName;
@synthesize itemName;
@synthesize attributeNames;
@synthesize consistentRead;


-(id)init {
	if ( self = [super init] ) {
        domainName = nil;
        itemName = nil;
        attributeNames = [[NSMutableArray alloc] initWithCapacity:1];
        consistentRead = NO;
    }
    
    return self;
}
    
-(id)initWithDomainName:(NSString*)theDomainName andItemName:(NSString*)theItemName {
	if ( self = [self init] ) {
        self.domainName = theDomainName;
        self.itemName = theItemName;
	}
	
	return self;
}
    


-(NSString*)description {
    NSMutableString* buffer = [[NSMutableString alloc] initWithCapacity:256];
    
	[buffer appendString:@"{"];    
    [buffer appendString:[[[NSString alloc] initWithFormat:@"DomainName: %@,", domainName] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ItemName: %@,", itemName] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AttributeNames: %@,", attributeNames] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ConsistentRead: %d,", consistentRead] autorelease]];
	[buffer appendString:[super description]];
	[buffer appendString:@"}"];

	return [buffer autorelease];
}
    

-(void)dealloc {
            [domainName release];
    [itemName release];
    [attributeNames release];

	[super dealloc];
}		
	

@end
    