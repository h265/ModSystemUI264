.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCastDevicesChanged()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 441
    return-void
.end method
