//
//  Constants.h
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#ifndef MyOne_Constants_h
#define MyOne_Constants_h

#define LeftDragToRightForRefreshHintText @"右拉刷新..."
#define LeftReleaseToRefreshHintText      @"松开刷新数据..."
#define LeftReleaseIsRefreshingHintText      @"正在载入..."

#define HUD_DELAY 1.5

#define BadNetwork   @"Bad Net Status"
#define IsLatestData @"已是最新数据"

#define REQUEST_SUCCESS @"SUCCESS"

#define DefaultAnimationDuration  0.2

#define WebViewTag 1
#define TopViewTag 1
#define TopViewTimeLabelTag  11
#define BottomViewTag        20

#define NightNavigationBarColor [UIColor colorWithRed:32 / 255.0 green:32 / 255.0 blue:32 / 255.0 alpha:1] // #202020
#define DawnNavigationBarColor [UIColor colorWithRed:236 / 255.0 green:236 / 255.0 blue:236 / 255.0 alpha:1] // #ECECEC

#define WebViewBGColor [UIColor whiteColor] // [UIColor colorWithRed:249 / 255.0 green:249 / 255.0 blue:249 / 255.0 alpha:1]
#define VOLTextColor [UIColor colorWithRed:85 / 255.0 green:85 / 255.0 blue:85 / 255.0 alpha:1] // #555555
#define DateTextColor [UIColor colorWithRed:85 / 255.0 green:85 / 255.0 blue:85 / 255.0 alpha:1] // #555555
#define PraiseBtnTextColor [UIColor colorWithRed:80 / 255.0 green:80 / 255.0 blue:80 / 255.0 alpha:1] // #505050
#define TitleTextColor [UIColor colorWithRed:91 / 255.0 green:91 / 255.0 blue:91 / 255.0 alpha:1] // #5B5B5B

#define NightBGViewColor [UIColor colorWithRed:38 / 255.0 green:38 / 255.0 blue:38 / 255.0 alpha:1] // #262626
#define NightTextColor [UIColor colorWithRed:135 / 255.0 green:135 / 255.0 blue:135 / 255.0 alpha:1] // #878787
#define NightWebViewBGColorName @"#262626"
#define DawnWebViewBGColorName @"#f0f0f0"
#define NightWebViewTextColorName @"#888888"
#define DawnWebViewTextColorName @"#333333"
#define DawnTextColor [UIColor colorWithRed:90 / 255.0 green:91 / 255.0 blue:92 / 255.0 alpha:1] // #5A5B5C
#define NightHomeTextColor [UIColor colorWithRed:85 / 255.0 green:85 / 255.0 blue:85 / 255.0 alpha:1] // #555555
#define DawnDateViewBGColor [UIColor colorWithRed:249 / 255.0 green:249 / 255.0 blue:249 / 255.0 alpha:1] // #F9F9F9

#define TableViewCellSeparatorDawnColor [UIColor colorWithRed:200 / 255.0 green:199 / 255.0 blue:204 / 255.0 alpha:1]; // #C8C7CC
#define TableViewCellDawnBGColor [UIColor colorWithRed:254 / 255.0 green:254 / 255.0 blue:254 / 255.0 alpha:1]; // #FEFEFE

#define Is_Night_Mode [DKNightVersionManager currentThemeVersion] == DKThemeVersionNight

// 当前 APP 版本
#define CURRENT_APP_VERSION 1.0
// 用户第一次安装 APP 展示引导页的版本
#define LAST_SHOW_GUIDE_APP_VERSION @"Last_Show_Guide_App_Version"
// 用户是否已经登录
#define IS_LOGINED @"User_Login_Status"
// App 主题模式是否开启夜间模式
#define APP_THEME_NIGHT_MODE @"Night_Mode_Is_On"





























#endif
