.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/INotificationManager;

.field private mOldZen:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRequesting:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "ZenModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mOldZen:I

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode_config_etag"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 88
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    .line 90
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireExitConditionChanged()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method private fireConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 214
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 216
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireEffectsSuppressorChanged()V
    .locals 3

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 196
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    goto :goto_0

    .line 198
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireExitConditionChanged()V
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v1

    .line 220
    .local v1, "exitCondition":Landroid/service/notification/Condition;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitCondition changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 222
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onExitConditionChanged(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 224
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_1
    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 3

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 190
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    goto :goto_0

    .line 192
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireZenAvailableChanged(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 208
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    goto :goto_0

    .line 210
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 202
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    goto :goto_0

    .line 204
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private updateConditions([Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Landroid/service/notification/Condition;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 229
    .local v1, "c":Landroid/service/notification/Condition;
    iget v4, v1, Landroid/service/notification/Condition;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 228
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    .end local v1    # "c":Landroid/service/notification/Condition;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Landroid/service/notification/Condition;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getExitCondition()Landroid/service/notification/Condition;
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 155
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v1

    .line 161
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOldZen()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mOldZen:I

    return v0
.end method

.method public getZen()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    return v0
.end method

.method public isZenAvailable()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public requestConditions(Z)V
    .locals 3
    .param p1, "request"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 140
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUserId(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 172
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 181
    return-void
.end method

.method public setZen(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->getZen()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mOldZen:I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 117
    return-void
.end method
