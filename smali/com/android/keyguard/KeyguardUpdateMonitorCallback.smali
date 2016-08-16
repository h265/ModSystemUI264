.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userid"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0
    .param p1, "info"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onFingerprintRecognized(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 105
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 94
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 97
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 98
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 47
    return-void
.end method

.method onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 139
    return-void
.end method

.method public onSubIdUpdated(II)V
    .locals 0
    .param p1, "oldSubId"    # I
    .param p2, "newSubId"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onSubInfoContentChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "sValue"    # Ljava/lang/String;
    .param p4, "iValue"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onTrustInitiatedByUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onUserClockChanged()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 127
    return-void
.end method
