.class public Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
.super Ljava/lang/Object;
.source "NavigationButtonTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;
    }
.end annotation


# static fields
.field private static final BACK_IDS:[I

.field private static final BACK_IME_IDS:[I

.field private static final BACK_IME_LAND_IDS:[I

.field private static final BACK_LAND_IDS:[I

.field private static final HOME_IDS:[I

.field private static final HOME_LAND_IDS:[I

.field private static final IME_SWITCHER_IDS:[I

.field private static final IME_SWITCHER_LAND_IDS:[I

.field private static final MENU_IDS:[I

.field private static final MENU_LAND_IDS:[I

.field private static final RECENT_IDS:[I

.field private static final RECENT_LAND_IDS:[I


# instance fields
.field private final HIGH_END:Z

.field private mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_IDS:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_LAND_IDS:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_IDS:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_LAND_IDS:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IDS:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_LAND_IDS:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_IDS:[I

    .line 135
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_LAND_IDS:[I

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_IDS:[I

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_LAND_IDS:[I

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_IDS:[I

    .line 189
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_LAND_IDS:[I

    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x7f02040e
        0x7f0200ec
        0x7f02041a
        0x7f020426
        0x7f0203f6
        0x7f020402
        0x7f0200ec
        0x7f0200ec
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x7f020414
        0x7f0200ed
        0x7f020420
        0x7f02042c
        0x7f0203fc
        0x7f020408
        0x7f0200ed
        0x7f0200ed
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x7f020410
        0x7f0200f2
        0x7f02041c
        0x7f020428
        0x7f0203f8
        0x7f020404
        0x7f0200f2
        0x7f0200f2
    .end array-data

    .line 83
    :array_3
    .array-data 4
        0x7f020416
        0x7f0200f3
        0x7f020422
        0x7f02042e
        0x7f0203fe
        0x7f02040a
        0x7f0200f3
        0x7f0200f3
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x7f02040c
        0x7f0200e8
        0x7f020418
        0x7f020424
        0x7f0203f4
        0x7f020400
        0x7f0200e8
        0x7f0200e8
    .end array-data

    .line 109
    :array_5
    .array-data 4
        0x7f020412
        0x7f0200eb
        0x7f02041e
        0x7f02042a
        0x7f0203fa
        0x7f020406
        0x7f0200eb
        0x7f0200eb
    .end array-data

    .line 122
    :array_6
    .array-data 4
        0x7f02040d
        0x7f0200e9
        0x7f020419
        0x7f020425
        0x7f0203f5
        0x7f020401
        0x7f0200e9
        0x7f0200e9
    .end array-data

    .line 135
    :array_7
    .array-data 4
        0x7f020413
        0x7f0200ea
        0x7f02041f
        0x7f02042b
        0x7f0203fb
        0x7f020407
        0x7f0200ea
        0x7f0200ea
    .end array-data

    .line 148
    :array_8
    .array-data 4
        0x7f02040f
        0x7f0200f0
        0x7f02041b
        0x7f020427
        0x7f0203f7
        0x7f020403
        0x7f0200f0
        0x7f0200f0
    .end array-data

    .line 161
    :array_9
    .array-data 4
        0x7f020415
        0x7f0200f1
        0x7f020421
        0x7f02042d
        0x7f0203fd
        0x7f020409
        0x7f0200f1
        0x7f0200f1
    .end array-data

    .line 174
    :array_a
    .array-data 4
        0x7f020411
        0x7f020037
        0x7f02041d
        0x7f020429
        0x7f0203f9
        0x7f020405
        0x7f020037
        0x7f020037
    .end array-data

    .line 189
    :array_b
    .array-data 4
        0x7f020417
        0x7f020037
        0x7f020423
        0x7f02042f
        0x7f0203ff
        0x7f02040b
        0x7f020037
        0x7f020037
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    .line 418
    return-void
.end method


# virtual methods
.method public finishAnimations()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 413
    :cond_4
    return-void
.end method

.method public startTransitions(II)V
    .locals 1
    .param p1, "newLayer"    # I
    .param p2, "duration"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 388
    :cond_4
    return-void
.end method

.method public updateBackTransitions(Landroid/widget/ImageView;ZZ)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z
    .param p3, "useBackImeIcon"    # Z

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_4

    .line 256
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const v3, 0x7f0200ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 257
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const v3, 0x7f0200eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v3, 0x7f0200e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 266
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_4
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_LAND_IDS:[I

    .line 269
    .local v2, "resId":[I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_8

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    goto :goto_0

    .line 266
    .end local v2    # "resId":[I
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_IDS:[I

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_LAND_IDS:[I

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IDS:[I

    goto :goto_2

    .line 272
    .restart local v2    # "resId":[I
    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateHomeTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    const v3, 0x7f0200ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 233
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_LAND_IDS:[I

    .line 234
    .local v2, "resId":[I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    goto :goto_0

    .line 233
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_IDS:[I

    goto :goto_2

    .line 237
    .restart local v2    # "resId":[I
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f020037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 353
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_LAND_IDS:[I

    .line 354
    .local v2, "resId":[I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    goto :goto_0

    .line 353
    .end local v2    # "resId":[I
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_IDS:[I

    goto :goto_1

    .line 357
    .restart local v2    # "resId":[I
    :cond_3
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateMenuTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 318
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 319
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    const v3, 0x7f0200f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 322
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 319
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 326
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_LAND_IDS:[I

    .line 327
    .local v2, "resId":[I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    goto :goto_0

    .line 326
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_IDS:[I

    goto :goto_2

    .line 330
    .restart local v2    # "resId":[I
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 331
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateRecentTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 289
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 290
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    const v3, 0x7f0200f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 290
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 297
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_LAND_IDS:[I

    .line 298
    .local v2, "resId":[I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    goto :goto_0

    .line 297
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_IDS:[I

    goto :goto_2

    .line 301
    .restart local v2    # "resId":[I
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
