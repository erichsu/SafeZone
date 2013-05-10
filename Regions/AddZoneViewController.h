//
//  AddZoneViewController.h
//  Regions
//
//  Created by Wei-Kun Lu (RD-TW) on 13/5/10.
//  Copyright (c) 2013年 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddZoneCallback <NSObject>

-(void)addZoneCompletion;

@end

@interface AddZoneViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>


@property (assign, nonatomic) id<AddZoneCallback> *callback;
@property (retain, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)pressedDoneButton:(id)sender;

@end
