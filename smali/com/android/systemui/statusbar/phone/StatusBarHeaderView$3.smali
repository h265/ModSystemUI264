.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;
.super Landroid/database/ContentObserver;
.source "StatusBarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->checkUsmEnabled()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 224
    return-void
.end method
