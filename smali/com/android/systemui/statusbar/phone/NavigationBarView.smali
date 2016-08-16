.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field private mDelegateIntercepted:Z

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mIsLayoutRtl:Z

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field private mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 72
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 79
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 96
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 181
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 186
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 188
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 189
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 191
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustExtraKeyGravity(Landroid/view/View;Z)V
    .locals 6
    .param p1, "navBar"    # Landroid/view/View;
    .param p2, "isLayoutRtl"    # Z

    .prologue
    const/16 v4, 0x50

    const/16 v5, 0x30

    .line 650
    const v3, 0x7f10013c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 651
    .local v2, "menu":Landroid/view/View;
    const v3, 0x7f10013d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, "imeSwitcher":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 654
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 655
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 659
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_3

    :goto_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 660
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v3, v5

    .line 654
    goto :goto_0

    :cond_3
    move v4, v5

    .line 659
    goto :goto_1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    if-nez p2, :cond_1

    .line 773
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    .end local p2    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 785
    return-void

    .line 775
    .restart local p2    # "button":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " drawingAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawingAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quiescentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p2    # "button":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBackButtonLightsOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHomeButtonLightsOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f100140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavigationBarResources()V

    .line 293
    return-void
.end method

.method private getRecentsButtonLightsOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 709
    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 712
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 717
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 713
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 717
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private inLockTask()Z
    .locals 2

    .prologue
    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 234
    :cond_0
    return-void
.end method

.method private isTablet()Z
    .locals 4

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 349
    .local v0, "isTablet":Z
    :goto_0
    return v0

    .line 348
    .end local v0    # "isTablet":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 617
    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 723
    return-void
.end method

.method private swapChildrenOrderIfVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    .line 670
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 671
    check-cast v3, Landroid/widget/LinearLayout;

    .line 672
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 673
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 674
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 675
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 676
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 679
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 680
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 684
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateKeyButtonBackground()V

    .line 356
    :cond_0
    return-void
.end method

.method private updateRTLOrder()V
    .locals 6

    .prologue
    const v5, 0x7f100138

    const/4 v3, 0x1

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    .line 633
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    if-eq v4, v0, :cond_1

    .line 636
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v4, v3

    .line 637
    .local v2, "rotation90":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 638
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 640
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 641
    .local v1, "rotation270":Landroid/view/View;
    if-eq v2, v1, :cond_0

    .line 642
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 643
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 645
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    .line 647
    .end local v1    # "rotation270":Landroid/view/View;
    .end local v2    # "rotation90":Landroid/view/View;
    :cond_1
    return-void

    .line 631
    .end local v0    # "isLayoutRtl":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 587
    .local v0, "isRtl":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBarState(ZZ)V

    .line 588
    return-void

    .line 586
    .end local v0    # "isRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 726
    sparse-switch p0, :sswitch_data_0

    .line 732
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 728
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 730
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 726
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 737
    const-string v5, "NavigationBarView {"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 739
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 740
    .local v2, "size":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 746
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 747
    .local v0, "offscreen":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v5, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string v5, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    const-string v5, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_2
    aput-object v3, v6, v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string v3, "true"

    :goto_3
    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const-string v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 763
    const-string v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 764
    const-string v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 765
    const-string v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 767
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    return-void

    .end local v0    # "offscreen":Z
    :cond_1
    move v0, v3

    .line 746
    goto/16 :goto_0

    .line 747
    .restart local v0    # "offscreen":Z
    :cond_2
    const-string v5, ""

    goto/16 :goto_1

    .line 757
    :cond_3
    const-string v3, "false"

    goto :goto_2

    :cond_4
    const-string v3, "false"

    goto :goto_3
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeSwitchButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f10013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f10013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    return v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 367
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 368
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 621
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 624
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f100143

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v5

    aput-object v2, v0, v1

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 549
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 239
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 240
    .local v1, "intercept":Z
    if-nez v1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 242
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 249
    :goto_0
    return v1

    .line 244
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 245
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 592
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 594
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 601
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 602
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 603
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 605
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 606
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 609
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 611
    return-void

    .line 601
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 217
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    if-eqz v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 225
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 227
    .end local v0    # "ret":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 557
    .local v1, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 561
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f100142

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 568
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init(Z)V

    .line 569
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 570
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 577
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSwapXY(Z)V

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 582
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 583
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 207
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 431
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 12
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 434
    if-nez p2, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v7, p1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 436
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 438
    const/high16 v7, 0x200000

    and-int/2addr v7, p1

    if-eqz v7, :cond_7

    move v2, v8

    .line 439
    .local v2, "disableHome":Z
    :goto_1
    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_8

    move v3, v8

    .line 440
    .local v3, "disableRecent":Z
    :goto_2
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_9

    move v1, v8

    .line 442
    .local v1, "disableBack":Z
    :goto_3
    const/high16 v7, 0x2000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_a

    move v4, v8

    .line 445
    .local v4, "disableSearch":Z
    :goto_4
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 448
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v11, 0x7f100138

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 449
    .local v6, "navButtons":Landroid/view/ViewGroup;
    if-eqz v6, :cond_2

    .line 450
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v5

    .line 451
    .local v5, "lt":Landroid/animation/LayoutTransition;
    if-eqz v5, :cond_2

    .line 452
    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 453
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v5, v7}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 455
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 456
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 464
    .end local v5    # "lt":Landroid/animation/LayoutTransition;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 467
    const/4 v3, 0x0

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v11

    if-eqz v1, :cond_c

    move v7, v10

    :goto_6
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v11

    if-eqz v2, :cond_d

    move v7, v10

    :goto_7
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v11

    if-eqz v3, :cond_e

    move v7, v10

    :goto_8
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButtonLightsOut()Landroid/view/View;

    move-result-object v0

    .line 475
    .local v0, "button":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 476
    if-eqz v1, :cond_f

    move v7, v10

    :goto_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButtonLightsOut()Landroid/view/View;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_5

    .line 480
    if-eqz v2, :cond_10

    move v7, v10

    :goto_a
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButtonLightsOut()Landroid/view/View;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_6

    .line 484
    if-eqz v3, :cond_11

    :goto_b
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v9

    invoke-virtual {v7, v9, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    goto/16 :goto_0

    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "disableBack":Z
    .end local v2    # "disableHome":Z
    .end local v3    # "disableRecent":Z
    .end local v4    # "disableSearch":Z
    .end local v6    # "navButtons":Landroid/view/ViewGroup;
    :cond_7
    move v2, v9

    .line 438
    goto/16 :goto_1

    .restart local v2    # "disableHome":Z
    :cond_8
    move v3, v9

    .line 439
    goto/16 :goto_2

    .restart local v3    # "disableRecent":Z
    :cond_9
    move v1, v9

    .line 440
    goto/16 :goto_3

    .restart local v1    # "disableBack":Z
    :cond_a
    move v4, v9

    .line 442
    goto/16 :goto_4

    .restart local v4    # "disableSearch":Z
    :cond_b
    move v7, v9

    .line 445
    goto/16 :goto_5

    .restart local v6    # "navButtons":Landroid/view/ViewGroup;
    :cond_c
    move v7, v9

    .line 470
    goto :goto_6

    :cond_d
    move v7, v9

    .line 471
    goto :goto_7

    :cond_e
    move v7, v9

    .line 472
    goto :goto_8

    .restart local v0    # "button":Landroid/view/View;
    :cond_f
    move v7, v9

    .line 476
    goto :goto_9

    :cond_10
    move v7, v9

    .line 480
    goto :goto_a

    :cond_11
    move v10, v9

    .line 484
    goto :goto_b
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 362
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 363
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 522
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 525
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v2, p1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 527
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 530
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 532
    .local v0, "shouldShow":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "shouldShow":Z
    :cond_1
    move v0, v1

    .line 530
    goto :goto_1

    .line 532
    .restart local v0    # "shouldShow":Z
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 372
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 12
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    .line 375
    if-nez p2, :cond_0

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v10, :cond_0

    .line 427
    :goto_0
    return-void

    .line 376
    :cond_0
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_4

    const/4 v1, 0x1

    .line 377
    .local v1, "backAlt":Z
    :goto_1
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    if-nez v1, :cond_1

    .line 378
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 386
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 388
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v10, :cond_3

    .line 389
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getButtonTransitionsRot0()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    move-result-object v2

    .line 391
    .local v2, "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getButtonTransitionsRot90()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    move-result-object v3

    .line 393
    .local v3, "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 395
    .local v4, "home":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 396
    .local v8, "recent":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 397
    .local v7, "menu":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 398
    .local v0, "back":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 401
    .local v5, "imeSwitcher":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 404
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v2, v4, v10}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateHomeTransitions(Landroid/widget/ImageView;Z)V

    .line 405
    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateRecentTransitions(Landroid/widget/ImageView;Z)V

    .line 406
    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateMenuTransitions(Landroid/widget/ImageView;Z)V

    .line 407
    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateBackTransitions(Landroid/widget/ImageView;ZZ)V

    .line 408
    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V

    .line 421
    .end local v0    # "back":Landroid/widget/ImageView;
    .end local v2    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v3    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v4    # "home":Landroid/widget/ImageView;
    .end local v5    # "imeSwitcher":Landroid/widget/ImageView;
    .end local v7    # "menu":Landroid/widget/ImageView;
    .end local v8    # "recent":Landroid/widget/ImageView;
    :cond_3
    :goto_2
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_7

    const/4 v9, 0x1

    .line 422
    .local v9, "showImeButton":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v11

    if-eqz v9, :cond_8

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 426
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    goto/16 :goto_0

    .line 376
    .end local v1    # "backAlt":Z
    .end local v9    # "showImeButton":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 411
    .restart local v0    # "back":Landroid/widget/ImageView;
    .restart local v1    # "backAlt":Z
    .restart local v2    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .restart local v3    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .restart local v4    # "home":Landroid/widget/ImageView;
    .restart local v5    # "imeSwitcher":Landroid/widget/ImageView;
    .restart local v7    # "menu":Landroid/widget/ImageView;
    .restart local v8    # "recent":Landroid/widget/ImageView;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v6, 0x0

    .line 413
    .local v6, "isLandscape":Z
    :goto_5
    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateHomeTransitions(Landroid/widget/ImageView;Z)V

    .line 414
    invoke-virtual {v3, v8, v6}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateRecentTransitions(Landroid/widget/ImageView;Z)V

    .line 415
    invoke-virtual {v3, v7, v6}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateMenuTransitions(Landroid/widget/ImageView;Z)V

    .line 416
    invoke-virtual {v3, v0, v6, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateBackTransitions(Landroid/widget/ImageView;ZZ)V

    .line 417
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V

    goto :goto_2

    .line 411
    .end local v6    # "isLandscape":Z
    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    .line 421
    .end local v0    # "back":Landroid/widget/ImageView;
    .end local v2    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v3    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v4    # "home":Landroid/widget/ImageView;
    .end local v5    # "imeSwitcher":Landroid/widget/ImageView;
    .end local v7    # "menu":Landroid/widget/ImageView;
    .end local v8    # "recent":Landroid/widget/ImageView;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 422
    .restart local v9    # "showImeButton":Z
    :cond_8
    const/4 v10, 0x4

    goto :goto_4
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 212
    return-void
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 506
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 507
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 508
    .local v1, "oldSlippery":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 509
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 515
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 516
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 507
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 510
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 511
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method updateNavigationBarResources()V
    .locals 15

    .prologue
    .line 297
    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v14, :cond_5

    .line 298
    iget v14, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1

    const/4 v2, 0x1

    .line 299
    .local v2, "backAlt":Z
    :goto_0
    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getButtonTransitionsRot0()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    move-result-object v3

    .line 301
    .local v3, "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getButtonTransitionsRot90()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    move-result-object v4

    .line 305
    .local v4, "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    const/4 v14, 0x2

    new-array v0, v14, [I

    fill-array-data v0, :array_0

    .local v0, "arr$":[I
    array-length v10, v0

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v10, :cond_4

    aget v7, v0, v6

    .line 306
    .local v7, "id":I
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 307
    .local v13, "rot":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 308
    const v14, 0x7f10013a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 309
    .local v5, "home":Landroid/widget/ImageView;
    const v14, 0x7f10013b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 310
    .local v12, "recent":Landroid/widget/ImageView;
    const v14, 0x7f10013c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 311
    .local v11, "menu":Landroid/widget/ImageView;
    const v14, 0x7f100139

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 312
    .local v1, "back":Landroid/widget/ImageView;
    const v14, 0x7f10013d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .local v8, "imeSwitcher":Landroid/widget/ImageView;
    move-object v14, v5

    .line 315
    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    move-object v14, v12

    .line 316
    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    move-object v14, v11

    .line 317
    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    move-object v14, v1

    .line 318
    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    move-object v14, v8

    .line 319
    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonGlow(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    .line 322
    const v14, 0x7f100143

    invoke-virtual {p0, v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-ne v13, v14, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v9, 0x0

    .line 325
    .local v9, "isLandscape":Z
    :goto_2
    invoke-virtual {v4, v5, v9}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateHomeTransitions(Landroid/widget/ImageView;Z)V

    .line 326
    invoke-virtual {v4, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateRecentTransitions(Landroid/widget/ImageView;Z)V

    .line 327
    invoke-virtual {v4, v11, v9}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateMenuTransitions(Landroid/widget/ImageView;Z)V

    .line 328
    invoke-virtual {v4, v1, v9, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateBackTransitions(Landroid/widget/ImageView;ZZ)V

    .line 329
    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V

    .line 305
    .end local v1    # "back":Landroid/widget/ImageView;
    .end local v5    # "home":Landroid/widget/ImageView;
    .end local v8    # "imeSwitcher":Landroid/widget/ImageView;
    .end local v9    # "isLandscape":Z
    .end local v11    # "menu":Landroid/widget/ImageView;
    .end local v12    # "recent":Landroid/widget/ImageView;
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "arr$":[I
    .end local v2    # "backAlt":Z
    .end local v3    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v4    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v6    # "i$":I
    .end local v7    # "id":I
    .end local v10    # "len$":I
    .end local v13    # "rot":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 323
    .restart local v0    # "arr$":[I
    .restart local v1    # "back":Landroid/widget/ImageView;
    .restart local v2    # "backAlt":Z
    .restart local v3    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .restart local v4    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .restart local v5    # "home":Landroid/widget/ImageView;
    .restart local v6    # "i$":I
    .restart local v7    # "id":I
    .restart local v8    # "imeSwitcher":Landroid/widget/ImageView;
    .restart local v10    # "len$":I
    .restart local v11    # "menu":Landroid/widget/ImageView;
    .restart local v12    # "recent":Landroid/widget/ImageView;
    .restart local v13    # "rot":Landroid/view/View;
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 332
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateHomeTransitions(Landroid/widget/ImageView;Z)V

    .line 333
    const/4 v14, 0x0

    invoke-virtual {v3, v12, v14}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateRecentTransitions(Landroid/widget/ImageView;Z)V

    .line 334
    const/4 v14, 0x0

    invoke-virtual {v3, v11, v14}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateMenuTransitions(Landroid/widget/ImageView;Z)V

    .line 335
    const/4 v14, 0x0

    invoke-virtual {v3, v1, v14, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateBackTransitions(Landroid/widget/ImageView;ZZ)V

    .line 336
    const/4 v14, 0x0

    invoke-virtual {v3, v8, v14}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V

    goto :goto_3

    .line 342
    .end local v1    # "back":Landroid/widget/ImageView;
    .end local v5    # "home":Landroid/widget/ImageView;
    .end local v7    # "id":I
    .end local v8    # "imeSwitcher":Landroid/widget/ImageView;
    .end local v11    # "menu":Landroid/widget/ImageView;
    .end local v12    # "recent":Landroid/widget/ImageView;
    .end local v13    # "rot":Landroid/view/View;
    :cond_4
    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateResources()V

    .line 344
    .end local v0    # "arr$":[I
    .end local v2    # "backAlt":Z
    .end local v3    # "buttonTransitionsRot0":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v4    # "buttonTransitionsRot90":Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    :cond_5
    return-void

    .line 305
    :array_0
    .array-data 4
        0x7f100137
        0x7f100143
    .end array-data
.end method
