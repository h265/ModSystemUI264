.class public Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;
.super Ljava/lang/Object;
.source "ForegroundChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mActivity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHost:Lcom/android/systemui/qs/QSTile$Host;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    .line 29
    iput-object p2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getForegroundActivityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 43
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 47
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "curActivity":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 38
    :cond_0
    return-void
.end method
