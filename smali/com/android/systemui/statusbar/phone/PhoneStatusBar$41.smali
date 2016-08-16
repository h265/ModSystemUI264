.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3594
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3596
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3598
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3599
    const/4 v3, 0x0

    .line 3600
    .local v3, "flags":I
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3601
    .local v4, "reason":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "recentapps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3602
    or-int/lit8 v3, v3, 0x2

    .line 3604
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3647
    .end local v3    # "flags":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 3606
    :cond_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3607
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3608
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3609
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3610
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3611
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3612
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSmallAppCallerString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sony/smallapp/internal/util/WindowUtils;->hideSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3614
    :cond_4
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3615
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3617
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3618
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v6, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3619
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSmallAppCallerString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sony/smallapp/internal/util/WindowUtils;->showSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3621
    :cond_5
    const-string v6, "com.android.systemui.demo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3622
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3623
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 3624
    const-string v6, "command"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3625
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3627
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3628
    :catch_0
    move-exception v5

    .line 3629
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error running demo command, intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3633
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "command":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string v6, "fake_artwork"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3637
    const-string v6, "org.codeaurora.snapcam.action.CLOSE_FLASHLIGHT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3638
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3639
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 3640
    const-string v6, "camera_led"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3641
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/FlashlightController;->killFlashlight()V

    goto/16 :goto_0

    .line 3644
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v6, "com.sonymobile.action.STATUSBAR_EXPAND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3645
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto/16 :goto_0
.end method
