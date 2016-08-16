.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;
.super Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.source "AnalogClockContainer.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method

.method private getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "child":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .line 45
    .restart local v0    # "child":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 1
    .param p1, "alarmText"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    .line 51
    .local v0, "clock":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public startClockTicking()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    .line 59
    .local v0, "clock":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    .line 62
    :cond_0
    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object v0

    .line 67
    .local v0, "clock":Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    .line 70
    :cond_0
    return-void
.end method
