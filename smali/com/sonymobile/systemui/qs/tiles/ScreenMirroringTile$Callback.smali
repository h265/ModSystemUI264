.class final Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;
.super Ljava/lang/Object;
.source "ScreenMirroringTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;
    .param p2, "x1"    # Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->access$200(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    .line 82
    return-void
.end method

.method public onScreenMirroringSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    # invokes: Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->refreshState()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->access$100(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    .line 77
    return-void
.end method
