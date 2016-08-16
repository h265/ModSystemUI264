.class public Lcom/sonymobile/systemui/qs/tiles/TetheringTile;
.super Lcom/android/systemui/qs/QSTile;
.source "TetheringTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/TetheringTile$1;,
        Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

.field private mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 37
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;Lcom/sonymobile/systemui/qs/tiles/TetheringTile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    .line 44
    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 49
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getTetheringController()Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    .line 50
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V

    return-void
.end method

.method private collapseOnNewDialog()V
    .locals 4

    .prologue
    .line 63
    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 64
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public static launchTetherSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "tetheringIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private setEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0025

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 81
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 84
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_2

    .line 85
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->launchTetherSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v3, :cond_3

    .line 90
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->collapseOnNewDialog()V

    .line 94
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 99
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 101
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public handleClick()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->setEnabled(Z)V

    .line 73
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->isTetheringEnabled()Z

    move-result v0

    .line 119
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 120
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 121
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d012c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_1

    const v1, 0x7f020093

    .line 123
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 125
    return-void

    .line 119
    .end local v1    # "iconId":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_1
    const v1, 0x7f020092

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mListening:Z

    .line 130
    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->registerTetheringBroadcast()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->unregisterTetheringBroadcast()V

    goto :goto_0
.end method
