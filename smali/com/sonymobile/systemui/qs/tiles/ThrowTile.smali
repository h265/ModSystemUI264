.class public Lcom/sonymobile/systemui/qs/tiles/ThrowTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ThrowTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/ThrowTile$1;,
        Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 24
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;Lcom/sonymobile/systemui/qs/tiles/ThrowTile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    .line 30
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getThrowController()Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->refreshState()V

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->setThrowEnabled(Z)Z

    .line 43
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 44
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->isThrowEnabled()Z

    move-result v0

    .line 49
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 50
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 51
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_1

    const v1, 0x7f0200c3

    .line 54
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 55
    return-void

    .line 49
    .end local v1    # "iconId":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :cond_1
    const v1, 0x7f0200c2

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
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mListening:Z

    .line 60
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->registerThrowBroadcast()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController;->unregisterThrowBroadcast()V

    goto :goto_0
.end method
