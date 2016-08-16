.class Lcom/android/systemui/qs/tiles/NotificationsTile$3;
.super Ljava/lang/Object;
.source "NotificationsTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NotificationsTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NotificationsTile;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 208
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 176
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$400(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v1

    .line 177
    .local v1, "volumeComponent":Lcom/android/systemui/volume/VolumeComponent;
    new-instance v2, Lcom/android/systemui/volume/VolumePanel;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$500(Lcom/android/systemui/qs/tiles/NotificationsTile;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$600(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v4

    invoke-direct {v2, v3, p3, v4}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 178
    .local v2, "vp":Lcom/android/systemui/volume/VolumePanel;
    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumePanel;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "v":Landroid/view/View;
    new-instance v3, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;-><init>(Lcom/android/systemui/qs/tiles/NotificationsTile$3;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    new-instance v3, Lcom/android/systemui/qs/tiles/NotificationsTile$3$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile$3$2;-><init>(Lcom/android/systemui/qs/tiles/NotificationsTile$3;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumePanel;->setZenModePanelCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 207
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    move-object p2, v0

    .line 208
    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f0d012d

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 167
    return-void
.end method
