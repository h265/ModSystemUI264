.class public Lcom/android/systemui/qs/tiles/DataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataTile$DataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

.field private mListening:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 56
    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;-><init>(Lcom/android/systemui/qs/tiles/DataTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    .line 57
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/systemui/qs/tiles/DataTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DataTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 84
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile_data"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 88
    .local v2, "subId":[I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v5, v2, v4

    invoke-virtual {v3, v5, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "subId":[I
    :cond_2
    move v3, v4

    .line 85
    goto :goto_1
.end method


# virtual methods
.method public dataSwitchEnabled()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public handleClick()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->dataSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/DataTile;->setEnabled(Z)V

    .line 75
    :goto_1
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 96
    .local v0, "dataOn":Z
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 97
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    const v1, 0x7f02008b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 108
    :goto_1
    return-void

    .line 94
    .end local v0    # "dataOn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    .restart local v0    # "dataOn":Z
    :cond_1
    const v1, 0x7f020088

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public hasIccCard()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 155
    .local v1, "prfDataSlotId":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 156
    .local v2, "simState":I
    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    move v0, v3

    .line 158
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    .end local v0    # "active":Z
    .end local v1    # "prfDataSlotId":I
    .end local v2    # "simState":I
    :goto_1
    return v3

    .restart local v1    # "prfDataSlotId":I
    .restart local v2    # "simState":I
    :cond_0
    move v0, v4

    .line 156
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_1
    move v3, v4

    .line 158
    goto :goto_1

    .line 160
    .end local v0    # "active":Z
    .end local v1    # "prfDataSlotId":I
    .end local v2    # "simState":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    goto :goto_1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->startObserving()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->endObserving()V

    goto :goto_0
.end method
