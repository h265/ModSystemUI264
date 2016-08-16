.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/view/ViewGroup;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessPaddingTop:I

.field private mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mColumns:I

.field private final mContext:Landroid/content/Context;

.field private final mDetail:Landroid/view/View;

.field private final mDetailContent:Landroid/view/ViewGroup;

.field private final mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private final mDetailSettingsButton:Landroid/widget/TextView;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mPanelPaddingBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 87
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 660
    new-instance v0, Lcom/android/systemui/qs/QSPanel$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$7;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 668
    new-instance v0, Lcom/android/systemui/qs/QSPanel$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$8;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040032

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040039

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 106
    new-instance v0, Lcom/android/systemui/qs/QSFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 110
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 113
    new-instance v2, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f100156

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/QSPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 263
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 264
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 265
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 266
    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 302
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 303
    new-instance v1, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 309
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 315
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 322
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 323
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 324
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 325
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 326
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 557
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 624
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 612
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 618
    :cond_0
    return-void
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1, "row"    # I

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "cols":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 602
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 603
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRecordIndexFromView(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 418
    .local v1, "tv":Lcom/android/systemui/qs/QSTileView;
    if-eq p1, v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileView;->getTopView()Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileView;->getBottomView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 423
    .end local v0    # "i":I
    .end local v1    # "tv":Lcom/android/systemui/qs/QSTileView;
    :cond_0
    :goto_1
    return v0

    .line 415
    .restart local v0    # "i":I
    .restart local v1    # "tv":Lcom/android/systemui/qs/QSTileView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "i":I
    .end local v1    # "tv":Lcom/android/systemui/qs/QSTileView;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getRowTop(I)I
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 594
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    .line 595
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 348
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 349
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 353
    :goto_0
    return-void

    .line 351
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 7
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 368
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    if-ne v4, p2, :cond_1

    .line 399
    :goto_1
    return-void

    :cond_0
    move v4, v3

    .line 368
    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    .line 370
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    const/4 v1, 0x0

    .line 371
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz p2, :cond_4

    .line 372
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 373
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v4, v5, v6}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 374
    iget-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must return detail view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 377
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/qs/QSPanel$6;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/QSPanel$6;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 386
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 387
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 396
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :goto_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    .line 397
    if-eqz p2, :cond_5

    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 398
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v3, p3, p4, p2, v1}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 377
    .restart local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    .line 391
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    .line 392
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 394
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    .line 397
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_2

    .line 365
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 358
    :cond_2
    if-eqz p2, :cond_3

    .line 359
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 360
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v2, :cond_0

    .line 362
    :cond_3
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 363
    .local v0, "x":I
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getTop()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 364
    .local v1, "y":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_1
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 629
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 631
    .local v0, "scanState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 629
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setGridContentVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 402
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 403
    .local v1, "newVis":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 405
    .local v2, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 406
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "i":I
    .end local v1    # "newVis":I
    .end local v2    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 409
    .restart local v0    # "i":I
    .restart local v1    # "newVis":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 411
    return-void
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    return-void

    :cond_0
    move v0, v2

    .line 236
    goto :goto_0
.end method

.method private updateDetailText()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public closeDetail()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 337
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 15
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "dir"    # I

    .prologue
    .line 445
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v13, :cond_3

    .line 446
    const/4 v13, 0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_0

    const/16 v13, 0x21

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 447
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 506
    .end local p1    # "focused":Landroid/view/View;
    :cond_1
    :goto_0
    return-object p1

    .line 449
    .restart local p1    # "focused":Landroid/view/View;
    :cond_2
    iget-object v13, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v13, v13, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTileView;->getTopView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 453
    :cond_3
    const/16 v13, 0x21

    move/from16 v0, p2

    if-eq v0, v13, :cond_4

    const/16 v13, 0x82

    move/from16 v0, p2

    if-ne v0, v13, :cond_5

    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 455
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/QSPanel;->getRecordIndexFromView(Landroid/view/View;)I

    move-result v4

    .line 456
    .local v4, "index":I
    const/4 v13, -0x1

    if-ne v4, v13, :cond_6

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 457
    :cond_6
    iget-object v13, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 458
    .local v8, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget v1, v8, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 459
    .local v1, "col":I
    iget v10, v8, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 461
    .local v10, "row":I
    iget-object v13, v8, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTileView;->getTopView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_7

    const/4 v5, 0x1

    .line 465
    .local v5, "isDualTileTopView":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getLayoutDirection()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    const/4 v6, 0x1

    .line 466
    .local v6, "isRtl":Z
    :goto_2
    sparse-switch p2, :sswitch_data_0

    .line 492
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 461
    .end local v5    # "isDualTileTopView":Z
    .end local v6    # "isRtl":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 465
    .restart local v5    # "isDualTileTopView":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 468
    .restart local v6    # "isRtl":Z
    :sswitch_0
    if-nez v5, :cond_9

    iget-object v13, v8, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTileView;->getTopView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 470
    :cond_9
    const/4 v5, 0x0

    .line 471
    const/4 v2, -0x1

    .line 495
    .local v2, "delta":I
    :goto_3
    add-int v3, v4, v2

    .local v3, "i":I
    :goto_4
    if-ltz v3, :cond_12

    iget-object v13, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_12

    .line 496
    iget-object v13, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 497
    .local v11, "target":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v13, v11, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_f

    .line 495
    add-int/2addr v3, v2

    goto :goto_4

    .line 474
    .end local v2    # "delta":I
    .end local v3    # "i":I
    .end local v11    # "target":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :sswitch_1
    if-eqz v5, :cond_a

    iget-object v13, v8, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTileView;->getBottomView()Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 476
    :cond_a
    const/4 v5, 0x1

    .line 477
    const/4 v2, 0x1

    .line 478
    .restart local v2    # "delta":I
    goto :goto_3

    .line 480
    .end local v2    # "delta":I
    :sswitch_2
    if-eqz v6, :cond_b

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .line 481
    .local v7, "leftmostCol":I
    :goto_5
    if-eq v1, v7, :cond_1

    .line 483
    if-eqz v6, :cond_c

    const/4 v2, 0x1

    .line 484
    .restart local v2    # "delta":I
    :goto_6
    goto :goto_3

    .line 480
    .end local v2    # "delta":I
    .end local v7    # "leftmostCol":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 483
    .restart local v7    # "leftmostCol":I
    :cond_c
    const/4 v2, -0x1

    goto :goto_6

    .line 486
    .end local v7    # "leftmostCol":I
    :sswitch_3
    if-eqz v6, :cond_d

    const/4 v9, 0x0

    .line 487
    .local v9, "rightmostCol":I
    :goto_7
    if-eq v1, v9, :cond_1

    .line 489
    if-eqz v6, :cond_e

    const/4 v2, -0x1

    .line 490
    .restart local v2    # "delta":I
    :goto_8
    goto :goto_3

    .line 486
    .end local v2    # "delta":I
    .end local v9    # "rightmostCol":I
    :cond_d
    invoke-direct {p0, v10}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    goto :goto_7

    .line 489
    .restart local v9    # "rightmostCol":I
    :cond_e
    const/4 v2, 0x1

    goto :goto_8

    .line 499
    .end local v9    # "rightmostCol":I
    .restart local v2    # "delta":I
    .restart local v3    # "i":I
    .restart local v11    # "target":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_f
    iget-object v13, v11, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 500
    iget-object v12, v11, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 501
    .local v12, "tv":Lcom/android/systemui/qs/QSTileView;
    if-eqz v5, :cond_10

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getTopView()Landroid/view/View;

    move-result-object v13

    :goto_9
    move-object/from16 p1, v13

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getBottomView()Landroid/view/View;

    move-result-object v13

    goto :goto_9

    .line 503
    .end local v12    # "tv":Lcom/android/systemui/qs/QSTileView;
    :cond_11
    iget-object v0, v11, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 p1, v0

    goto/16 :goto_0

    .line 506
    .end local v11    # "target":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_12
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0e004b

    .line 174
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 180
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    .line 183
    .local v1, "detailView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "detailView":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSFooter;->onConfigurationChanged()V

    .line 188
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v16

    .line 563
    .local v16, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/view/View;->layout(IIII)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    .line 567
    .local v10, "isRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 568
    .local v12, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 569
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v4

    .line 570
    .local v4, "cols":I
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    .line 571
    .local v5, "cw":I
    :goto_2
    mul-int v17, v5, v4

    sub-int v17, v16, v17

    add-int/lit8 v18, v4, 0x1

    div-int v7, v17, v18

    .line 572
    .local v7, "extra":I
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v17, v0

    mul-int v17, v17, v5

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v7

    add-int v11, v17, v18

    .line 573
    .local v11, "left":I
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v15

    .line 575
    .local v15, "top":I
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v14

    .line 576
    .local v14, "tileWith":I
    if-eqz v10, :cond_3

    .line 577
    sub-int v13, v16, v11

    .line 578
    .local v13, "right":I
    sub-int v11, v13, v14

    .line 582
    :goto_3
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v15

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v13, v1}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 566
    .end local v4    # "cols":I
    .end local v5    # "cw":I
    .end local v7    # "extra":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "isRtl":Z
    .end local v11    # "left":I
    .end local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v13    # "right":I
    .end local v14    # "tileWith":I
    .end local v15    # "top":I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 570
    .restart local v4    # "cols":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "isRtl":Z
    .restart local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    goto :goto_2

    .line 580
    .restart local v5    # "cw":I
    .restart local v7    # "extra":I
    .restart local v11    # "left":I
    .restart local v14    # "tileWith":I
    .restart local v15    # "top":I
    :cond_3
    add-int v13, v11, v14

    .restart local v13    # "right":I
    goto :goto_3

    .line 584
    .end local v4    # "cols":I
    .end local v5    # "cw":I
    .end local v7    # "extra":I
    .end local v11    # "left":I
    .end local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v13    # "right":I
    .end local v14    # "tileWith":I
    .end local v15    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 585
    .local v6, "dh":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSFooter;->hasFooter()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v8

    .line 588
    .local v8, "footer":Landroid/view/View;
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 591
    .end local v8    # "footer":Landroid/view/View;
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 511
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 512
    .local v10, "width":I
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 513
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int v0, v11, v12

    .line 514
    .local v0, "brightnessHeight":I
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 515
    const/4 v6, -0x1

    .line 516
    .local v6, "r":I
    const/4 v1, -0x1

    .line 517
    .local v1, "c":I
    const/4 v9, 0x0

    .line 518
    .local v9, "rows":I
    const/4 v8, 0x0

    .line 519
    .local v8, "rowIsDual":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 520
    .local v7, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 523
    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    if-eq v1, v11, :cond_1

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v11

    if-eq v8, v11, :cond_2

    .line 524
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 525
    const/4 v1, 0x0

    .line 526
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v8

    .line 530
    :goto_1
    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 531
    iput v1, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 532
    add-int/lit8 v9, v6, 0x1

    .line 533
    goto :goto_0

    .line 528
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    .end local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 536
    .restart local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 537
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 539
    :cond_5
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_4

    .line 540
    iget v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_6

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    .line 541
    .local v3, "cw":I
    :goto_3
    iget v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_7

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    .line 542
    .local v2, "ch":I
    :goto_4
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    goto :goto_2

    .line 540
    .end local v2    # "ch":I
    .end local v3    # "cw":I
    :cond_6
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    goto :goto_3

    .line 541
    .restart local v3    # "cw":I
    :cond_7
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    goto :goto_4

    .line 544
    .end local v3    # "cw":I
    .end local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_8
    if-nez v9, :cond_b

    move v4, v0

    .line 545
    .local v4, "h":I
    :goto_5
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->hasFooter()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 546
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v4, v11

    .line 548
    :cond_9
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 549
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-ge v11, v4, :cond_a

    .line 550
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v4}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 552
    :cond_a
    iput v4, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    .line 553
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    .line 554
    return-void

    .line 544
    .end local v4    # "h":I
    :cond_b
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    add-int v4, v11, v12

    goto :goto_5
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 224
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 226
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFooter;->refreshState()V

    .line 227
    return-void
.end method

.method public refreshBrightnessView()V
    .locals 5

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 692
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    .line 693
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 695
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 699
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 700
    new-instance v3, Lcom/android/systemui/settings/BrightnessController;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f100155

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f100156

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v3, v4, v1, v2}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 703
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 707
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f100156

    .line 131
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 132
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 134
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 135
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 136
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 137
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 141
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 146
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 199
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 203
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    goto :goto_1

    .line 211
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 212
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 215
    :cond_2
    if-eqz p1, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 250
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 252
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    .line 254
    .local v2, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_1

    .line 256
    .end local v2    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 259
    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 230
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 231
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 233
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    const v4, 0x3f99999a    # 1.2f

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    const v3, 0x7f0b000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    .local v0, "columns":I
    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 156
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 157
    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    .line 158
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    .line 159
    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 160
    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    .line 161
    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 162
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    .line 163
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    .line 166
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 170
    return-void
.end method
