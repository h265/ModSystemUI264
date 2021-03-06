.class public Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;
.super Ljava/lang/Object;
.source "StaminaControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/StaminaController;


# static fields
.field private static final CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mEnabled:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->staminaSettingsChanged()V

    return-void
.end method

.method private staminaSettingsChanged()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->isStaminaEnabled()Z

    move-result v2

    .line 83
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .line 84
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;->onStaminaSettingsChanged(Z)V

    goto :goto_0

    .line 86
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private staminaSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->isStaminaEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;->onStaminaSettingsChanged(Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->staminaSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 98
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "xperia_power_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaminaEnabled()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    .local v7, "mEnabled":Z
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v7

    .line 64
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public setStaminaEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    return v0
.end method
