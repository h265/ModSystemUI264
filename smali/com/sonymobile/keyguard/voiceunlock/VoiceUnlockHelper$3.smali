.class Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;
.super Ljava/lang/Object;
.source "VoiceUnlockHelper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->startSpeechRecorder(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$300(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->ACTIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$400(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Z

    .line 209
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 158
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleResultSpeechRecorder(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$200(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const-string v2, "results_recognition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "unlockPhrase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->validateVoiceUnlockPhrase(Ljava/util/ArrayList;)Z
    invoke-static {v2, v1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$100(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Ljava/util/ArrayList;)Z

    move-result v0

    .line 147
    .local v0, "passwordOk":Z
    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleResultSpeechRecorder(Z)V
    invoke-static {v2, v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$200(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Z)V

    .line 148
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .param p1, "amplitude"    # F

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # getter for: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$300(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setAmplitude(F)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$400(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Z

    .line 204
    return-void
.end method
