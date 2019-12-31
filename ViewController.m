//
//  ViewController.m
//  IOS_Day28_XML_Parsing
//
//  Created by Felix ITs 01 on 10/04/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str=@"http://www.w3schools.com/xml/plant_catalog.xml";
    self.plantArray=[[NSMutableArray alloc]init];
    NSURL *url=[NSURL URLWithString:str];
    self.saxParser=[[NSXMLParser alloc]initWithContentsOfURL:url];
    self.saxParser.delegate=self;
    [self.saxParser parse];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    self.charString=[[NSMutableString alloc]init];
    NSLog(@"%@",elementName);
    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [self.charString appendString:string];
    NSLog(@"%@",string);
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    [self.plantArray addObject:self.charString];
    NSLog(@"%@",self.plantArray);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
