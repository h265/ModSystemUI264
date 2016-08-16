.class public Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;
.super Ljava/lang/Object;
.source "VoiceUnlockHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorMessageDisplayer:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHintMessageDisplayer:Ljava/lang/Runnable;

.field private mHintText:Landroid/widget/TextView;

.field private final mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMicrophoneFrame:Landroid/view/ViewGroup;

.field private mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

.field private mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

.field private final mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

.field private mVoiceUnlockUser:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "voiceUnlockKeyguardDismisser"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;
    .param p4, "voiceUnlockRetryCallback"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$2;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

    .line 105
    iput-object p4, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

    .line 106
    iput-object p2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleStartSpeechRecorder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->validateVoiceUnlockPhrase(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleResultSpeechRecorder(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z

    move-result v0

    return v0
.end method

.method private handleResultSpeechRecorder(Z)V
    .locals 4
    .param p1, "passwordOk"    # Z

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    .line 381
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_error_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    :cond_0
    if-eqz p1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;->dismissWithVoiceUnlock()V

    .line 390
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopSpeechRecorder()V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->OFF:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    goto :goto_0
.end method

.method private handleStartSpeechRecorder()V
    .locals 3

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    .line 314
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_or_short_unlock_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_or_short_unlock_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->start()V

    .line 321
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    .line 323
    :cond_1
    return-void
.end method

.method private isScreenTurnedOn()Z
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 299
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private isSpeechRecognizerAvailable()Z
    .locals 5

    .prologue
    .line 279
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 280
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.settings.intent.action.VOICE_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 283
    .local v2, "voiceUnlockEnabled":Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v2

    .line 286
    :cond_0
    return v2
.end method

.method private isVoiceUnlockEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.lockscreen.voice.unlock.enabled"

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removeCallbacks()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method private stopIfRequestedToStop()Z
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;->stop()Z

    move-result v0

    .line 304
    .local v0, "stop":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockUser:I

    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopSpeechRecorder()V

    .line 309
    :cond_1
    return v0
.end method

.method private stopSpeechRecorder()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->stop()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    .line 270
    return-void
.end method

.method private validateVoiceUnlockPhrase(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "unlockPhraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 225
    .local v3, "passwordOk":Z
    const/4 v1, 0x0

    .line 227
    .local v1, "keys":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "somc.lockscreen.voice.unlock.phrase"

    iget-object v8, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "keysString":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 232
    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    const/4 v5, 0x0

    .local v5, "unlockPhraseIndex":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 237
    const/4 v0, 0x0

    .local v0, "keyPhraseIndex":I
    :goto_1
    if-eqz v1, :cond_1

    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 239
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v4, "unlockPhrase":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 242
    const/4 v3, 0x1

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v4    # "unlockPhrase":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "keyPhraseIndex":I
    .end local v5    # "unlockPhraseIndex":I
    :cond_2
    return v3
.end method


# virtual methods
.method public displayVoiceUnlockHint(I)V
    .locals 4
    .param p1, "delayInMillis"    # I

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    if-lez p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ensureVoiceUnlockVisibility(ZLandroid/content/res/Resources;)V
    .locals 5
    .param p1, "showing"    # Z
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/16 v4, 0x8

    .line 359
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 360
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 364
    .local v2, "textSize":F
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 367
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    neg-float v3, v2

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 368
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    sget v3, Lcom/android/keyguard/R$integer;->somc_voice_unlock_hint_visibility:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 371
    .local v0, "hintVisibility":I
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    .end local v0    # "hintVisibility":I
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "textSize":F
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideVoiceUnlockHint()V
    .locals 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :cond_0
    return-void
.end method

.method public startSpeechRecorder(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "microphoneFrame"    # Landroid/view/ViewGroup;
    .param p2, "hintText"    # Landroid/widget/TextView;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isScreenTurnedOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "VoiceUnlockHelper"

    const-string v1, "There is already an instance of the SpeechRecorder!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockUser:I

    .line 134
    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    .line 135
    iput-object p2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_voice_unlock_microphone_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    .line 140
    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    .line 213
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleStartSpeechRecorder()V

    goto :goto_0
.end method
