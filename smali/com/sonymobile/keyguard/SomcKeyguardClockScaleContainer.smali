.class public Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.super Landroid/widget/FrameLayout;
.source "SomcKeyguardClockScaleContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimateScaling:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeightChange:I

.field private mPivotXViewStart:Z

.field private mPreviousScale:F

.field private mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    .line 48
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    .line 67
    return-void
.end method

.method private performAnimatedScaling(FI)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "animationDuration"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 174
    .local v0, "animatorScaleX":Landroid/animation/ObjectAnimator;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 175
    .local v1, "animatorScaleY":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 176
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 177
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 178
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 180
    return-void
.end method

.method private performNonAnimatedScaling(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleX(F)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleY(F)V

    .line 167
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    .line 170
    :cond_1
    return-void
.end method

.method private resizeClockAnimation(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "animationDuration"    # I
    .param p4, "heightChange"    # I

    .prologue
    .line 131
    add-int v1, p2, p4

    int-to-float v1, v1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 132
    .local v0, "scale":F
    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 135
    :cond_0
    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    .line 138
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 142
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 145
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    .line 152
    :goto_1
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotY(F)V

    .line 154
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    if-eqz v1, :cond_4

    .line 155
    invoke-direct {p0, v0, p3}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performAnimatedScaling(FI)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_1

    .line 150
    :cond_3
    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_1

    .line 157
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performNonAnimatedScaling(F)V

    goto :goto_0
.end method

.method private updateHeightChange(I)V
    .locals 1
    .param p1, "change"    # I

    .prologue
    .line 183
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    .line 185
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-lez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeightChange()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingCancelled(F)V

    .line 198
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    .line 208
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    .line 225
    :cond_0
    return-void
.end method

.method public requestHeightChange(II)I
    .locals 3
    .param p1, "heightChange"    # I
    .param p2, "animationDuration"    # I

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 101
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredWidth()I

    move-result v1

    .line 94
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredHeight()I

    move-result v0

    .line 96
    .local v0, "height":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->updateHeightChange(I)V

    .line 98
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->resizeClockAnimation(IIII)V

    .line 101
    :cond_1
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    goto :goto_0
.end method

.method public setAnimateScaling(Z)V
    .locals 0
    .param p1, "animateScaling"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    .line 127
    return-void
.end method

.method public setPivotXViewStart(Z)V
    .locals 0
    .param p1, "pivotXViewStart"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    .line 119
    return-void
.end method

.method public setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V
    .locals 0
    .param p1, "somcKeyguardClockScaleContainerCallback"    # Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    .line 112
    return-void
.end method
