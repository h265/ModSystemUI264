.class public Lcom/adi/rom/interface/MusicEqualizerVisualizer;
.super Landroid/widget/FrameLayout;
.source "MusicEqualizerVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adi/rom/interface/MusicEqualizerVisualizer$SettingsObserver;,
        Lcom/adi/rom/interface/MusicEqualizerVisualizer$TileBarGraphRenderer;
    }
.end annotation


# static fields
.field private static mStyle:I


# instance fields
.field private mAM:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mFiveHandler:Ljava/lang/Runnable;

.field private mFourHandler:Ljava/lang/Runnable;

.field public mHandler:Landroid/os/Handler;

.field private mOneHandler:Ljava/lang/Runnable;

.field private mShowVisualizerView:Z

.field private mSixHandler:Ljava/lang/Runnable;

.field private mThreeHandler:Ljava/lang/Runnable;

.field private mTwoHandler:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field private mVisualizerView:Lcom/adi/rom/interface/VisualizerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$26;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$26;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    .line 1360
    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$27;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$27;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$28;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$28;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$29;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$29;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$30;

    invoke-direct {v0, p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$30;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/adi/rom/interface/Utils;->init(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addBarGraphRenderers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCyanogenModBarGraphRenderers()V

    return-void
.end method

.method static synthetic access$1300(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCircularRenderer()V

    return-void
.end method

.method static synthetic access$400(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addLineRenderer()V

    return-void
.end method

.method static synthetic access$500(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addDoubleBarGraphRenderer()V

    return-void
.end method

.method static synthetic access$600(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCircleRenderer()V

    return-void
.end method

.method private addBarGraphRenderers()V
    .locals 9

    .prologue
    const/16 v8, 0x190

    .line 1103
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1104
    .local v1, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mCurrentState:I

    if-ge v4, v8, :cond_0

    .line 1105
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1109
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1110
    const/16 v4, 0xc8

    const/16 v5, 0x38

    const/16 v6, 0x8a

    const/16 v7, 0xfc

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1111
    const/4 v3, 0x0

    .line 1112
    .local v3, "tipo":I
    const/4 v2, 0x0

    .line 1113
    .local v2, "stroke":I
    iget v4, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mCurrentState:I

    if-ge v4, v8, :cond_1

    .line 1114
    const/4 v3, 0x1

    .line 1115
    const/4 v2, 0x2

    .line 1120
    :goto_1
    new-instance v0, Lcom/adi/rom/interface/BarGraphRenderer;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/adi/rom/interface/BarGraphRenderer;-><init>(ILandroid/graphics/Paint;ZI)V

    .line 1121
    .local v0, "barGraphRendererBottom":Lcom/adi/rom/interface/BarGraphRenderer;
    iget-object v4, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v4, v0}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    .line 1122
    return-void

    .line 1107
    .end local v0    # "barGraphRendererBottom":Lcom/adi/rom/interface/BarGraphRenderer;
    .end local v2    # "stroke":I
    .end local v3    # "tipo":I
    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1117
    .restart local v2    # "stroke":I
    .restart local v3    # "tipo":I
    :cond_1
    const/4 v3, 0x2

    .line 1118
    const/4 v2, 0x3

    goto :goto_1
.end method

.method private addCircleRenderer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1126
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1127
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1128
    const/16 v2, 0xff

    const/16 v3, 0xde

    const/16 v4, 0x5c

    const/16 v5, 0x8f

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    new-instance v0, Lcom/adi/rom/interface/CircleRenderer;

    invoke-direct {v0, v1, v6}, Lcom/adi/rom/interface/CircleRenderer;-><init>(Landroid/graphics/Paint;Z)V

    .line 1130
    .local v0, "circleRenderer":Lcom/adi/rom/interface/CircleRenderer;
    iget-object v2, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v2, v0}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    .line 1131
    return-void
.end method

.method private addCircularRenderer()V
    .locals 5

    .prologue
    .line 1314
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1315
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1317
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1318
    const/16 v1, 0xff

    const/16 v2, 0xde

    const/16 v3, 0x5c

    const/16 v4, 0x8f

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1319
    new-instance v1, Lcom/adi/rom/interface/CircularRenderer;

    .line 1320
    invoke-direct {v1, v0}, Lcom/adi/rom/interface/CircularRenderer;-><init>(Landroid/graphics/Paint;)V

    .line 1321
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, v1}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    return-void
.end method

.method private addCyanogenModBarGraphRenderers()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, "paint":Landroid/graphics/Paint;
    const-string v3, "new_custom_eqalizer_path_stroke_width"

    invoke-static {v3}, Lcom/adi/rom/interface/Utils;->getDimenResId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v3, "new_custom_equalizer_fill_color"

    invoke-static {v3}, Lcom/adi/rom/interface/Utils;->getColorResId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const-string v5, "new_custom_eqalizer_path_effect_1"

    invoke-static {v5}, Lcom/adi/rom/interface/Utils;->getDimenResId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    const-string v5, "new_custom_eqalizer_path_effect_2"

    invoke-static {v5}, Lcom/adi/rom/interface/Utils;->getDimenResId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const-string v3, "new_custom_equalizer_divisions"

    invoke-static {v3}, Lcom/adi/rom/interface/Utils;->getIntegerResId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "bars":I
    iget-object v3, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    new-instance v4, Lcom/adi/rom/interface/MusicEqualizerVisualizer$TileBarGraphRenderer;

    const-string v5, "new_custom_equalizer_db_fuzz"

    invoke-static {v5}, Lcom/adi/rom/interface/Utils;->getIntegerResId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "new_custom_equalizer_db_fuzz_factor"

    invoke-static {v6}, Lcom/adi/rom/interface/Utils;->getIntegerResId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$TileBarGraphRenderer;-><init>(ILandroid/graphics/Paint;II)V

    invoke-virtual {v3, v4}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    return-void
.end method

.method private addDoubleBarGraphRenderer()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    .line 1325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1326
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1327
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1328
    const/16 v1, 0x38

    const/16 v2, 0x8a

    const/16 v3, 0xfc

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    new-instance v1, Lcom/adi/rom/interface/DoubleBarGraphRenderer;

    const/16 v2, 0x10

    .line 1330
    const/4 v3, 0x0

    .line 1329
    invoke-direct {v1, v2, v0, v3}, Lcom/adi/rom/interface/DoubleBarGraphRenderer;-><init>(ILandroid/graphics/Paint;Z)V

    .line 1331
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, v1}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    .line 1333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1334
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1335
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1336
    const/16 v1, 0xb5

    const/16 v2, 0x6f

    const/16 v3, 0xe9

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    new-instance v1, Lcom/adi/rom/interface/DoubleBarGraphRenderer;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0, v4}, Lcom/adi/rom/interface/DoubleBarGraphRenderer;-><init>(ILandroid/graphics/Paint;Z)V

    .line 1339
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, v1}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    .line 1340
    return-void
.end method

.method private addLineRenderer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xff

    .line 1300
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1301
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1302
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1303
    const/16 v1, 0x58

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1304
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1305
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1306
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1307
    const/16 v2, 0xbc

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    new-instance v2, Lcom/adi/rom/interface/LineRenderer;

    .line 1309
    invoke-direct {v2, v0, v1}, Lcom/adi/rom/interface/LineRenderer;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, v2}, Lcom/adi/rom/interface/VisualizerView;->addRenderer(Lcom/adi/rom/interface/renderer/Renderer;)V

    .line 1311
    return-void
.end method

.method private isMusicPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    iget v2, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mCurrentState:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 257
    :pswitch_0
    iget-object v2, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 264
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setAudioManager()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mAM:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mCurrentState:I

    return-void
.end method

.method private setupVisualizerView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mView:Landroid/view/View;

    const-string v1, "new_custom_visualizer_view"

    invoke-static {v1}, Lcom/adi/rom/interface/Utils;->getIdResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adi/rom/interface/VisualizerView;

    iput-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->setAudioManager()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->isMusicPlaying()Z

    move-result v1

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adi/rom/interface/VisualizerView;->link(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$SettingsObserver;-><init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;Landroid/os/Handler;)V

    .local v0, "settingsObserver":Lcom/adi/rom/interface/MusicEqualizerVisualizer$SettingsObserver;
    invoke-virtual {v0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer$SettingsObserver;->observe()V

    const-string v1, "new_custom_visualizer_view_panel"

    invoke-static {v1}, Lcom/adi/rom/interface/Utils;->getIdResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->setupVisualizerView()V

    invoke-virtual {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->updateSettings()V

    invoke-virtual {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->updateVisualizerView()V

    return-void
.end method

.method public showVisualizerViewPanel(Z)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 2901
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2907
    :cond_0
    :goto_0
    return-void

    .line 2902
    :cond_1
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2903
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mView:Landroid/view/View;

    const-string v2, "new_custom_visualizer_view"

    invoke-static {v2}, Lcom/adi/rom/interface/Utils;->getIdResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2904
    if-eqz v1, :cond_0

    .line 2905
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mShowVisualizerView:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "equalizer_visualizer_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mStyle:I

    sget v1, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mStyle:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCircularRenderer()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addLineRenderer()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addDoubleBarGraphRenderer()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCircleRenderer()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addBarGraphRenderers()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mSixHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFiveHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mFourHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mThreeHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mOneHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    invoke-direct {p0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCyanogenModBarGraphRenderers()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public updateVisualizerView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2908
    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2910
    const-string v0, "show_equalizer"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2897
    :goto_0
    iput-boolean v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mShowVisualizerView:Z

    iget-boolean v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mShowVisualizerView:Z

    invoke-virtual {p0, v0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->showVisualizerViewPanel(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
