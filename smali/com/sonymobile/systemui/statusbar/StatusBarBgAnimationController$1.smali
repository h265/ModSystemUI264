.class Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarBgAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 44
    const-string v0, "com.sonymobile.systemui.ACTION_ONGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    const-string v0, "show"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$002(Z)Z

    .line 47
    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z
    invoke-static {}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z
    invoke-static {}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$200(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$200(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    const/4 v0, 0x1

    # setter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$102(Z)Z

    .line 63
    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z
    invoke-static {}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$200(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    # setter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$102(Z)Z

    .line 71
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$200(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    # getter for: Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->access$300(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_0
.end method
