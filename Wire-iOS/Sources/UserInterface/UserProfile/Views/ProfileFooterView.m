// 
// Wire
// Copyright (C) 2016 Wire Swiss GmbH
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
// 


#import "ProfileFooterView.h"

#import "IconButton.h"
#import "Wire-Swift.h"



@implementation ProfileFooterView

- (id)init
{
    return [self initWithFrame:CGRectZero];
}

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self createViews];
        [self setupConstraints];
    }
    return self;
}

- (void)createViews
{
    self.leftButton = [[IconButton alloc] initWithStyle:IconButtonStyleDefault];
    self.leftButton.accessibilityIdentifier = @"left_button";
    [self.leftButton setTitleColor:[UIColor wr_colorFromColorScheme:ColorSchemeColorTextForeground] forState:UIControlStateNormal];
    [self.leftButton setTitleColor:[UIColor wr_colorFromColorScheme:ColorSchemeColorTextDimmed] forState:UIControlStateHighlighted];
    [self.leftButton setTitleImageSpacing:16];
    self.leftButton.titleLabel.font = UIFont.smallLightFont;
    [self addSubview:self.leftButton];
    
    self.rightButton = [[IconButton alloc] initWithStyle:IconButtonStyleCircular];
    self.rightButton.accessibilityIdentifier = @"right_button";
    [self addSubview:self.rightButton];
}

- (void)setIconTypeForLeftButton:(ZetaIconType)iconType
{
    self.leftButton.hidden = (iconType == ZetaIconTypeNone);
    if (iconType != ZetaIconTypeNone) {
        [self setIconType:iconType forButton:self.leftButton];
    }
}

- (void)setIconTypeForRightButton:(ZetaIconType)iconType
{
    self.rightButton.hidden = (iconType == ZetaIconTypeNone);
    if (iconType != ZetaIconTypeNone) {
        [self setIconType:iconType forButton:self.rightButton];
    }
}

- (void)setIconType:(ZetaIconType)iconType forButton:(IconButton *)button
{
    [button setIcon:iconType withSize:ZetaIconSizeTiny forState:UIControlStateNormal];
}

@end
