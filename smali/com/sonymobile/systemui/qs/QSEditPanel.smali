.class public Lcom/sonymobile/systemui/qs/QSEditPanel;
.super Landroid/view/ViewGroup;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/QSEditPanel$1;,
        Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContext:Landroid/content/Context;

.field private mMaxColumns:I

.field private mPanelPaddingBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->updateResources()V

    .line 48
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 121
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnCount(I)I
    .locals 4
    .param p1, "row"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "cols":I
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 147
    .local v2, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget v3, v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/sonymobile/systemui/qs/QSEditPanel$1;)V

    .line 61
    .local v0, "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    .line 62
    iget-object v1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .end local v0    # "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 71
    if-eqz p1, :cond_1

    .line 72
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 73
    new-instance v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/sonymobile/systemui/qs/QSEditPanel$1;)V

    .line 74
    .local v0, "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    .line 75
    iget-object v1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 78
    .end local v0    # "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    :cond_1
    return-void
.end method

.method public getVirtualDropIndex(FF)I
    .locals 6
    .param p1, "mX"    # F
    .param p2, "mY"    # F

    .prologue
    .line 163
    iget v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 164
    .local v1, "dropRow":I
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7fffffff

    .line 167
    :goto_0
    return v3

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getWidth()I

    move-result v3

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v2, v3

    .line 166
    .local v2, "virtualCellWidth":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 167
    .local v0, "dropCol":I
    iget v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getWidth()I

    move-result v7

    .line 128
    .local v7, "w":I
    iget-object v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 129
    .local v5, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget v8, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v0

    .line 130
    .local v0, "cols":I
    iget v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 131
    .local v1, "cw":I
    mul-int v8, v1, v0

    sub-int v8, v7, v8

    add-int/lit8 v9, v0, 0x1

    div-int v2, v8, v9

    .line 132
    .local v2, "extra":I
    iget v8, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    mul-int/2addr v8, v1

    iget v9, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    add-int v4, v8, v9

    .line 133
    .local v4, "left":I
    iget v8, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getRowTop(I)I

    move-result v6

    .line 134
    .local v6, "top":I
    iget-object v8, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    iget-object v9, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    iget-object v10, v5, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v8, v4, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 138
    .end local v0    # "cols":I
    .end local v1    # "cw":I
    .end local v2    # "extra":I
    .end local v4    # "left":I
    .end local v5    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    .end local v6    # "top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 98
    .local v6, "width":I
    const/4 v4, -0x1

    .line 99
    .local v4, "row":I
    const/4 v0, -0x1

    .line 100
    .local v0, "column":I
    const/4 v5, 0x0

    .line 101
    .local v5, "rows":I
    iget-object v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 102
    .local v3, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    iget v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_1

    .line 103
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_1
    iput v4, v3, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    .line 109
    iput v0, v3, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    .line 110
    add-int/lit8 v5, v4, 0x1

    .line 111
    goto :goto_0

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 114
    .restart local v3    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget-object v7, v3, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    iget v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-static {v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->exactly(I)I

    move-result v8

    iget v9, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    invoke-static {v9}, Lcom/sonymobile/systemui/qs/QSEditPanel;->exactly(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 116
    .end local v3    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_3
    if-nez v5, :cond_4

    const/4 v1, 0x0

    .line 117
    .local v1, "h":I
    :goto_3
    invoke-virtual {p0, v6, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setMeasuredDimension(II)V

    .line 118
    return-void

    .line 116
    .end local v1    # "h":I
    :cond_4
    invoke-direct {p0, v5}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getRowTop(I)I

    move-result v7

    iget v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mPanelPaddingBottom:I

    add-int v1, v7, v8

    goto :goto_3
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;

    .prologue
    .line 83
    if-eqz p1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 85
    .local v1, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget-object v2, v1, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setMaxColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    .line 154
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 53
    iget v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 54
    const v1, 0x7f0e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mPanelPaddingBottom:I

    .line 55
    return-void
.end method
