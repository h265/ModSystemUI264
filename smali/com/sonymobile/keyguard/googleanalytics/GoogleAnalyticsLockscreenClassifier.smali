.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;
.super Ljava/lang/Object;
.source "GoogleAnalyticsLockscreenClassifier.java"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockSettings:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/ILockSettings;)V
    .locals 0
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "lockSettings"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 49
    return-void
.end method

.method private getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 97
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->None:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 80
    :sswitch_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Pattern:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_1
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->PIN:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :sswitch_2
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Password:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_3
    iget-object v0, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->None:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Swipe:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_4
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->SwipeDefault:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getLockSettingsLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 114
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 113
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 59
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getLockSettingsLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 61
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->UnexpectedBiometricWeak:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
