.class Lcom/android/systemui/volume/VolumePanel$1;
.super Landroid/app/Dialog;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 422
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeDownPressed()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$700(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->isZen()Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$800(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    .line 426
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeUpPressed()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$900(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V

    .line 429
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 434
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeDownReleased()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$1000(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V

    .line 439
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 436
    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeUpReleased()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$1100(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel$1;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$200(Lcom/android/systemui/volume/VolumePanel;J)V

    .line 415
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
