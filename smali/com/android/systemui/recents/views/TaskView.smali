.class public Lcom/android/systemui/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# instance fields
.field mActionButtonTranslationZ:F

.field mActionButtonView:Landroid/view/View;

.field mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field mDimAlpha:I

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mFocusAnimationsEnabled:Z

.field mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mMaxDimScale:F

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 102
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 105
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 112
    return-void
.end method


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 562
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 563
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 564
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 565
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 566
    if-eqz p3, :cond_0

    .line 567
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 571
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method dismissTask()V
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    .line 492
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/views/TaskView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 651
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 652
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 653
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 657
    :cond_0
    return-void
.end method

.method public fadeInActionButton(II)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 384
    return-void
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 575
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 576
    .local v0, "dim":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 720
    move-object v1, p0

    .line 721
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eq p1, v4, :cond_1

    move v0, v2

    .line 722
    .local v0, "delayViewClick":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 724
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    const-wide/16 v4, 0x7d

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    :cond_0
    :goto_1
    return-void

    .end local v0    # "delayViewClick":Z
    :cond_1
    move v0, v3

    .line 721
    goto :goto_0

    .line 737
    .restart local v0    # "delayViewClick":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v4, :cond_3

    .line 739
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 741
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_4

    :goto_2
    invoke-interface {v4, v1, v5, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 140
    const v1, 0x7f100162

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 141
    const v1, 0x7f100165

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 142
    const v1, 0x7f100163

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 144
    const v1, 0x7f100164

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->pluginViewEnabled:Z

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 164
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 636
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 637
    if-nez p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 640
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 754
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 168
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 169
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 171
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 172
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 175
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 179
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 181
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 185
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 188
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 190
    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 664
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 667
    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    if-nez v1, :cond_2

    :cond_0
    const/16 v0, 0x8

    .line 668
    .local v0, "lockButtonVisibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 669
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    .line 672
    :cond_1
    return-void

    .line 667
    .end local v0    # "lockButtonVisibility":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 690
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 691
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 708
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 709
    return-void
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 4
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    .line 253
    .local v0, "initialDim":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 277
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v1, :cond_3

    .line 256
    if-eqz p1, :cond_2

    .line 258
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 261
    :cond_2
    if-eqz p2, :cond_0

    .line 263
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 268
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 271
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 125
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 486
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 219
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 226
    :cond_0
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 117
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 513
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 514
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 518
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 4
    .param p1, "dim"    # I

    .prologue
    const/4 v3, 0x0

    .line 534
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    .line 535
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 539
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 540
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v0, v1, v2

    .line 544
    .local v0, "dimAlpha":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_0
.end method

.method public setFocusedTask(Z)V
    .locals 2
    .param p1, "animateFocusedState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 592
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 593
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 606
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 610
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 481
    return-void
.end method

.method public setTaskProgress(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 522
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 523
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 525
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 713
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    return-void

    .line 713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 471
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 8
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 281
    iget-object v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 282
    .local v3, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v2, 0x0

    .line 284
    .local v2, "startDelay":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 307
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    .line 331
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v4, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 365
    :cond_1
    :goto_1
    new-instance v4, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    int-to-long v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    return-void

    .line 311
    :cond_2
    iget-boolean v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    if-eqz v4, :cond_0

    .line 312
    iget v4, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 313
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 328
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_1

    .line 335
    iget v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    iget v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    sub-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x1

    .line 336
    .local v1, "frontIndex":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v5, v1

    add-int v0, v4, v5

    .line 339
    .local v0, "delay":I
    iget v4, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 340
    iget v4, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 341
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v4, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 359
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 360
    move v2, v0

    goto/16 :goto_1
.end method

.method startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 396
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 397
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 402
    if-eqz p2, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 407
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    if-lez v2, :cond_0

    .line 408
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 409
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 410
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 415
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 416
    const v1, 0x3f666666    # 0.9f

    .line 417
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 421
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 443
    :cond_2
    :goto_0
    return-void

    .line 430
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 433
    if-eqz p3, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 476
    return-void
.end method

.method unsetFocusedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 617
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 629
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 582
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    move v5, v7

    :goto_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 205
    if-gtz p2, :cond_1

    .line 206
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 213
    :goto_1
    return-void

    :cond_0
    move v5, v4

    .line 200
    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "taskProgress"

    new-array v1, v7, [F

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method
