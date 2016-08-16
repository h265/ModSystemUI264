.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    }
.end annotation


# static fields
.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private GB:I

.field private KB:I

.field private MB:I

.field private lastUpdateTime:J

.field private mAttached:Z

.field private mAutoHide:Z

.field private mAutoHideThreshold:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mState:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtSizeMulti:I

.field private txtSizeSingle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    .line 56
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    .line 57
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    .line 58
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    .line 62
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 159
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    .line 245
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0e01a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

    .line 217
    const v3, 0x7f0e01a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 219
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    .line 220
    .local v2, "settingsObserver":Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->observe()V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    return v0
.end method

.method static synthetic access$600(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 259
    .local v1, "network":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 258
    .end local v1    # "network":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 259
    .restart local v1    # "network":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getInterval(I)I
    .locals 2
    .param p0, "intState"    # I

    .prologue
    .line 318
    ushr-int/lit8 v0, p0, 0x10

    .line 319
    .local v0, "intInterval":I
    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fee

    if-gt v0, v1, :cond_0

    .end local v0    # "intInterval":I
    :goto_0
    return v0

    .restart local v0    # "intInterval":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private static isSet(II)Z
    .locals 1
    .param p0, "intState"    # I
    .param p1, "intMask"    # I

    .prologue
    .line 314
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 265
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "network_traffic_autohide"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    .line 269
    const-string v3, "network_traffic_autohide_threshold"

    const/16 v6, 0xa

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    .line 273
    const-string v3, "network_traffic_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    .line 275
    const-string v3, "network_traffic_color"

    const/4 v6, -0x1

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 278
    .local v0, "defaultColor":I
    const-string v3, "network_traffic_color"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 281
    .local v1, "mNetworkTrafficColor":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    if-ne v1, v7, :cond_1

    .line 283
    :cond_0
    move v1, v0

    .line 286
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTextColor(I)V

    .line 288
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    const/16 v3, 0x400

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    .line 293
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    .line 294
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    .line 296
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 297
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 298
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v3, :cond_3

    .line 299
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    .line 301
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    .line 311
    :goto_2
    return-void

    .end local v0    # "defaultColor":I
    .end local v1    # "mNetworkTrafficColor":I
    :cond_4
    move v3, v5

    .line 265
    goto :goto_0

    .line 291
    .restart local v0    # "defaultColor":I
    .restart local v1    # "mNetworkTrafficColor":I
    :cond_5
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    goto :goto_1

    .line 308
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    .line 310
    :cond_7
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateTrafficDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const v0, 0x7f020444

    .line 339
    .local v0, "intTrafficDrawable":I
    :goto_0
    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 340
    return-void

    .line 332
    .end local v0    # "intTrafficDrawable":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    const v0, 0x7f020443

    .restart local v0    # "intTrafficDrawable":I
    goto :goto_0

    .line 334
    .end local v0    # "intTrafficDrawable":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    const v0, 0x7f020442

    .restart local v0    # "intTrafficDrawable":I
    goto :goto_0

    .line 337
    .end local v0    # "intTrafficDrawable":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "intTrafficDrawable":I
    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 227
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    .line 234
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 243
    :cond_0
    return-void
.end method
