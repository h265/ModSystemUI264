.class public Lcom/adi/rom/interface/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"


# static fields
.field private static final VISUALIZER_HEIGHT_DIP:F = 50.0f


# instance fields
.field private mAudioSessionId:I

.field private mBytes:[B

.field mCanvas:Landroid/graphics/Canvas;

.field mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mFFTBytes:[B

.field private mFadePaint:Landroid/graphics/Paint;

.field mFlash:Z

.field private mFlashPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adi/rom/interface/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/adi/rom/interface/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 70
    const/4 v1, -0x1

    .line 71
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/adi/rom/interface/VisualizerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adi/rom/interface/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 62
    const/4 v1, -0x1

    .line 63
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/adi/rom/interface/VisualizerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFlash:Z

    .line 52
    invoke-direct {p0}, Lcom/adi/rom/interface/VisualizerView;->init()V

    .line 53
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    const/4 v1, -0x1

    .line 55
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/adi/rom/interface/VisualizerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0xff

    .line 75
    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mBytes:[B

    .line 76
    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFFTBytes:[B

    .line 78
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7a

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    const/16 v1, 0xee

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mRenderers:Ljava/util/Set;

    .line 83
    return-void
.end method


# virtual methods
.method public addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/adi/rom/interface/renderer/Renderer;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public clearRenderers()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    return-void
.end method

.method public enablefalse()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 171
    :cond_0
    return-void
.end method

.method public flash()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adi/rom/interface/VisualizerView;->mFlash:Z

    .line 209
    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->invalidate()V

    .line 210
    return-void
.end method

.method public link(I)V
    .locals 8
    .param p1, "audioSessionId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 98
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/adi/rom/interface/VisualizerView;->mAudioSessionId:I

    if-eq p1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 100
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->release()V

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 104
    :cond_0
    iput p1, p0, Lcom/adi/rom/interface/VisualizerView;->mAudioSessionId:I

    .line 107
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v2, :cond_1

    .line 111
    :try_start_0
    new-instance v2, Landroid/media/audiofx/Visualizer;

    invoke-direct {v2, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 117
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 123
    new-instance v0, Lcom/adi/rom/interface/VisualizerView$1;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/VisualizerView$1;-><init>(Lcom/adi/rom/interface/VisualizerView;)V

    .line 140
    .local v0, "captureListener":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 141
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 140
    invoke-virtual {v2, v0, v3, v7, v7}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 144
    .end local v0    # "captureListener":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :cond_1
    iget-object v2, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v7}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 146
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Visualizer view"

    const-string v3, "Error enabling visualizer!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 218
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 221
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_1

    .line 229
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mBytes:[B

    if-eqz v3, :cond_2

    .line 234
    new-instance v0, Lcom/adi/rom/interface/AudioData;

    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mBytes:[B

    invoke-direct {v0, v3}, Lcom/adi/rom/interface/AudioData;-><init>([B)V

    .line 235
    .local v0, "audioData":Lcom/adi/rom/interface/AudioData;
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 241
    .end local v0    # "audioData":Lcom/adi/rom/interface/AudioData;
    :cond_2
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mFFTBytes:[B

    if-eqz v3, :cond_3

    .line 243
    new-instance v1, Lcom/adi/rom/interface/FFTData;

    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mFFTBytes:[B

    invoke-direct {v1, v3}, Lcom/adi/rom/interface/FFTData;-><init>([B)V

    .line 244
    .local v1, "fftData":Lcom/adi/rom/interface/FFTData;
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 251
    .end local v1    # "fftData":Lcom/adi/rom/interface/FFTData;
    :cond_3
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/adi/rom/interface/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 253
    iget-boolean v3, p0, Lcom/adi/rom/interface/VisualizerView;->mFlash:Z

    if-eqz v3, :cond_4

    .line 255
    iput-boolean v6, p0, Lcom/adi/rom/interface/VisualizerView;->mFlash:Z

    .line 256
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/adi/rom/interface/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 259
    :cond_4
    iget-object v3, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 260
    return-void

    .line 235
    .restart local v0    # "audioData":Lcom/adi/rom/interface/AudioData;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adi/rom/interface/renderer/Renderer;

    .line 237
    .local v2, "r":Lcom/adi/rom/interface/renderer/Renderer;
    iget-object v4, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/adi/rom/interface/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v0, v5}, Lcom/adi/rom/interface/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 244
    .end local v0    # "audioData":Lcom/adi/rom/interface/AudioData;
    .end local v2    # "r":Lcom/adi/rom/interface/renderer/Renderer;
    .restart local v1    # "fftData":Lcom/adi/rom/interface/FFTData;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adi/rom/interface/renderer/Renderer;

    .line 246
    .restart local v2    # "r":Lcom/adi/rom/interface/renderer/Renderer;
    iget-object v4, p0, Lcom/adi/rom/interface/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/adi/rom/interface/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1, v5}, Lcom/adi/rom/interface/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 177
    return-void
.end method

.method public updateVisualizer([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adi/rom/interface/VisualizerView;->mBytes:[B

    .line 187
    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->invalidate()V

    .line 188
    return-void
.end method

.method public updateVisualizerFFT([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adi/rom/interface/VisualizerView;->mFFTBytes:[B

    .line 198
    invoke-virtual {p0}, Lcom/adi/rom/interface/VisualizerView;->invalidate()V

    .line 199
    return-void
.end method
