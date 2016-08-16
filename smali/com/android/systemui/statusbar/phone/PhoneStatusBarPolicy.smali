.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field private static final DEBUG:Z

.field private static final NFC_ICON_ENABLE:Z


# instance fields
.field private mBluetoothEnabled:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverForAll:Landroid/content/BroadcastReceiver;

.field private mRemoveCastIconRunnable:Ljava/lang/Runnable;

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mZen:I

.field private mZenVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 68
    const-string v0, "ro.nfc.icon.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->NFC_ICON_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p3, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 99
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiverForAll:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    .line 430
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 437
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 155
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 156
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 159
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.sonymobile.intent.action.SIM2_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v0, "com.sonyericsson.telephony.intent.action.HAC_ENABLED_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v3, "filterForAll":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiverForAll:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 177
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 178
    .local v9, "numPhones":I
    new-array v0, v9, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 179
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v7

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v2, 0x7f0203b1

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v2, 0x7f020246

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const v2, 0x7f020190

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    const v2, 0x7f0203af

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "zen"

    const v2, 0x7f0203c3

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "zen"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const v2, 0x7f020245

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "hac"

    const v2, 0x7f0201d7

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "hac"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 219
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 225
    .local v8, "listener":Landroid/os/storage/StorageEventListener;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 229
    .end local v8    # "listener":Landroid/os/storage/StorageEventListener;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cast"

    const v2, 0x7f020191

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cast"

    invoke-virtual {v0, v1, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "nfc"

    const v2, 0x7f0201da

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->NFC_ICON_ENABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isNfcEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "hotspot"

    const v2, 0x7f0201d8

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "hotspot"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 242
    return-void

    :cond_2
    move v0, v10

    .line 235
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSDCardtoAbsent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHAC(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFC(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 256
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 257
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 262
    :goto_1
    return-object v2

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isNfcEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 446
    const/4 v0, 0x0

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    const/4 v0, 0x0

    .line 449
    .local v0, "isNfcEnabled":Z
    if-eqz p0, :cond_0

    .line 450
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 451
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isSdCardInsert(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAlarm()V
    .locals 4

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 272
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 273
    .local v1, "alarmSet":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 274
    return-void

    .line 272
    .end local v1    # "alarmSet":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final updateBluetooth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 364
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 365
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v2, 0x7f020192

    .line 366
    .local v2, "iconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0077

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 370
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 371
    const v2, 0x7f020193

    .line 372
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0076

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 380
    return-void

    :cond_1
    move v3, v4

    .line 369
    goto :goto_0

    .line 375
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_1
.end method

.method private updateCast()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "isCasting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 410
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-eq v3, v9, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 412
    :cond_1
    const/4 v2, 0x1

    .line 416
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCast: isCasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    if-eqz v2, :cond_4

    .line 419
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    const v5, 0x7f020191

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 421
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    invoke-virtual {v3, v4, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBarPolicy"

    const-string v4, "updateCast: hiding icon in 3 sec..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private final updateHAC(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    const-string v1, "hacEnabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 404
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hac"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method private final updateNFC(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 459
    const-string v4, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 460
    .local v1, "state":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 462
    .local v0, "enabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "nfc"

    if-eqz v0, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->NFC_ICON_ENABLE:Z

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 463
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v3

    .line 460
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_1
    move v2, v3

    .line 462
    goto :goto_1
.end method

.method private final updateSDCardtoAbsent()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sdcard_absent"

    const v3, 0x7f0201db

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sdcard_absent"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isSdCardInsert(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 288
    .local v1, "phoneId":I
    :goto_0
    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-ltz v1, :cond_0

    .line 290
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 314
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 316
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    return-void

    .line 286
    .end local v1    # "phoneId":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    .restart local v1    # "phoneId":I
    :cond_2
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 296
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 299
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 300
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 303
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 305
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 306
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 309
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 312
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    const-string v4, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    move v1, v2

    .line 387
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTTY: enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    if-eqz v1, :cond_3

    .line 391
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "updateTTY: set TTY on"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f0203b1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 400
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v3

    .line 385
    goto :goto_0

    .line 397
    .restart local v1    # "enabled":Z
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneStatusBarPolicy"

    const-string v4, "updateTTY: set TTY off"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateVolumeZen()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 319
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 321
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v6, 0x0

    .line 322
    .local v6, "zenVisible":Z
    const/4 v5, 0x0

    .line 323
    .local v5, "zenIconId":I
    const/4 v4, 0x0

    .line 325
    .local v4, "zenDescription":Ljava/lang/String;
    const/4 v3, 0x0

    .line 326
    .local v3, "volumeVisible":Z
    const/4 v2, 0x0

    .line 327
    .local v2, "volumeIconId":I
    const/4 v1, 0x0

    .line 329
    .local v1, "volumeDescription":Ljava/lang/String;
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v11, :cond_6

    .line 330
    const/4 v6, 0x1

    .line 331
    const v5, 0x7f0203c4

    .line 332
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0147

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-eq v7, v11, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 341
    const/4 v3, 0x1

    .line 342
    const v2, 0x7f020245

    .line 343
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_1
    if-eqz v6, :cond_2

    .line 347
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "zen"

    invoke-virtual {v7, v8, v5, v9, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 349
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v6, v7, :cond_3

    .line 350
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "zen"

    invoke-virtual {v7, v8, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 351
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 354
    :cond_3
    if-eqz v3, :cond_4

    .line 355
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "volume"

    invoke-virtual {v7, v8, v2, v9, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 357
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v7, :cond_5

    .line 358
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "volume"

    invoke-virtual {v7, v8, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 359
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 361
    :cond_5
    return-void

    .line 333
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v10, :cond_0

    .line 334
    const/4 v6, 0x1

    .line 335
    const v5, 0x7f0203c3

    .line 336
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0148

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public setZenMode(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 268
    return-void
.end method
