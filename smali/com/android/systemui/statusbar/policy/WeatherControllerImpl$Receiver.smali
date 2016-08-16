.class final Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    # getter for: Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    const-string v0, "update_cancelled"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "update_cancelled"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->queryWeather()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->fireCallback()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V

    goto :goto_0
.end method
