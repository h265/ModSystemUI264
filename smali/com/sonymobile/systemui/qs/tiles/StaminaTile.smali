.class public Lcom/sonymobile/systemui/qs/tiles/StaminaTile;
.super Lcom/android/systemui/qs/QSTile;
.source "StaminaTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/StaminaTile$1;,
        Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;
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
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

.field private mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    .line 22
    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 26
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;Lcom/sonymobile/systemui/qs/tiles/StaminaTile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getStaminaController()Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    .line 33
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->refreshState()V

    return-void
.end method

.method private collapseOnNewDialog()V
    .locals 4

    .prologue
    .line 52
    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    .line 53
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private setEnabled()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->collapseOnNewDialog()V

    .line 48
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->setStaminaEnabled()Z

    .line 49
    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->setEnabled()V

    .line 44
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->isStaminaEnabled()Z

    move-result v0

    .line 62
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 63
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 64
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 65
    if-eqz v0, :cond_1

    const v1, 0x7f0200c1

    .line 66
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 67
    return-void

    .line 62
    .end local v1    # "iconId":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 65
    :cond_1
    const v1, 0x7f0200c0

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mListening:Z

    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 77
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
