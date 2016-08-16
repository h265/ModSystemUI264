.class public Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;
.super Ljava/lang/Object;
.source "SomcKeepScreenOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;
    }
.end annotation


# instance fields
.field private final mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

.field private final mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/SomcUserActivityPoker;)V
    .locals 1
    .param p1, "userActivityPoker"    # Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    .line 52
    new-instance v0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;-><init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->handleKeepScreenOnMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleKeepScreenOnMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/SomcUserActivityPoker;->poke()V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIfMotionEventShouldKeepScreenOn(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x3e9

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 67
    .local v0, "hasMessage":Z
    if-nez v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    .end local v0    # "hasMessage":Z
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
