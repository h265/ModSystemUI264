.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextClock;

.field private mClockPluginView:Landroid/view/ViewGroup;

.field private mClockView:Landroid/widget/TextClock;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mDateView:Landroid/widget/TextClock;

.field private mDigitalClockContainer:Landroid/view/ViewGroup;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

.field private mLinearClockLayout:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->stopClockTicking()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->loadClockForUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardStatusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v2, ""

    .line 305
    :goto_0
    return-object v2

    .line 301
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "EHm"

    .line 304
    .local v1, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 301
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v1, "Ehma"

    goto :goto_1
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 342
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 343
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 344
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    return-object v0
.end method

.method private isConfigurationChangeDueToThemeChange(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 433
    .local v0, "diff":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    return v1
.end method

.method private isLockscreenClockPluginInflated()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadClockForUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    goto :goto_0
.end method

.method private loadClockPluginView(Z)V
    .locals 6
    .param p1, "forceLoad"    # Z

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 212
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->refreshLoader()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 214
    .local v0, "loadNewClockPlugin":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->loadCurrentClock(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    goto :goto_0

    .line 212
    .end local v0    # "loadNewClockPlugin":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 277
    .local v0, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 281
    return-void

    .line 277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEnableMarquee(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    :cond_1
    return-void
.end method

.method private startClockTicking()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->startClockTicking(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private stopClockTicking()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->stopClockTicking(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private updateAmPmVisibility()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 261
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$integer;->somc_digital_clock_max_ampm_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 269
    .local v0, "maxAmPmChars":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->length()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 270
    .local v1, "visibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    .end local v1    # "visibility":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, -0x2

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public loadClockPluginView()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView(Z)V

    .line 205
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 326
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    .line 327
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_big_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->isConfigurationChangeDueToThemeChange(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView(Z)V

    .line 245
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 333
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->stopClockTicking()V

    .line 334
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 163
    sget v2, Lcom/android/keyguard/R$id;->alarm_status:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 164
    sget v2, Lcom/android/keyguard/R$id;->date_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 165
    sget v2, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 168
    sget v2, Lcom/android/keyguard/R$id;->somc_digital_clock_am_pm:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 172
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->owner_info:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 173
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 175
    .local v0, "screenOn":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 177
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 179
    sget v2, Lcom/android/keyguard/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    .line 180
    sget v2, Lcom/android/keyguard/R$id;->somc_keyguard_digital_clock_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 183
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 189
    return-void
.end method

.method refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v5, 0x0

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "alarm":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 295
    .end local v0    # "alarm":Ljava/lang/String;
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 253
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateAmPmVisibility()V

    .line 254
    return-void
.end method
