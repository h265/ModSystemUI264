.class public Lcom/android/systemui/qs/tiles/NotificationsTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NotificationsTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 115
    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile$1;-><init>(Lcom/android/systemui/qs/tiles/NotificationsTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 144
    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile$2;-><init>(Lcom/android/systemui/qs/tiles/NotificationsTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile$3;-><init>(Lcom/android/systemui/qs/tiles/NotificationsTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 59
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/systemui/qs/tiles/NotificationsTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NotificationsTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NotificationsTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NotificationsTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NotificationsTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NotificationsTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method private getNotificationIconId(II)I
    .locals 3
    .param p1, "zenMode"    # I
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 102
    const v0, 0x7f02009d

    .line 103
    .local v0, "retValue":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 104
    const v0, 0x7f0200d6

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-ne p1, v2, :cond_2

    .line 106
    const v0, 0x7f0200d5

    goto :goto_0

    .line 107
    :cond_2
    if-ne p2, v2, :cond_3

    .line 108
    const v0, 0x7f02009f

    goto :goto_0

    .line 109
    :cond_3
    if-nez p2, :cond_0

    .line 110
    const v0, 0x7f02009e

    goto :goto_0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->showDetail(Z)V

    .line 90
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NotificationsTile;->handleUpdateState(Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->visible:Z

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    .line 97
    iget v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    iget v1, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/NotificationsTile;->getNotificationIconId(II)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->iconId:I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->label:Ljava/lang/String;

    .line 99
    return-void
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->newTileState()Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;

    move-result-object v0

    return-object v0
.end method

.method protected newTileState()Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mListening:Z

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NotificationsTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
