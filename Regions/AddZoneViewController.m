//
//  AddZoneViewController.m
//  Regions
//
//  Created by Wei-Kun Lu (RD-TW) on 13/5/10.
//  Copyright (c) 2013年 Apple Inc. All rights reserved.
//

#import "AddZoneViewController.h"

@interface AddZoneViewController (){
    NSArray *pickerDatas;
}

@end

@implementation AddZoneViewController

@synthesize pickerView;

-(id)init{
    
    if (self = [super init]) {
        
        pickerDatas = [[NSArray alloc] initWithObjects:@"Home", @"Office", nil];
        
    }
        
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedDoneButton:(id)sender {
    
    [self dismissModalViewControllerAnimated:YES];
    
    [self.callback addZoneCompletion];
}

#pragma mark UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return 2;
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    
    return [pickerDatas objectAtIndex:row];
}

#pragma UIPickerViewDelegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

}


- (void)dealloc {
    [pickerView release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setPickerView:nil];
    [super viewDidUnload];
}
@end
