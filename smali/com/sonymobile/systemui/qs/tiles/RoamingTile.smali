.class public Lcom/sonymobile/systemui/qs/tiles/RoamingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RoamingTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 27
    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "data_roaming0"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;-><init>(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/tiles/RoamingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 4

    .prologue
    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    :goto_0
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 54
    return-void

    .line 50
    :cond_0
    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    .line 59
    .local v2, "value":I
    if-eqz v2, :cond_0

    move v0, v3

    .line 60
    .local v0, "enabled":Z
    :goto_0
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 61
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 62
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0100

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_1

    const v1, 0x7f0200a1

    .line 65
    .local v1, "iconId":I
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 66
    return-void

    .line 59
    .end local v0    # "enabled":Z
    .end local v1    # "iconId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x7f0200a0

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 70
    return-void
.end method
