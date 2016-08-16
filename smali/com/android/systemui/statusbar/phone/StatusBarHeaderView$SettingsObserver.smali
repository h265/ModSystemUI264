.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;
.super Lcom/android/systemui/cm/UserContentObserver;
.source "StatusBarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 1025
    invoke-direct {p0, p2}, Lcom/android/systemui/cm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1026
    return-void
.end method


# virtual methods
.method protected observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1030
    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->observe()V

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1033
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "status_bar_show_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->update()V

    .line 1041
    return-void
.end method

.method protected unobserve()V
    .locals 2

    .prologue
    .line 1045
    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->unobserve()V

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1048
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1049
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1054
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1070
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const-string v7, "status_bar_show_weather"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 1072
    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowWeather:Z
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2102(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z

    .line 1073
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1074
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2010(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1075
    return-void

    :cond_0
    move v4, v5

    .line 1071
    goto :goto_0
.end method
