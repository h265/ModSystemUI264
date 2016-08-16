.class public Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;
.super Ljava/lang/Object;
.source "SomcLockscreenRuntimeThemeUpdater.java"


# direct methods
.method public static newThemeConfiguration(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 43
    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V

    .line 44
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 45
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 46
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V

    .line 47
    return-void
.end method

.method private static updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    const/4 v6, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 61
    .local v2, "carrierContainerIds":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 62
    .local v1, "carrierContainerId":I
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 66
    check-cast v5, Lcom/android/keyguard/CarrierText;

    .end local v5    # "view":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/keyguard/CarrierText;->updateCarrierTextColor()V

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "carrierContainerId":I
    :cond_1
    return-void

    .line 60
    :array_0
    .array-data 4
        0x7f10005f
        0x7f1000a7
    .end array-data
.end method

.method private static updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 9
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v8, 0x0

    .line 72
    const/4 v7, 0x4

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 75
    .local v1, "digitalClockIds":[I
    const v7, 0x7f09005b

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 77
    .local v4, "textColor":I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v6, v0, v2

    .line 78
    .local v6, "viewId":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    const v7, 0x7f1000a0

    if-ne v6, v7, :cond_0

    .line 83
    const v7, 0x7f020158

    invoke-virtual {v5, v7, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "viewId":I
    :cond_1
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x7f100093
        0x7f1000ac
        0x7f10009f
        0x7f1000a0
    .end array-data
.end method

.method private static updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    const v1, 0x7f100052

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 94
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateThemeResources()V

    .line 96
    :cond_0
    return-void
.end method

.method private static updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 51
    const v2, 0x7f100053

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, "indicationText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 54
    const v2, 0x7f090050

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 55
    .local v1, "textColor":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .end local v1    # "textColor":I
    :cond_0
    return-void
.end method

.method private static updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    .line 100
    .local v0, "controller":Lcom/android/systemui/statusbar/phone/ScrimController;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColorFromResource(Landroid/content/res/Resources;)V

    .line 103
    :cond_0
    return-void
.end method
