.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDataActivity:Landroid/widget/ImageView;

.field private mDataActivityId:I

.field private mDataGroup:Landroid/view/ViewGroup;

.field private mDataVisible:Z

.field private final mEnableMobileComboIcon:Z

.field mEthernet:Landroid/widget/ImageView;

.field private mEthernetId:I

.field private mEthernetVisible:Z

.field private mExcludeWifiGroup:Z

.field private mIsAirplaneMode:Z

.field private mIsMobileTypeIconWide:Z

.field private mLayoutDirection:I

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:Landroid/view/ViewGroup;

.field private mMobileDataVoiceVisible:Z

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingIconId:I

.field private mMobileSignalData:Landroid/widget/ImageView;

.field private mMobileSignalDataId:I

.field private mMobileSignalVoice:Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private mNoSimIconId:I

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mRoaming:Z

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mShowRATIconAlways:Z

.field private mShowTwoBars:[I

.field private mStyle:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mVolteSlot:Landroid/widget/ImageView;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 58
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 59
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 61
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 69
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetId:I

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 71
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 73
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 74
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 80
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 82
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 88
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 89
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    .line 95
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 99
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 107
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLayoutDirection:I

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExcludeWifiGroup:Z

    .line 121
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLayoutDirection:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowTwoBars:[I

    .line 144
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowRATIconAlways:Z

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    .line 154
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 164
    return-void

    :cond_0
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateSignalClusterExclusionSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method private apply()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 443
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-nez v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v5, "SignalClusterView"

    const-string v6, "vpn: %s"

    new-array v7, v9, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v2, :cond_9

    const-string v2, "VISIBLE"

    :goto_2
    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_a

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExcludeWifiGroup:Z

    if-nez v2, :cond_c

    .line 456
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 459
    .local v1, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLayoutDirection:I

    if-nez v2, :cond_b

    .line 460
    const v2, 0x7f0e00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 468
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 477
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_5
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v5, "SignalClusterView"

    const-string v6, "wifi: %s sig=%d act=%d"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_d

    const-string v2, "VISIBLE"

    :goto_6
    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v2, :cond_e

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateMobile()V

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateCdma()V

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateData()V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateDataVoice()V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 497
    :goto_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v2, :cond_f

    .line 498
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    :goto_8
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v5, "SignalClusterView"

    const-string v6, "mobile: %s sig=%d act=%d typ=%d"

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v2, :cond_10

    const-string v2, "VISIBLE"

    :goto_9
    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    const/4 v2, 0x3

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowRATIconAlways:Z

    if-eqz v2, :cond_11

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    :goto_a
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-eqz v2, :cond_5

    .line 521
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    if-eqz v2, :cond_16

    .line 522
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    :cond_5
    :goto_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    if-nez v2, :cond_0

    .line 531
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    if-eqz v2, :cond_17

    :cond_7
    move v2, v3

    :goto_c
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataConnected()Z

    move-result v5

    if-ne v5, v9, :cond_18

    :goto_d
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v2, v4

    .line 445
    goto/16 :goto_1

    .line 446
    :cond_9
    const-string v2, "GONE"

    goto/16 :goto_2

    .line 452
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 463
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_b
    const v2, 0x7f0e00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 465
    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto/16 :goto_4

    .line 474
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 477
    :cond_d
    const-string v2, "GONE"

    goto/16 :goto_6

    .line 490
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 493
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 501
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 504
    :cond_10
    const-string v2, "GONE"

    goto/16 :goto_9

    .line 512
    :cond_11
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-nez v2, :cond_15

    .line 513
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataConnected()Z

    move-result v2

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    if-eqz v2, :cond_14

    :cond_12
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    if-nez v2, :cond_13

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v2, :cond_14

    :cond_13
    move v2, v3

    :goto_e
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_14
    move v2, v4

    goto :goto_e

    .line 517
    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 525
    :cond_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_17
    move v2, v4

    .line 531
    goto/16 :goto_c

    :cond_18
    move v3, v4

    .line 533
    goto/16 :goto_d
.end method

.method private convertMobileStrengthIcon(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 699
    move v0, p1

    .line 700
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 764
    :goto_0
    return v0

    .line 702
    :sswitch_0
    const v0, 0x7f020257

    .line 703
    goto :goto_0

    .line 705
    :sswitch_1
    const v0, 0x7f02025f

    .line 706
    goto :goto_0

    .line 708
    :sswitch_2
    const v0, 0x7f020295

    .line 709
    goto :goto_0

    .line 711
    :sswitch_3
    const v0, 0x7f02029d

    .line 712
    goto :goto_0

    .line 714
    :sswitch_4
    const v0, 0x7f0202d7

    .line 715
    goto :goto_0

    .line 717
    :sswitch_5
    const v0, 0x7f0202df

    .line 718
    goto :goto_0

    .line 720
    :sswitch_6
    const v0, 0x7f020319

    .line 721
    goto :goto_0

    .line 723
    :sswitch_7
    const v0, 0x7f020321

    .line 724
    goto :goto_0

    .line 726
    :sswitch_8
    const v0, 0x7f02035b

    .line 727
    goto :goto_0

    .line 729
    :sswitch_9
    const v0, 0x7f020363

    .line 730
    goto :goto_0

    .line 732
    :sswitch_a
    const v0, 0x7f020258

    .line 733
    goto :goto_0

    .line 735
    :sswitch_b
    const v0, 0x7f020260

    .line 736
    goto :goto_0

    .line 738
    :sswitch_c
    const v0, 0x7f020296

    .line 739
    goto :goto_0

    .line 741
    :sswitch_d
    const v0, 0x7f02029e

    .line 742
    goto :goto_0

    .line 744
    :sswitch_e
    const v0, 0x7f0202d8

    .line 745
    goto :goto_0

    .line 747
    :sswitch_f
    const v0, 0x7f0202e0

    .line 748
    goto :goto_0

    .line 750
    :sswitch_10
    const v0, 0x7f02031a

    .line 751
    goto :goto_0

    .line 753
    :sswitch_11
    const v0, 0x7f020322

    .line 754
    goto :goto_0

    .line 756
    :sswitch_12
    const v0, 0x7f02035c

    .line 757
    goto :goto_0

    .line 759
    :sswitch_13
    const v0, 0x7f020364

    .line 760
    goto :goto_0

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020256 -> :sswitch_0
        0x7f02025b -> :sswitch_a
        0x7f02025e -> :sswitch_1
        0x7f020263 -> :sswitch_b
        0x7f020294 -> :sswitch_2
        0x7f020299 -> :sswitch_c
        0x7f02029c -> :sswitch_3
        0x7f0202a1 -> :sswitch_d
        0x7f0202d6 -> :sswitch_4
        0x7f0202db -> :sswitch_e
        0x7f0202de -> :sswitch_5
        0x7f0202e3 -> :sswitch_f
        0x7f020318 -> :sswitch_6
        0x7f02031d -> :sswitch_10
        0x7f020320 -> :sswitch_7
        0x7f020325 -> :sswitch_11
        0x7f02035a -> :sswitch_8
        0x7f02035f -> :sswitch_12
        0x7f020362 -> :sswitch_9
        0x7f020367 -> :sswitch_13
    .end sparse-switch
.end method

.method private getCdma2gId(I)I
    .locals 3
    .param p1, "icon"    # I

    .prologue
    .line 768
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-nez v2, :cond_0

    .line 769
    const/4 v1, 0x0

    .line 792
    :goto_0
    return v1

    .line 771
    :cond_0
    const/4 v1, 0x0

    .line 772
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getGsmSignalLevel()I

    move-result v0

    .line 773
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 775
    :pswitch_0
    const v1, 0x7f020250

    .line 776
    goto :goto_0

    .line 778
    :pswitch_1
    const v1, 0x7f02028e

    .line 779
    goto :goto_0

    .line 781
    :pswitch_2
    const v1, 0x7f0202d0

    .line 782
    goto :goto_0

    .line 784
    :pswitch_3
    const v1, 0x7f020312

    .line 785
    goto :goto_0

    .line 787
    :pswitch_4
    const v1, 0x7f020354

    .line 788
    goto :goto_0

    .line 773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCdmaRoamId(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 851
    :goto_0
    return v0

    .line 801
    :sswitch_0
    const v0, 0x7f020265

    .line 802
    goto :goto_0

    .line 806
    :sswitch_1
    const v0, 0x7f0202a3

    .line 807
    goto :goto_0

    .line 811
    :sswitch_2
    const v0, 0x7f0202e5

    .line 812
    goto :goto_0

    .line 816
    :sswitch_3
    const v0, 0x7f020327

    .line 817
    goto :goto_0

    .line 821
    :sswitch_4
    const v0, 0x7f020369

    .line 822
    goto :goto_0

    .line 826
    :sswitch_5
    const v0, 0x7f020264

    .line 827
    goto :goto_0

    .line 831
    :sswitch_6
    const v0, 0x7f0202a2

    .line 832
    goto :goto_0

    .line 836
    :sswitch_7
    const v0, 0x7f0202e4

    .line 837
    goto :goto_0

    .line 841
    :sswitch_8
    const v0, 0x7f020326

    .line 842
    goto :goto_0

    .line 846
    :sswitch_9
    const v0, 0x7f020368

    .line 847
    goto :goto_0

    .line 797
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020253 -> :sswitch_5
        0x7f020254 -> :sswitch_0
        0x7f020259 -> :sswitch_5
        0x7f02025a -> :sswitch_0
        0x7f020261 -> :sswitch_5
        0x7f020262 -> :sswitch_0
        0x7f020291 -> :sswitch_6
        0x7f020292 -> :sswitch_1
        0x7f020297 -> :sswitch_6
        0x7f020298 -> :sswitch_1
        0x7f02029f -> :sswitch_6
        0x7f0202a0 -> :sswitch_1
        0x7f0202d3 -> :sswitch_7
        0x7f0202d4 -> :sswitch_2
        0x7f0202d9 -> :sswitch_7
        0x7f0202da -> :sswitch_2
        0x7f0202e1 -> :sswitch_7
        0x7f0202e2 -> :sswitch_2
        0x7f020315 -> :sswitch_8
        0x7f020316 -> :sswitch_3
        0x7f02031b -> :sswitch_8
        0x7f02031c -> :sswitch_3
        0x7f020323 -> :sswitch_8
        0x7f020324 -> :sswitch_3
        0x7f020357 -> :sswitch_9
        0x7f020358 -> :sswitch_4
        0x7f02035d -> :sswitch_9
        0x7f02035e -> :sswitch_4
        0x7f020365 -> :sswitch_9
        0x7f020366 -> :sswitch_4
    .end sparse-switch
.end method

.method private getMobileVoiceId()I
    .locals 3

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-nez v2, :cond_0

    .line 672
    const/4 v1, 0x0

    .line 695
    :goto_0
    return v1

    .line 674
    :cond_0
    const/4 v1, 0x0

    .line 675
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getGsmSignalLevel()I

    move-result v0

    .line 676
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 678
    :pswitch_0
    const v1, 0x7f020279

    .line 679
    goto :goto_0

    .line 681
    :pswitch_1
    const v1, 0x7f0202b7

    .line 682
    goto :goto_0

    .line 684
    :pswitch_2
    const v1, 0x7f0202f9

    .line 685
    goto :goto_0

    .line 687
    :pswitch_3
    const v1, 0x7f02033b

    .line 688
    goto :goto_0

    .line 690
    :pswitch_4
    const v1, 0x7f02037d

    .line 691
    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isCdmaDataOnlyMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 607
    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-eq v4, v3, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v2

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v4, :cond_0

    .line 613
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 614
    .local v0, "dataType":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v1

    .line 615
    .local v1, "voiceType":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    :cond_2
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 2

    .prologue
    .line 667
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v1, 0x7f0201bc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private show1xOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 645
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 652
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 653
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 654
    .local v1, "ret":Z
    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 656
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showBothDataAndVoice()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 583
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowTwoBars:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 597
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 598
    .local v2, "voiceType":I
    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 601
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDataAndVoice()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 622
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 629
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 630
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 631
    .local v1, "ret":Z
    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 639
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 662
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 547
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 555
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    :goto_1
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData()V
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice()V
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    :cond_0
    return-void
.end method

.method private updateSignalClusterExclusionSettings()V
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "settingsFromDB":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExcludeWifiGroup:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 201
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEnableMobileComboIcon:Z

    if-eqz v0, :cond_0

    .line 206
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 207
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 217
    :goto_0
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f100176

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteSlot:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 221
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 222
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 226
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 227
    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 228
    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 231
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 232
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 233
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "excluded_system_bar_icons"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateSignalClusterExclusionSettings()V

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 241
    return-void

    .line 211
    :cond_0
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 212
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 214
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 247
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 248
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 249
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 250
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 251
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 252
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 253
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 254
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 255
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 256
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteSlot:Landroid/widget/ImageView;

    .line 257
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 258
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 259
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 260
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 261
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 262
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 263
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 264
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 266
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 267
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 268
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 269
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 271
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 272
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 195
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLayoutDirection:I

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 434
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$3;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method public setEthernetIndicator(ZI)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "icon"    # I

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 289
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetId:I

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 292
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 388
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 391
    return-void
.end method

.method public setMobileDataIndicators(ZIIIILjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "roamIcon"    # I
    .param p6, "contentDescription"    # Ljava/lang/String;
    .param p7, "typeContentDescription"    # Ljava/lang/String;
    .param p8, "roaming"    # Z
    .param p9, "isTypeIconWide"    # Z
    .param p10, "noSimIcon"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 311
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 312
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 313
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 314
    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    .line 315
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 316
    iput-object p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 317
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    .line 318
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    .line 319
    iput p10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 323
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    .line 330
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_7

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 334
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 336
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 337
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getCdma2gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isCdmaDataOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 341
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 375
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 376
    return-void

    .line 325
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 326
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 327
    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 343
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 346
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 351
    :cond_5
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 354
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 357
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    goto :goto_1

    .line 359
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showBothDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileVoiceId()I

    move-result v0

    if-eqz v0, :cond_8

    .line 361
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 362
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 363
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileVoiceId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    goto :goto_1

    .line 366
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 367
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1

    .line 370
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 371
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 372
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 181
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 188
    return-void
.end method

.method public setVolteIndicator(Z)V
    .locals 2
    .param p1, "volteIconVisible"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 381
    .local v0, "vis":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteSlot:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteSlot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 380
    .end local v0    # "vis":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 382
    .restart local v0    # "vis":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteSlot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 298
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 299
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 300
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 303
    return-void
.end method
