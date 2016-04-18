//
//  PlaceholdTextView.h
//  PlaceholdTextView
//
//  Created by 益平廖 on 16/4/18.
//  Copyright © 2016年 Liaoyp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceholdTextView : UITextView

@property(nonatomic,copy) NSString *placeholder;
@property(nonatomic,strong) UIColor *placeholderColor;
@property(nonatomic,strong,readonly) UILabel *placeHolderLabel;


@end
