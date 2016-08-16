.class Lcom/android/systemui/cm/UserContentObserver$2;
.super Ljava/lang/Object;
.source "UserContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/UserContentObserver;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/UserContentObserver;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/cm/UserContentObserver$2;->this$0:Lcom/android/systemui/cm/UserContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/cm/UserContentObserver$2;->this$0:Lcom/android/systemui/cm/UserContentObserver;

    invoke-virtual {v0}, Lcom/android/systemui/cm/UserContentObserver;->update()V

    .line 54
    return-void
.end method
