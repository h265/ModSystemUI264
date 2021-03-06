.class public Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DataTrafficTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$1;,
        Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

.field private mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mListening:Z

    .line 23
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    .line 29
    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 36
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getDataTrafficController()Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    .line 37
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->refreshState()V

    return-void
.end method

.method private collapseOnNewDialog()V
    .locals 4

    .prologue
    .line 54
    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 55
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 57
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->isDataTrafficEnabled()Z

    move-result v0

    .line 48
    .local v0, "dataEnabled":Z
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->collapseOnNewDialog()V

    .line 49
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->isDataTrafficEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->setDataTrafficEnabled(Z)Z

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v3}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->isDataTrafficEnabled()Z

    move-result v2

    .line 64
    .local v2, "value":Z
    move v0, v2

    .line 65
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v3}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->isAvailiable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 66
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 67
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_1

    const v1, 0x7f02008f

    .line 70
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 71
    return-void

    .line 65
    .end local v1    # "iconId":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 68
    :cond_1
    const v1, 0x7f02008e

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mListening:Z

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->registerDataTrafficBroadcast()V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V

    .line 82
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;->unregisterDataTrafficBroadcast()V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
