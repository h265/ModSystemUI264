.class Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;
.super Ljava/lang/Object;
.source "StartClockPickerTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongPressCompletedRunnable"
.end annotation


# instance fields
.field private final mStartClockPickerTouchListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V
    .locals 1
    .param p1, "controller"    # Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->mStartClockPickerTouchListener:Ljava/lang/ref/WeakReference;

    .line 206
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->mStartClockPickerTouchListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;

    .line 214
    .local v0, "controller":Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v1, v2

    .line 215
    .local v1, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    # invokes: Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->startPicker(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->access$000(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;Landroid/view/View;)V

    .line 219
    :cond_0
    # invokes: Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->access$100(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V

    .line 221
    :cond_1
    return-void

    .line 214
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->mView:Ljava/lang/ref/WeakReference;

    .line 233
    :cond_0
    return-void
.end method
