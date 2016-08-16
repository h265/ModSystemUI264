.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mLeftIconAllowedTouchBounds:Landroid/graphics/Rect;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mMotionPerformedByUser:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mRightIconAllowedTouchBounds:Landroid/graphics/Rect;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTouchSlop:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIconAllowedTouchBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIconAllowedTouchBounds:Landroid/graphics/Rect;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIconTouchBounds()V

    .line 110
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "x2"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromRadius(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 362
    :cond_0
    return-void
.end method

.method private endMotion(Landroid/view/MotionEvent;Z)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "forceSnapBack"    # Z

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(Z)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    :cond_1
    return-void
.end method

.method private fling(FZ)V
    .locals 7
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v5

    neg-float v1, v5

    .line 391
    .local v1, "target":F
    :goto_0
    if-eqz p2, :cond_0

    move v1, v2

    .line 393
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v6, v5, v4

    aput v1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 394
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v5, v0, v6, v1, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 395
    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 401
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    if-nez p2, :cond_3

    .line 403
    const/high16 v5, 0x3ec00000    # 0.375f

    mul-float/2addr v5, p1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;)V

    .line 404
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v5, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 408
    :goto_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 410
    return-void

    .line 390
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "target":F
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v1

    goto :goto_0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v1    # "target":F
    :cond_2
    move v2, v4

    .line 404
    goto :goto_1

    .line 406
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    goto :goto_2
.end method

.method private flingWithCurrentVelocity(Z)V
    .locals 10
    .param p1, "forceSnapBack"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity()F

    move-result v1

    .line 366
    .local v1, "vel":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVerticalVelocity()F

    move-result v4

    .line 369
    .local v4, "verticalVel":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    .line 372
    .local v0, "snapBack":Z
    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v8, v1

    cmpg-float v8, v8, v7

    if-gez v8, :cond_4

    move v2, v5

    .line 373
    .local v2, "velIsInWrongDirection":Z
    :goto_0
    cmpl-float v8, v4, v7

    if-lez v8, :cond_5

    move v3, v5

    .line 374
    .local v3, "velVerticallyInWrongDirection":Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    :cond_0
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    move v8, v5

    :goto_2
    or-int/2addr v0, v8

    .line 376
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    move v8, v5

    :goto_3
    xor-int/2addr v8, v0

    if-eqz v8, :cond_1

    move v1, v7

    .line 377
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZ)V

    .line 378
    return-void

    .end local v2    # "velIsInWrongDirection":Z
    .end local v3    # "velVerticallyInWrongDirection":Z
    :cond_4
    move v2, v6

    .line 372
    goto :goto_0

    .restart local v2    # "velIsInWrongDirection":Z
    :cond_5
    move v3, v6

    .line 373
    goto :goto_1

    .restart local v3    # "velVerticallyInWrongDirection":Z
    :cond_6
    move v8, v6

    .line 374
    goto :goto_2

    :cond_7
    move v8, v6

    .line 376
    goto :goto_3
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "right"    # Z
    .param p2, "radius"    # I

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 344
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 345
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    return-object v0

    .line 343
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 525
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getCurrentVerticalVelocity()F
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 386
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2
    .param p1, "translation"    # F

    .prologue
    .line 477
    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getScale(F)F
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 502
    const/high16 v1, 0x3f400000    # 0.75f

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float v0, v1, v2

    .line 504
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getTranslationFromRadius(F)F
    .locals 3
    .param p1, "circleSize"    # F

    .prologue
    .line 472
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    const v2, 0x3e19999a    # 0.15f

    div-float v0, v1, v2

    .line 473
    .local v0, "translation":F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private initDimens()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 150
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 154
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVerticalTouchSlop:F

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 162
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 167
    return-void
.end method

.method private initIconTouchBounds()V
    .locals 10

    .prologue
    .line 117
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 119
    .local v5, "wm":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 121
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 122
    const v6, 0x7f0e00f7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 124
    .local v4, "touchSizeWidth":I
    const v6, 0x7f0e00f8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 126
    .local v3, "touchSizeHeight":I
    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int v2, v6, v3

    .line 127
    .local v2, "touchBoxHeight":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIconAllowedTouchBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v2, v4, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIconAllowedTouchBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v4

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    .end local v0    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "touchBoxHeight":I
    .end local v3    # "touchSizeHeight":I
    .end local v4    # "touchSizeWidth":I
    :cond_0
    return-void
.end method

.method private initIcons()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 517
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 518
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .prologue
    .line 381
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsingLeftShortcut()Z
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIconAllowedTouchBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isUsingRightShortcut()Z
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIconAllowedTouchBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private leftSwipePossible()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted()V

    .line 268
    :cond_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 14
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isUsingRightShortcut()Z

    move-result v13

    .line 419
    .local v13, "usingRightShortcut":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isUsingLeftShortcut()Z

    move-result v12

    .line 421
    .local v12, "usingLeftShortcut":Z
    if-eqz v13, :cond_4

    .line 422
    :goto_0
    if-eqz v12, :cond_5

    .line 424
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 425
    .local v10, "absTranslation":F
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    cmpl-float v0, v10, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 429
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x33d6bf95    # 1.0E-7f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    if-eqz p2, :cond_3

    .line 430
    :cond_2
    if-eqz v12, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 431
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_2
    if-eqz v12, :cond_7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 432
    .local v11, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v10, v0

    .line 435
    .local v3, "alpha":F
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v7, v0, v4

    .line 436
    .local v7, "fadeOutAlpha":F
    const/4 v0, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 439
    add-float/2addr v3, v7

    .line 441
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const/4 v8, 0x1

    .line 442
    .local v8, "animateIcons":Z
    :goto_4
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v2

    .line 443
    .local v2, "radius":F
    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x1

    .line 444
    .local v9, "slowAnimation":Z
    :goto_5
    if-nez p2, :cond_a

    .line 445
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 449
    :goto_6
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 450
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 452
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 454
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v2    # "radius":F
    .end local v3    # "alpha":F
    .end local v7    # "fadeOutAlpha":F
    .end local v8    # "animateIcons":Z
    .end local v9    # "slowAnimation":Z
    .end local v11    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_3
    return-void

    .line 421
    .end local v10    # "absTranslation":F
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 422
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 430
    .restart local v10    # "absTranslation":F
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_2

    .line 431
    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_3

    .line 441
    .restart local v3    # "alpha":F
    .restart local v7    # "fadeOutAlpha":F
    .restart local v11    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 443
    .restart local v2    # "radius":F
    .restart local v8    # "animateIcons":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 447
    .restart local v9    # "slowAnimation":Z
    :cond_a
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    goto :goto_6
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;)V
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 413
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 414
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    .line 415
    return-void

    .line 413
    .end local v0    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 289
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->showArrow(Z)V

    .line 290
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 291
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 313
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 314
    return-void

    .line 288
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 321
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 322
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 338
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 339
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 340
    return-void

    .line 320
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 511
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 491
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    goto :goto_0
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 495
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(F)F

    move-result v0

    .line 496
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 497
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 498
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 499
    return-void
.end method

.method private updateIconsFromRadius(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V
    .locals 6
    .param p1, "targetView"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "newRadius"    # F

    .prologue
    const/4 v5, 0x0

    .line 457
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v3, v3

    div-float v0, p2, v3

    .line 460
    .local v0, "alpha":F
    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float v1, v3, v4

    .line 461
    .local v1, "fadeOutAlpha":F
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 464
    add-float/2addr v0, v1

    .line 465
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 466
    .local v2, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-direct {p0, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 467
    invoke-direct {p0, v2, v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v3, v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 469
    return-void

    .line 465
    .end local v2    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 483
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIconTouchBounds()V

    .line 540
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 544
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 180
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v11, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eqz v11, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v10

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 184
    .local v8, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 189
    .local v7, "x":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIconAllowedTouchBounds:Landroid/graphics/Rect;

    float-to-int v12, v7

    float-to-int v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    move v2, v9

    .line 191
    .local v2, "leftSwipeIsOk":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIconAllowedTouchBounds:Landroid/graphics/Rect;

    float-to-int v12, v7

    float-to-int v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_5

    move v3, v9

    .line 193
    .local v3, "rightSwipeIsOk":Z
    :goto_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-nez v11, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 197
    :cond_2
    const/4 v1, 0x0

    .line 198
    .local v1, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_3
    :goto_3
    :pswitch_0
    move v10, v9

    .line 250
    goto :goto_0

    .end local v1    # "isUp":Z
    .end local v2    # "leftSwipeIsOk":Z
    .end local v3    # "rightSwipeIsOk":Z
    :cond_4
    move v2, v10

    .line 189
    goto :goto_1

    .restart local v2    # "leftSwipeIsOk":Z
    :cond_5
    move v3, v10

    .line 191
    goto :goto_2

    .line 200
    .restart local v1    # "isUp":Z
    .restart local v3    # "rightSwipeIsOk":Z
    :pswitch_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_6

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 203
    :cond_6
    iput v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 204
    iput v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 205
    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 208
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 209
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    goto :goto_3

    .line 212
    :pswitch_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 213
    invoke-direct {p0, p1, v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_3

    .line 216
    :pswitch_3
    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v6, v7, v11

    .line 217
    .local v6, "w":F
    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v0, v8, v11

    .line 218
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v6, v11

    if-gtz v11, :cond_8

    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVerticalTouchSlop:F

    neg-float v11, v11

    cmpg-float v11, v0, v11

    if-ltz v11, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, v6, v11

    if-ltz v11, :cond_8

    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVerticalTouchSlop:F

    neg-float v11, v11

    cmpg-float v11, v0, v11

    if-gez v11, :cond_9

    :cond_8
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-nez v11, :cond_9

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 223
    iput v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 224
    iput v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 225
    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 226
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 228
    :cond_9
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_3

    .line 229
    iget v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v11, v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v4, v11, v12

    .line 230
    .local v4, "totalTranslation":F
    move v5, v0

    .line 234
    .local v5, "verticalTranslation":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isUsingRightShortcut()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 235
    add-float/2addr v4, v5

    .line 239
    :goto_4
    invoke-direct {p0, v4, v10, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto/16 :goto_3

    .line 237
    :cond_a
    sub-float/2addr v4, v5

    goto :goto_4

    .line 244
    .end local v0    # "h":F
    .end local v4    # "totalTranslation":F
    .end local v5    # "verticalTranslation":F
    .end local v6    # "w":F
    :pswitch_4
    const/4 v1, 0x1

    .line 246
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 247
    if-nez v1, :cond_b

    move v10, v9

    :cond_b
    invoke-direct {p0, p1, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_3

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 550
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 552
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    .line 285
    return-void
.end method
