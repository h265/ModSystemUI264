.class Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;
.super Ljava/lang/Object;
.source "SpeechRecorder.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$300(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;->onBeginningOfSpeech()V

    .line 115
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 110
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$300(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;->onError(I)V

    .line 102
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 97
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$300(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;->onResults(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 4
    .param p1, "rmsdB"    # F

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->dB2Power(F)F
    invoke-static {v1, p1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$000(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F

    move-result v0

    .line 71
    .local v0, "power":F
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F
    invoke-static {v1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$100(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # setter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F
    invoke-static {v1, p1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$102(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F

    .line 76
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F
    invoke-static {v3}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$100(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)F

    move-result v3

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->dB2Power(F)F
    invoke-static {v2, v3}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$000(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F

    move-result v2

    # setter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsPowerMax:F
    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$202(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;
    invoke-static {v1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$300(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsPowerMax:F
    invoke-static {v2}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->access$200(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)F

    move-result v2

    div-float v2, v0, v2

    invoke-interface {v1, v2}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;->onRmsChanged(F)V

    .line 80
    return-void
.end method
