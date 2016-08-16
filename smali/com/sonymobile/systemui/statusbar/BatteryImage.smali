.class public Lcom/sonymobile/systemui/statusbar/BatteryImage;
.super Landroid/widget/ImageView;
.source "BatteryImage.java"


# instance fields
.field private mHeight:I

.field private mMargin:I

.field private mPaintText:Landroid/graphics/Paint;

.field private mPositionX:F

.field private mPositionY:F

.field private mText:Ljava/lang/String;

.field private mTextWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e00ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 34
    .local v1, "textSize":I
    const v2, 0x7f0e00f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mMargin:I

    .line 35
    const v2, 0x7f0e00ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mTextWidth:I

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    .line 37
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 44
    return-void
.end method

.method private updateResources()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 66
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v1, "textBounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mMargin:I

    .line 69
    .local v0, "margin":I
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mMargin:I

    neg-int v2, v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mWidth:I

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mTextWidth:I

    sub-int/2addr v3, v4

    add-int v0, v2, v3

    .line 75
    :cond_0
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mTextWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPositionX:F

    .line 76
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPositionY:F

    .line 78
    .end local v0    # "margin":I
    .end local v1    # "textBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPositionX:F

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPositionY:F

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 55
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 56
    sub-int v1, p4, p2

    .line 57
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 58
    .local v0, "height":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 59
    iput v1, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mWidth:I

    .line 60
    iput v0, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mHeight:I

    .line 61
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->updateResources()V

    .line 63
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mText:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->updateResources()V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->postInvalidate()V

    .line 84
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/BatteryImage;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->updateResources()V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->postInvalidate()V

    .line 92
    return-void
.end method
