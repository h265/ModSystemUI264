.class public abstract Lcom/adi/rom/interface/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field protected mFFTPoints:[F

.field protected mPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
.end method

.method public abstract onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
.end method

.method public final render(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/AudioData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mPoints:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mPoints:[F

    array-length v0, v0

    iget-object v1, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    iget-object v0, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mPoints:[F

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adi/rom/interface/renderer/Renderer;->onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V

    .line 56
    return-void
.end method

.method public final render(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Lcom/adi/rom/interface/FFTData;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mFFTPoints:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mFFTPoints:[F

    array-length v0, v0

    iget-object v1, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 67
    :cond_0
    iget-object v0, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adi/rom/interface/renderer/Renderer;->mFFTPoints:[F

    .line 70
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adi/rom/interface/renderer/Renderer;->onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V

    .line 71
    return-void
.end method
