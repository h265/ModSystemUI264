.class Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;
.super Ljava/lang/Object;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public battery:Landroid/view/View;

.field batteryLevelvisible:Z

.field public parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "battery"    # Landroid/view/View;

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->parent:Landroid/view/View;

    .line 507
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->battery:Landroid/view/View;

    .line 508
    return-void
.end method
