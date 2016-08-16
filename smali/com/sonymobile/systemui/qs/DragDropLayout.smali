.class public Lcom/sonymobile/systemui/qs/DragDropLayout;
.super Landroid/widget/FrameLayout;
.source "DragDropLayout.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;
    }
.end annotation


# static fields
.field private static DEFAULT_DURATION:J


# instance fields
.field private mCloseButton:Landroid/widget/Button;

.field private mColumnCount:I

.field private mGridUnusedTiles:Landroid/widget/LinearLayout;

.field private mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

.field private mHScrollView:Landroid/widget/HorizontalScrollView;

.field private mHoverView:Landroid/view/View;

.field private mIsAnimating:Z

.field mResources:Landroid/content/res/Resources;

.field private mTileHeight:I

.field private mTileWidth:I

.field private mUnusedEmptyView:Landroid/view/View;

.field private mUnusedLT:Landroid/animation/LayoutTransition;

.field private mUnusedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedEmptyView:Landroid/view/View;

.field private mUsedLT:Landroid/animation/LayoutTransition;

.field private mUsedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVScrollView:Landroid/widget/ScrollView;

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    .line 89
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    .line 91
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    .line 92
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    .line 93
    return-void
.end method

.method private ShadowGrabSpot(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 653
    .local v0, "parent":Landroid/view/ViewGroup;
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 655
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v2, v3, :cond_4

    .line 656
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    const v3, 0x7f10017e

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 657
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 658
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 667
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    iput v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 668
    :cond_2
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    iput v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 669
    :cond_3
    return-void

    .line 661
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    .line 662
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f100186

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    goto :goto_0

    .line 664
    :cond_5
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/DragDropLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/systemui/qs/DragDropLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/systemui/qs/DragDropLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->enableLayoutTransitions()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sonymobile/systemui/qs/DragDropLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/animation/LayoutTransition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateDropRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->removeDropRegions()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/systemui/qs/DragDropLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/qs/DragDropLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    return-void
.end method

.method private adjustLayout()V
    .locals 19

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    move/from16 v18, v0

    mul-int v9, v17, v18

    .line 197
    .local v9, "layoutHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v18, v0

    mul-int v10, v17, v18

    .line 198
    .local v10, "layoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0e00f6

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 200
    .local v12, "narrowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    .line 202
    .local v7, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0a002e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 204
    .local v8, "keepPortrait":Z
    const v17, 0x7f100180

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    .line 206
    const v17, 0x7f10017f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    .line 207
    const v17, 0x7f100185

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    .line 209
    const v17, 0x7f100182

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setMaxColumnCount(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .local v16, "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v16

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    move-object/from16 v0, v16

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 217
    const v17, 0x7f10017e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 218
    .local v13, "textViewHint":Landroid/widget/TextView;
    const v17, 0x7f100181

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 220
    .local v14, "textViewTitle":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v15, "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    const v17, 0x7f100183

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 223
    .local v2, "button":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .local v3, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->setMinimumWidth(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    add-int v18, v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 231
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 233
    const v17, 0x7f100184

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 234
    .local v11, "linearHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .local v6, "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    add-int v17, v9, v12

    div-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 236
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const v17, 0x7f100186

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 239
    .local v5, "holder":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .restart local v6    # "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 241
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    move-object/from16 v0, v16

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 255
    .end local v5    # "holder":Landroid/widget/FrameLayout;
    .end local v6    # "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "linearHolder":Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void

    .line 200
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "isLandscape":Z
    .end local v8    # "keepPortrait":Z
    .end local v13    # "textViewHint":Landroid/widget/TextView;
    .end local v14    # "textViewTitle":Landroid/widget/TextView;
    .end local v15    # "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v2    # "button":Landroid/widget/Button;
    .restart local v3    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "isLandscape":Z
    .restart local v8    # "keepPortrait":Z
    .restart local v13    # "textViewHint":Landroid/widget/TextView;
    .restart local v14    # "textViewTitle":Landroid/widget/TextView;
    .restart local v15    # "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .local v4, "hScrollParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 249
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    move/from16 v17, v0

    mul-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    add-int v17, v17, v9

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 673
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 674
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 678
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 679
    return-void
.end method

.method private finishDrag(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p1, "targetViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    .line 570
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/systemui/qs/DragDropLayout$4;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 596
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$5;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    sget-wide v2, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 114
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    sget-wide v2, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 119
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 140
    :cond_1
    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private loadQSElements()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v2, "unused":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTileView;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTileView;>;"
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getEditTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTileView;

    .line 153
    .local v3, "view":Lcom/android/systemui/qs/QSTileView;
    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 158
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    .line 160
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v4, v3}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;)V

    .line 161
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v3    # "view":Lcom/android/systemui/qs/QSTileView;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTileView;

    .line 165
    .restart local v3    # "view":Lcom/android/systemui/qs/QSTileView;
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 170
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    .line 172
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v3    # "view":Lcom/android/systemui/qs/QSTileView;
    :cond_3
    return-void
.end method

.method private postRemoveDropRegions()V
    .locals 1

    .prologue
    .line 625
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$7;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 636
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 637
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 638
    return-void
.end method

.method private removeDropRegions()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 648
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 649
    return-void
.end method

.method private setTileGridParams(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, -0x80000000

    .line 380
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 385
    .local v0, "params":Landroid/widget/GridLayout$LayoutParams;
    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 386
    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 387
    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 388
    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTileLinearParams(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateDropRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 606
    .local v0, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$6;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout$6;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 622
    return-void
.end method

.method private updateTilesIndices()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "qsTileView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setIndex(I)V

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V

    .line 367
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "qsTileView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 370
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 372
    .restart local v1    # "qsTileView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setIndex(I)V

    .line 373
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V

    .line 375
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v1    # "qsTileView":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x1

    .line 542
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 545
    .local v0, "action":I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 548
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 549
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v2

    .line 550
    .local v2, "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    sget-object v4, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v2, v4, :cond_0

    .line 551
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    .line 566
    .end local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    .end local v2    # "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    :goto_0
    return v3

    .line 553
    .restart local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    .restart local v2    # "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 556
    .end local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    .end local v2    # "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 560
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    const v5, 0x7fffffff

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 562
    :cond_2
    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    goto :goto_0

    .line 566
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "layoutTransition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 344
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 182
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$1;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f05006b

    const v3, 0x7f05006c

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 268
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 272
    .end local v0    # "statusBar":Landroid/app/StatusBarManager;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->adjustLayout()V

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->init()V

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->loadQSElements()V

    .line 101
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 352
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 279
    .local v2, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getMaxTiles(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v4, v5, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0015

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 283
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x31

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 284
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 331
    .end local v3    # "toast":Landroid/widget/Toast;
    :goto_0
    return v7

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->disableLayoutTransitions()V

    .line 289
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    .line 290
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    .line 291
    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v0

    .line 292
    .local v0, "index":I
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->ShadowGrabSpot(Landroid/view/View;)V

    .line 293
    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/content/Context;Landroid/view/View;)V

    .line 294
    .local v1, "myShadow":Landroid/view/View$DragShadowBuilder;
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$2;

    invoke-direct {v4, p0, v2, v0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$2;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;ILandroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 313
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, p1, v6}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 319
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$3;

    invoke-direct {v4, p0, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout$3;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "layoutTransition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 338
    return-void
.end method
