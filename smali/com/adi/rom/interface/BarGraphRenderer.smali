.class public Lcom/adi/rom/interface/BarGraphRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "BarGraphRenderer.java"


# instance fields
.field private colorCounter:F

.field private mDivisions:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTop:Z

.field private resolucion:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;ZI)V
    .locals 1
    .param p1, "divisions"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "top"    # Z
    .param p4, "resolucion"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    .line 33
    iput p1, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    .line 34
    iput-object p2, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mPaint:Landroid/graphics/Paint;

    .line 35
    iput-boolean p3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mTop:Z

    .line 36
    iput p4, p0, Lcom/adi/rom/interface/BarGraphRenderer;->resolucion:I

    .line 37
    return-void
.end method

.method private cycleColor()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4060000000000000L    # 128.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 47
    iget v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 48
    .local v1, "g":I
    iget v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 49
    .local v2, "r":I
    iget v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 50
    .local v0, "b":I
    iget-object v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    float-to-double v3, v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/adi/rom/interface/BarGraphRenderer;->colorCounter:F

    .line 52
    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/AudioData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/FFTData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 57
    invoke-direct {p0}, Lcom/adi/rom/interface/BarGraphRenderer;->cycleColor()V

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v5, v5

    iget v6, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    div-int/2addr v5, v6

    if-lt v1, v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    iget-object v6, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 86
    return-void

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    .line 61
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    .line 62
    iget-object v5, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v6, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    mul-int/2addr v6, v1

    aget-byte v4, v5, v6

    .line 63
    .local v4, "rfk":B
    iget-object v5, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v6, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mDivisions:I

    mul-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-byte v2, v5, v6

    .line 64
    .local v2, "ifk":B
    mul-int v5, v4, v4

    mul-int v6, v2, v2

    add-int/2addr v5, v6

    int-to-float v3, v5

    .line 66
    .local v3, "magnitude":F
    iget v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->resolucion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 67
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 73
    .local v0, "dbValue":I
    :goto_1
    iget-boolean v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mTop:Z

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 76
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, -0xa

    int-to-float v7, v7

    aput v7, v5, v6

    .line 59
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "dbValue":I
    :cond_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .restart local v0    # "dbValue":I
    goto :goto_1

    .line 80
    :cond_2
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    .line 81
    iget-object v5, p0, Lcom/adi/rom/interface/BarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, -0xa

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    goto :goto_2
.end method
