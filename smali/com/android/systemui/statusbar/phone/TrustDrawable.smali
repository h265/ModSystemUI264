.class public Lcom/android/systemui/statusbar/phone/TrustDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;
    }
.end annotation


# instance fields
.field private final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAlpha:I

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimating:Z

.field private mCurAlpha:I

.field private mCurAnimator:Landroid/animation/Animator;

.field private mCurInnerRadius:F

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mInnerRadiusEnter:F

.field private final mInnerRadiusExit:F

.field private final mInnerRadiusVisibleMax:F

.field private final mInnerRadiusVisibleMin:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mState:I

.field private final mThickness:F

.field private mTrustManaged:Z

.field private final mVisibleAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 276
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 285
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMin:F

    .line 83
    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    .line 84
    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusExit:F

    .line 85
    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    .line 86
    const v1, 0x7f0e00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mThickness:F

    .line 88
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 90
    const v1, 0x10c000e

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    const v1, 0x10c000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updatePaintColor(Landroid/content/res/Resources;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/TrustDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/TrustDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TrustDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    return-void
.end method

.method private configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "duration"    # J
    .param p4, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "repeating"    # Z

    .prologue
    .line 266
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    if-eqz p6, :cond_0

    .line 270
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 271
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 273
    :cond_0
    return-object p1
.end method

.method private makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;
    .locals 11
    .param p1, "startRadius"    # F
    .param p2, "endRadius"    # F
    .param p3, "startAlpha"    # I
    .param p4, "endAlpha"    # I
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "repeating"    # Z
    .param p9, "stateUpdateListener"    # Z

    .prologue
    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 251
    .local v7, "alphaAnimator":Landroid/animation/ValueAnimator;
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 255
    .local v9, "sizeAnimator":Landroid/animation/ValueAnimator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    .local v8, "set":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 257
    if-eqz p9, :cond_0

    .line 258
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;Lcom/android/systemui/statusbar/phone/TrustDrawable$1;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    :cond_0
    return-object v8
.end method

.method private makeEnterAnimator(FI)Landroid/animation/Animator;
    .locals 11
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .prologue
    .line 234
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    const/16 v5, 0x4c

    const-wide/16 v6, 0x1f4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeExitAnimator(FI)Landroid/animation/Animator;
    .locals 11
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .prologue
    const/4 v5, 0x0

    .line 240
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusExit:F

    const-wide/16 v6, 0x1f4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v9, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeVisibleAnimator()Landroid/animation/Animator;
    .locals 11

    .prologue
    .line 227
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMin:F

    const/16 v4, 0x4c

    const/16 v5, 0x26

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private updateState(Z)V
    .locals 7
    .param p1, "allowTransientState"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 175
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-nez v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 180
    .local v0, "nextState":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v3, v5, :cond_9

    .line 181
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-eqz v3, :cond_8

    move v0, v1

    .line 191
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 192
    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    .line 193
    :cond_3
    if-ne v0, v4, :cond_4

    const/4 v0, 0x0

    .line 196
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-eq v0, v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_5

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 199
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 202
    :cond_5
    if-nez v0, :cond_d

    .line 203
    iput v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 204
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 218
    :cond_6
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_7

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_8
    move v0, v2

    .line 181
    goto :goto_1

    .line 182
    :cond_9
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-nez v3, :cond_a

    .line 183
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 184
    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v3, v1, :cond_b

    .line 185
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 186
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v3, v6, :cond_c

    .line 187
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 188
    :cond_c
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v3, v4, :cond_2

    .line 189
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 205
    :cond_d
    if-ne v0, v1, :cond_e

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeEnterAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 207
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v1, v5, :cond_6

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_2

    .line 210
    :cond_e
    if-ne v0, v6, :cond_f

    .line 211
    const/16 v1, 0x4c

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 212
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_2

    .line 214
    :cond_f
    if-ne v0, v4, :cond_6

    .line 215
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeExitAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    mul-int/2addr v2, v3

    div-int/lit16 v0, v2, 0x100

    .line 118
    .local v0, "newAlpha":I
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 122
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    .line 129
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrustManaged(Z)V
    .locals 2
    .param p1, "trustManaged"    # Z

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    .line 148
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    .line 149
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 152
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 161
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 162
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 166
    :cond_1
    return-void
.end method

.method public updatePaintColor(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x7f090050

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method
