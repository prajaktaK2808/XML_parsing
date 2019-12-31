//
//  ViewController.h
//  IOS_Day28_XML_Parsing
//
//  Created by Felix ITs 01 on 10/04/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
//define URL  "http://www.w3schools.com/xml/plant_catalog.xml";

@interface ViewController : UIViewController<NSXMLParserDelegate>
@property NSMutableString *charString;
@property NSMutableArray *plantArray;
@property NSXMLParser *saxParser;

@end



