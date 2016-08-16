.class public Lcom/adi/rom/interface/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CONTEXT:Landroid/content/Context;

.field private static PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, ""

    sput-object v0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getArrayResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBoolResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static getDimenResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntegerResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableArrayResId(Ljava/lang/String;)[I
    .locals 5
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 88
    sget-object v2, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "styleable"

    sget-object v4, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 92
    .local v0, "find":[I
    return-object v0
.end method

.method public static getStyleableResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "styleable"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getXmlResId(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "xml"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    .line 14
    sput-object p1, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    .line 16
    return-void
.end method
