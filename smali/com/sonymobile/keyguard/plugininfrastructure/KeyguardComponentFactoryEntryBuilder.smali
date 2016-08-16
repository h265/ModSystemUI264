.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;
.super Ljava/lang/Object;
.source "KeyguardComponentFactoryEntryBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mParameters:[Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mResources:Landroid/content/res/Resources;

    .line 67
    return-void
.end method

.method private getAvailableKeyguardClockImages()[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const-string v7, "array"

    const-string v8, "com.android.systemui"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 94
    .local v4, "typedArrayId":I
    if-nez v4, :cond_1

    .line 95
    const/4 v1, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 99
    .local v2, "imagesTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 101
    .local v1, "imagesList":[I
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 102
    .local v3, "nbrOfImages":I
    new-array v1, v3, [I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 105
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    .end local v3    # "nbrOfImages":I
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v5
.end method

.method private getBooleanFromIndex(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 135
    move v0, p2

    .line 136
    .local v0, "value":Z
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, p1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method private getPreviewImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "previewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->getAvailableKeyguardClockImages()[I

    move-result-object v0

    .line 126
    .local v0, "images":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    :cond_0
    return-object v1
.end method

.method private getPriority()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->getBooleanFromIndex(IZ)Z

    move-result v0

    return v0
.end method

.method private isSelectableByThemes()Z
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->getBooleanFromIndex(IZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public build()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 8

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->getPriority()I

    move-result v3

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->getPreviewImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->isEnabled()Z

    move-result v6

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->isSelectableByThemes()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    .line 181
    .local v0, "factoryEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    goto :goto_0
.end method

.method public setFromResourceId(I)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->mParameters:[Ljava/lang/String;

    .line 78
    return-object p0
.end method
