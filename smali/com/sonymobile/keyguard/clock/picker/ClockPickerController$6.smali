.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->sortClockList(Ljava/util/LinkedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .param p2, "rhs"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .prologue
    .line 456
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 458
    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_1
    iget v0, p2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    iget v1, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 451
    check-cast p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;->compare(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)I

    move-result v0

    return v0
.end method
