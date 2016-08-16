.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;
.super Ljava/lang/Object;
.source "RealDefaultKeyguardFactoryProvider.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;


# instance fields
.field private final mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

.field private final mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V
    .locals 2
    .param p1, "metaDataLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;
    .param p2, "customizationResourceLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardPluginMetaDataLoader or CustomizationResourceLoader cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 46
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

    .line 47
    return-void
.end method

.method private getClockWithHighestPriority()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 71
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v7}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAvailableKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v1

    .line 74
    .local v1, "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    const/high16 v4, -0x80000000

    .line 75
    .local v4, "highestPrioritySoFar":I
    const/4 v3, 0x0

    .line 76
    .local v3, "factoryEntryToUse":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 78
    .local v2, "factoryEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    iget v7, v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    if-le v7, v4, :cond_0

    .line 79
    iget v4, v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    .line 80
    move-object v3, v2

    goto :goto_0

    .line 85
    .end local v2    # "factoryEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    .end local v3    # "factoryEntryToUse":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .end local v4    # "highestPrioritySoFar":I
    :cond_2
    :goto_1
    return-object v6

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v7, "PriorityBasedDefaultKeyguardFactoryProvider"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public getDefaultKeyguardFactoryClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;->getSomcCustomizedDefaultFullyQualifiedClockPluginName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "defaultFactoryClassName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->getClockWithHighestPriority()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method
