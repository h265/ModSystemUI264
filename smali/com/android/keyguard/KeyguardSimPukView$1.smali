.class Lcom/android/keyguard/KeyguardSimPukView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSimPukView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->closeKeyGuard()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSubIdUpdated(II)V
    .locals 1
    .param p1, "oldSubId"    # I
    .param p2, "newSubId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onSubInfoContentChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "sValue"    # Ljava/lang/String;
    .param p4, "iValue"    # I

    .prologue
    .line 90
    if-eqz p2, :cond_0

    const-string v0, "display_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 95
    :cond_0
    return-void
.end method
