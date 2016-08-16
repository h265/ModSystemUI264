.class Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;
.super Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;
.source "NavigationButtonTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonTransitions"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resId"    # [I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->this$0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    .line 423
    const/16 v2, 0x8

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p3, v7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p3, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p3, v9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x6

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x7

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 433
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->mContext:Landroid/content/Context;

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->getNumberOfLayers()I

    move-result v1

    .line 437
    .local v1, "nLayers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setId(II)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setLayer(I)V

    .line 443
    return-void
.end method


# virtual methods
.method public updateCrossfadeDrawable([I)V
    .locals 7
    .param p1, "resId"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 451
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 452
    aget v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 454
    aget v1, p1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 456
    aget v1, p1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 458
    aget v1, p1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 460
    aget v1, p1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 462
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 464
    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 466
    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->invalidateSelf()V

    .line 472
    :cond_0
    return-void
.end method
