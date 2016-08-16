.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;
.super Ljava/lang/Object;
.source "KeyguardStatusViewHelper.java"


# direct methods
.method private static addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p1, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 141
    :cond_0
    return-void
.end method

.method public static createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .locals 5
    .param p0, "userId"    # I
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 83
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;

    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;

    invoke-direct {v4, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3, v4}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V

    .line 88
    .local v0, "defaultKeyguardFactoryProvider":Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;
    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;

    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    invoke-direct {v4, v1, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    invoke-direct {v2, v3, v4, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V

    .line 94
    .local v2, "userSelectionHandler":Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;
    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-direct {v3, p1, v0, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V

    return-object v3
.end method

.method public static loadCurrentClock(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardPluginFactoryLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .param p2, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p3, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p4, "digitalClockContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    invoke-static {p3, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 42
    invoke-virtual {p1, p3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 44
    invoke-static {p2, p3, p4}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 46
    return-object p2
.end method

.method private static removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p1, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-static {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->stopClockTicking(Landroid/view/ViewGroup;)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method private static setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "digitalClockContainer"    # Landroid/view/ViewGroup;
    .param p1, "visibility"    # I

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private static showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p1, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p2, "digitalClockContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-static {p1, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 115
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public static startClockTicking(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    .line 59
    :cond_0
    return-void
.end method

.method public static stopClockTicking(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    .line 70
    :cond_0
    return-void
.end method
