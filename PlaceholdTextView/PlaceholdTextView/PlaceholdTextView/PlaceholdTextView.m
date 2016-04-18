//
//  PlaceholdTextView.m
//  PlaceholdTextView
//
//  Created by 益平廖 on 16/4/18.
//  Copyright © 2016年 Liaoyp. All rights reserved.
//

#import "PlaceholdTextView.h"

#define FONT(s) [UIFont systemFontOfSize:s]

@implementation PlaceholdTextView

-(void)refreshPlaceholder
{
    if([[self text] length])
    {
        [_placeHolderLabel setAlpha:0];
    }
    else
    {
        [_placeHolderLabel setAlpha:1];
    }
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    [self refreshPlaceholder];
}

-(void)setFont:(UIFont *)font
{
    [super setFont:font];
    if (_placeHolderLabel) {
        _placeHolderLabel.font = self.font;
    }
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    if (_placeholderColor) {
        _placeHolderLabel.textColor = placeholderColor;
    }
}

-(void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    if ( _placeHolderLabel == nil )
    {
        _placeHolderLabel = [[UILabel alloc] init];
        _placeHolderLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _placeHolderLabel.numberOfLines = 2;
        _placeHolderLabel.textAlignment = NSTextAlignmentLeft;
        _placeHolderLabel.font = FONT(14.0);
        _placeHolderLabel.backgroundColor = [UIColor clearColor];
        _placeHolderLabel.textColor = [UIColor colorWithRed:191 / 255.0 green:191 / 255.0 blue:198 / 255.0 alpha:1];
        _placeHolderLabel.alpha = 0;
        [self addSubview:_placeHolderLabel];
        
        [_placeHolderLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_placeHolderLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0   constant:3 + self.textContainerInset.left]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_placeHolderLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0   constant:self.textContainerInset.right]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_placeHolderLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0   constant: self.textContainerInset.top]];
    }
    if (_placeholderColor) {
        _placeHolderLabel.textColor = _placeholderColor;
    }
    _placeHolderLabel.text = self.placeholder;
    [self refreshPlaceholder];
}

-(id<UITextViewDelegate>)delegate
{
    [self refreshPlaceholder];
    return [super delegate];
}

@end
