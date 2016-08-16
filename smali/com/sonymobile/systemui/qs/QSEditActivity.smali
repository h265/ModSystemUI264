.class public Lcom/sonymobile/systemui/qs/QSEditActivity;
.super Landroid/app/Activity;
.source "QSEditActivity.java"


# instance fields
.field private mHadFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    const v0, 0x7f05006b

    const v1, 0x7f05006c

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/qs/QSEditActivity;->overridePendingTransition(II)V

    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 47
    const v0, 0x7f05006b

    const v1, 0x7f05006c

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/qs/QSEditActivity;->overridePendingTransition(II)V

    .line 48
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 33
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->finish()V

    .line 35
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    .line 36
    return-void
.end method
