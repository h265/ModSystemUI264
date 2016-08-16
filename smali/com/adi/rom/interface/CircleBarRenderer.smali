.class public Lcom/adi/rom/interface/CircleBarRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "CircleBarRenderer.java"


# instance fields
.field aggresive:F

.field angleModulation:F

.field private colorCounter:F

.field private mCycleColor:Z

.field private mDivisions:I

.field private mPaint:Landroid/graphics/Paint;

.field modulation:F

.field modulationStrength:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;I)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "divisions"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adi/rom/interface/CircleBarRenderer;-><init>(Landroid/graphics/Paint;IZ)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;IZ)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "divisions"    # I
    .param p3, "cycleColor"    # Z

    .prologue
    const v1, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    .line 94
    iput v0, p0, Lcom/adi/rom/interface/CircleBarRenderer;->modulation:F

    .line 95
    iput v1, p0, Lcom/adi/rom/interface/CircleBarRenderer;->modulationStrength:F

    .line 96
    iput v0, p0, Lcom/adi/rom/interface/CircleBarRenderer;->angleModulation:F

    .line 97
    iput v1, p0, Lcom/adi/rom/interface/CircleBarRenderer;->aggresive:F

    .line 111
    iput v0, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

    .line 42
    iput-object p1, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mPaint:Landroid/graphics/Paint;

    .line 43
    iput p2, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    .line 44
    iput-boolean p3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mCycleColor:Z

    .line 45
    return-void
.end method

.method private cycleColor()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4060000000000000L    # 128.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 114
    iget v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 115
    .local v2, "r":I
    iget v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 116
    .local v1, "g":I
    iget v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

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

    .line 117
    .local v0, "b":I
    iget-object v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

    float-to-double v3, v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/adi/rom/interface/CircleBarRenderer;->colorCounter:F

    .line 119
    return-void
.end method

.method private toPolar([FLandroid/graphics/Rect;)[F
    .locals 21
    .param p1, "cartesian"    # [F
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-double v4, v11

    .line 101
    .local v4, "cX":D
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-double v6, v11

    .line 102
    .local v6, "cY":D
    const/4 v11, 0x0

    aget v11, p1, v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    float-to-double v11, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v11, v13

    .line 103
    .local v2, "angle":D
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adi/rom/interface/CircleBarRenderer;->aggresive:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/adi/rom/interface/CircleBarRenderer;->aggresive:F

    const/4 v13, 0x1

    aget v13, p1, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v11, v11

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/adi/rom/interface/CircleBarRenderer;->modulationStrength:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/adi/rom/interface/CircleBarRenderer;->modulationStrength:F

    float-to-double v15, v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adi/rom/interface/CircleBarRenderer;->modulation:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    add-double v17, v17, v19

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    add-double/2addr v13, v15

    mul-double v9, v11, v13

    .line 104
    .local v9, "radius":D
    const/4 v11, 0x2

    new-array v8, v11, [F

    const/4 v11, 0x0

    .line 105
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adi/rom/interface/CircleBarRenderer;->angleModulation:F

    float-to-double v12, v12

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v9

    add-double/2addr v12, v4

    double-to-float v12, v12

    aput v12, v8, v11

    const/4 v11, 0x1

    .line 106
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adi/rom/interface/CircleBarRenderer;->angleModulation:F

    float-to-double v12, v12

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v9

    add-double/2addr v12, v6

    double-to-float v12, v12

    aput v12, v8, v11

    .line 108
    .local v8, "out":[F
    return-object v8
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/AudioData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 51
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/FFTData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 56
    iget-boolean v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mCycleColor:Z

    if-eqz v10, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/adi/rom/interface/CircleBarRenderer;->cycleColor()V

    .line 61
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v10, v10

    iget v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    div-int/2addr v10, v11

    if-lt v4, v10, :cond_1

    .line 87
    iget-object v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mFFTPoints:[F

    iget-object v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 90
    iget v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->modulation:F

    float-to-double v10, v10

    const-wide v12, 0x3fc0a3d70a3d70a4L    # 0.13

    add-double/2addr v10, v12

    double-to-float v10, v10

    iput v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->modulation:F

    .line 91
    iget v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->angleModulation:F

    float-to-double v10, v10

    const-wide v12, 0x3fd1eb851eb851ecL    # 0.28

    add-double/2addr v10, v12

    double-to-float v10, v10

    iput v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->angleModulation:F

    .line 92
    return-void

    .line 63
    :cond_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    mul-int/2addr v11, v4

    aget-byte v9, v10, v11

    .line 64
    .local v9, "rfk":B
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    mul-int/2addr v11, v4

    add-int/lit8 v11, v11, 0x1

    aget-byte v5, v10, v11

    .line 65
    .local v5, "ifk":B
    mul-int v10, v9, v9

    mul-int v11, v5, v5

    add-int/2addr v10, v11

    int-to-float v6, v10

    .line 66
    .local v6, "magnitude":F
    const/high16 v10, 0x42960000    # 75.0f

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v3, v10, v11

    .line 68
    .local v3, "dbValue":F
    const/4 v10, 0x2

    new-array v1, v10, [F

    const/4 v10, 0x0

    .line 69
    iget v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    mul-int/2addr v11, v4

    int-to-float v11, v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    aput v11, v1, v10

    const/4 v10, 0x1

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x40800000    # 4.0f

    div-float v12, v3, v12

    sub-float/2addr v11, v12

    aput v11, v1, v10

    .line 73
    .local v1, "cartPoint":[F
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/adi/rom/interface/CircleBarRenderer;->toPolar([FLandroid/graphics/Rect;)[F

    move-result-object v7

    .line 74
    .local v7, "polarPoint":[F
    iget-object v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mFFTPoints:[F

    mul-int/lit8 v11, v4, 0x4

    const/4 v12, 0x0

    aget v12, v7, v12

    aput v12, v10, v11

    .line 75
    iget-object v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mFFTPoints:[F

    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    aget v12, v7, v12

    aput v12, v10, v11

    .line 77
    const/4 v10, 0x2

    new-array v2, v10, [F

    const/4 v10, 0x0

    .line 78
    iget v11, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mDivisions:I

    mul-int/2addr v11, v4

    int-to-float v11, v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    aput v11, v2, v10

    const/4 v10, 0x1

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v3

    aput v11, v2, v10

    .line 82
    .local v2, "cartPoint2":[F
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v0}, Lcom/adi/rom/interface/CircleBarRenderer;->toPolar([FLandroid/graphics/Rect;)[F

    move-result-object v8

    .line 83
    .local v8, "polarPoint2":[F
    iget-object v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mFFTPoints:[F

    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    aget v12, v8, v12

    aput v12, v10, v11

    .line 84
    iget-object v10, p0, Lcom/adi/rom/interface/CircleBarRenderer;->mFFTPoints:[F

    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v11, v11, 0x3

    const/4 v12, 0x1

    aget v12, v8, v12

    aput v12, v10, v11

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
