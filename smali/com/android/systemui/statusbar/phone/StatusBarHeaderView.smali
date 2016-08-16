.class public Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/WeatherController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;,
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# static fields
.field private static final ULTRA_STAMINA_ENABLED:Landroid/net/Uri;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mCaptureValues:Z

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateCollapsed:Landroid/widget/TextView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;

.field private mShowEmergencyCallsOnly:Z

.field private mShowWeather:Z

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSignalClusterDetached:Z

.field private mSomcQuickSettings:Landroid/view/View;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTaskManagerButton:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;

.field private mUsmEnabled:Z

.field private mWeatherContainer:Landroid/view/ViewGroup;

.field private mWeatherController:Lcom/android/systemui/statusbar/policy/WeatherController;

.field private mWeatherLine1:Landroid/widget/TextView;

.field private mWeatherLine2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->ULTRA_STAMINA_ENABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUsmEnabled:Z

    .line 829
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUsmEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    return-void
.end method

.method static synthetic access$2010(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowWeather:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowWeather:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->checkUsmEnabled()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 695
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 699
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 701
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 702
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5
    .param p1, "values"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->weatherY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 737
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->somcQuickSettingsTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->carrierTextAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine1:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine2:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->somcQuickSettingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 758
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 762
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 763
    return-void

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2
.end method

.method private captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 4
    .param p1, "target"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->carrierTextAlpha:F

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    .line 669
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->weatherY:F

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerAlpha:F

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->somcQuickSettingsAlpha:F

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    .line 675
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 679
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerTranslation:F

    .line 683
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->somcQuickSettingsTranslation:F

    .line 686
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    .line 687
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_2
    iput v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    .line 688
    return-void

    .line 652
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    goto/16 :goto_0

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    goto :goto_1

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_2

    .line 679
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_3

    .line 683
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_4
.end method

.method private checkUsmEnabled()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 931
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/content/ContentResolver;)V

    .line 932
    .local v0, "queryHandler":Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;
    const/4 v1, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->ULTRA_STAMINA_ENABLED:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method private getAlphaForVisibility(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 310
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 312
    return-void
.end method

.method private reattachSignalCluster()V
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 433
    return-void
.end method

.method private requestCaptureValues()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 288
    return-void
.end method

.method private setClipping(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    float-to-int v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V

    .line 571
    return-void
.end method

.method private startBatteryActivity()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.intent.action.POWER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 615
    return-void
.end method

.method private startForecastActivity()V
    .locals 3

    .prologue
    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    sget-object v1, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 974
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 975
    return-void
.end method

.method private startSettingsActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 601
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUsmEnabled:Z

    if-eqz v1, :cond_0

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.usm"

    const-string v2, "com.sonymobile.usm.settings.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-interface {v1, v0, v4}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 611
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private updateAmPmTranslation()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 482
    .local v0, "rtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScaleX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 483
    return-void

    .line 481
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    .restart local v0    # "rtl":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 462
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private updateClickTargets()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 512
    return-void

    .line 511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 276
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 277
    .local v2, "padding":I
    const v4, 0x7f0e0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 279
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 281
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 283
    return-void
.end method

.method private updateClockLp()V
    .locals 3

    .prologue
    .line 515
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 518
    .local v1, "marginBottom":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 519
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_0

    .line 520
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :cond_0
    return-void

    .line 515
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "marginBottom":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    goto :goto_0
.end method

.method private updateClockScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 472
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 478
    return-void

    .line 472
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private updateHeights()V
    .locals 3

    .prologue
    .line 367
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 368
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 369
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 370
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :cond_0
    return-void

    .line 367
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->observe()V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherController:Lcom/android/systemui/statusbar/policy/WeatherController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/WeatherController;->addCallback(Lcom/android/systemui/statusbar/policy/WeatherController$Callback;)V

    .line 460
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherController:Lcom/android/systemui/statusbar/policy/WeatherController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/WeatherController;->removeCallback(Lcom/android/systemui/statusbar/policy/WeatherController$Callback;)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->unobserve()V

    goto :goto_0
.end method

.method private updateMultiUserSwitch()V
    .locals 4

    .prologue
    .line 528
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_2

    .line 529
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 530
    .local v1, "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 535
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 536
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 537
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 538
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 539
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :cond_1
    return-void

    .line 532
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "marginEnd":I
    .end local v2    # "width":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 533
    .restart local v1    # "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method private updateSignalClusterDetachment()V
    .locals 3

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 420
    .local v0, "detached":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eq v0, v1, :cond_0

    .line 421
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 427
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    .line 428
    return-void

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 439
    .local v0, "baseId":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_3

    move v2, v0

    .line 442
    .local v2, "rule":I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v4

    if-eq v2, v3, :cond_1

    .line 443
    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :cond_1
    return-void

    .line 437
    .end local v0    # "baseId":I
    .end local v2    # "rule":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 439
    .restart local v0    # "baseId":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getId()I

    move-result v2

    goto :goto_1
.end method

.method private updateVisibilities()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 376
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 382
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-eqz v2, :cond_b

    move v2, v3

    :goto_6
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "isLocked":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    move v1, v6

    .line 391
    :cond_1
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "device_policy"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 393
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_d

    if-nez v1, :cond_d

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUsmEnabled:Z

    if-nez v2, :cond_d

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v0, v2, v7}, Landroid/app/admin/DevicePolicyManager;->isSettingsDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :goto_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUsmEnabled:Z

    if-eqz v2, :cond_e

    .line 401
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setEnabled(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 408
    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSignalClusterDetachment()V

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v4, :cond_f

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowWeather:Z

    if-eqz v4, :cond_10

    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v2, :cond_4

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryLevelVisible(Landroid/view/View;Z)V

    .line 416
    :cond_4
    return-void

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "isLocked":Z
    :cond_5
    move v2, v4

    .line 376
    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 377
    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 378
    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 379
    goto/16 :goto_3

    :cond_9
    move v2, v5

    .line 380
    goto/16 :goto_4

    :cond_a
    move v2, v5

    .line 382
    goto/16 :goto_5

    :cond_b
    move v2, v4

    .line 384
    goto/16 :goto_6

    .restart local v1    # "isLocked":Z
    :cond_c
    move v1, v3

    .line 387
    goto :goto_7

    .line 397
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 404
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setEnabled(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    goto :goto_9

    :cond_f
    move v3, v5

    .line 412
    goto :goto_a

    :cond_10
    move v3, v5

    .line 413
    goto :goto_b
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 649
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    return v0
.end method

.method isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d016a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 584
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/systemui/qs/QSEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v2, :cond_3

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    goto :goto_0

    .line 592
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_4

    .line 593
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 594
    .local v1, "showIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_4




    .line 595
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;




    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startForecastActivity()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0e009e

    const v4, 0x7f0e009d

    const v3, 0x7f0e004a

    const v2, 0x7f0e00a0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0e00b5

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x7f0e009f

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 259
    const v0, 0x1020016

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 260
    const v0, 0x1020017

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 262
    const v0, 0x7f10019e

    invoke-static {p0, v0, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x10403b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 272
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 159
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 160
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f10011e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 163
    const v0, 0x7f100092

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    .line 164
    const v0, 0x7f10019c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f100015

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 167
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 168
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f10011f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f100120

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    .line 172
    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSomcQuickSettings:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 179
    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 183
    const v0, 0x7f100122

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f1000a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->isMSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 193
    :goto_0
    const v0, 0x7f10012c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f1001df

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f1001e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine1:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f1001e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine2:Landroid/widget/TextView;

    .line 198
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 204
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->ULTRA_STAMINA_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->checkUsmEnabled()V

    .line 211
    return-void

    .line 191
    :cond_1
    const v0, 0x7f1001c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 231
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    .line 238
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 239
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 248
    :goto_1
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    goto :goto_1
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 504
    return-void

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onWeatherChanged(Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    .prologue
    .line 953
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02d0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 316
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 320
    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 321
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 344
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 345
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 349
    :cond_0
    return-void

    .line 344
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpansion(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 544
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    .line 545
    const/4 p1, 0x0

    .line 547
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    .line 548
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 549
    .local v0, "height":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 550
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    .line 552
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 553
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    .line 555
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    .line 556
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 557
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    goto :goto_0
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 325
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2
    .param p1, "qsp"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 623
    return-void
.end method

.method public setQSTileHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "qsth"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTileHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 627
    return-void
.end method

.method public setShowEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 635
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 636
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 637
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    .line 638
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 643
    :cond_0
    return-void

    .line 635
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 574
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 580
    return-void
.end method

.method public setWeatherController(Lcom/android/systemui/statusbar/policy/WeatherController;)V
    .locals 0
    .param p1, "weatherController"    # Lcom/android/systemui/statusbar/policy/WeatherController;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mWeatherController:Lcom/android/systemui/statusbar/policy/WeatherController;

    .line 335
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSystemIconsLayoutParams()V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClickTargets()V

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateMultiUserSwitch()V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockLp()V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 364
    return-void
.end method
