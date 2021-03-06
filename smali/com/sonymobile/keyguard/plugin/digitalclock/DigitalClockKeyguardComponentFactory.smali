.class public Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "DigitalClockKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method

.method private extractView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 130
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/android/keyguard/R$layout;->keyguard_status_view:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 132
    .local v2, "result":Landroid/view/ViewGroup;
    sget v4, Lcom/android/keyguard/R$id;->somc_keyguard_digital_clock_container:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 134
    .local v3, "vanillaClock":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .local v0, "inflatedParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    return-object v3
.end method

.method private scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget v11, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextClock;

    .line 70
    .local v3, "clockView":Landroid/widget/TextClock;
    sget v11, Lcom/android/keyguard/R$id;->somc_digital_clock_am_pm:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    .line 72
    .local v0, "amPmView":Landroid/widget/TextClock;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v6, "measuringPaint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v1, "clockMeasurment":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "clockString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-gt v11, v12, :cond_0

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextClock;->getTextSize()F

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v2, v11, v12, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const v12, 0x3f666666    # 0.9f

    mul-float v9, v11, v12

    .line 92
    .local v9, "sizeOfBackplate":F
    const v10, 0x3f99999a    # 1.2f

    .line 94
    .local v10, "textClockPadding":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    div-float v8, v9, v11

    .line 97
    .local v8, "scaleToFitText":F
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/widget/TextClock;->setHorizontallyScrolling(Z)V

    .line 98
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 99
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 100
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 106
    .end local v8    # "scaleToFitText":F
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v12, -0x2

    const/16 v13, 0x11

    invoke-direct {v4, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 109
    .local v4, "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 110
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz v7, :cond_2

    .line 111
    sget v11, Lcom/android/keyguard/R$dimen;->sony_digital_clock_picker_top_margin:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 113
    .local v5, "marginTop":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v5, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    .end local v5    # "marginTop":I
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->extractView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 53
    .local v0, "vanillaClock":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    return-object v0
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
