.class public Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATES:[I

.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field private mLastDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "BluetoothController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    .line 87
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    .line 88
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    .line 459
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 98
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 100
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 102
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 104
    const-string v1, "BluetoothController"

    const-string v2, "Default BT adapter not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->register()V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->bindAllProfiles()V

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getProfileFromAction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateBondedDevices()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setConnecting(Z)V

    return-void
.end method

.method private bindAllProfiles()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 408
    return-void
.end method

.method private connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V
    .locals 18
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .param p2, "connect"    # Z

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v15, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    if-nez v15, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 234
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v15, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 235
    .local v7, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz p2, :cond_3

    const-string v1, "connect"

    .line 236
    .local v1, "action":Ljava/lang/String;
    :goto_1
    sget-boolean v15, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v14

    .line 238
    .local v14, "uuids":[Landroid/os/ParcelUuid;
    if-nez v14, :cond_4

    .line 239
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No uuids returned, aborting "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v1    # "action":Ljava/lang/String;
    .end local v14    # "uuids":[Landroid/os/ParcelUuid;
    :cond_3
    const-string v1, "disconnect"

    goto :goto_1

    .line 242
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v14    # "uuids":[Landroid/os/ParcelUuid;
    :cond_4
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 243
    .local v12, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_7

    .line 245
    move-object v2, v14

    .local v2, "arr$":[Landroid/os/ParcelUuid;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_8

    aget-object v13, v2, v6

    .line 246
    .local v13, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToProfile(Landroid/os/ParcelUuid;)I

    move-result v11

    .line 247
    .local v11, "profile":I
    if-nez v11, :cond_6

    .line 248
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Device "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has an unsupported uuid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 252
    :cond_6
    iget-object v15, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 253
    .local v3, "connected":Z
    if-nez v3, :cond_5

    .line 254
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 259
    .end local v2    # "arr$":[Landroid/os/ParcelUuid;
    .end local v3    # "connected":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "profile":I
    .end local v13    # "uuid":Landroid/os/ParcelUuid;
    :cond_7
    iget-object v12, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    .line 261
    :cond_8
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v5, v15, :cond_0

    .line 262
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 263
    .restart local v11    # "profile":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v15

    if-ltz v15, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothProfile;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v10

    .line 265
    .local v10, "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    if-nez v10, :cond_a

    .line 266
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get Profile for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v10    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 268
    .restart local v10    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {v10, v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    .line 269
    .local v9, "ok":Z
    :goto_6
    sget-boolean v15, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v15, :cond_9

    const-string v16, "BluetoothController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v9, :cond_c

    const-string v15, "succeeded"

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 268
    .end local v9    # "ok":Z
    :cond_b
    invoke-interface {v10, v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    goto :goto_6

    .line 269
    .restart local v9    # "ok":Z
    :cond_c
    const-string v15, "failed"

    goto :goto_7

    .line 273
    .end local v9    # "ok":Z
    .end local v10    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_d
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get Profile for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static connectionStateToPairedDeviceState(I)I
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 214
    sget-object v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    aget v0, v1, p0

    .line 215
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    .line 218
    :goto_0
    return v1

    .line 216
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    goto :goto_0

    .line 218
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    goto :goto_0
.end method

.method private firePairedDevicesChanged()V
    .locals 3

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 412
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothPairedDevicesChanged()V

    goto :goto_0

    .line 414
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 3

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 431
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0

    .line 433
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(ZZ)V

    .line 437
    return-void
.end method

.method private static getProfileFromAction(Ljava/lang/String;)I
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x2

    .line 456
    :goto_0
    return v0

    .line 442
    :cond_0
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const/16 v0, 0xa

    goto :goto_0

    .line 446
    :cond_2
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    const/16 v0, 0x10

    goto :goto_0

    .line 448
    :cond_3
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    const/4 v0, 0x4

    goto :goto_0

    .line 450
    :cond_4
    const-string v0, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 451
    const/16 v0, 0x9

    goto :goto_0

    .line 452
    :cond_5
    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    const/4 v0, 0x5

    goto :goto_0

    .line 455
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleConnectionChange()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 375
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v4, v5, v4

    if-eq v4, v7, :cond_0

    .line 379
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 381
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 382
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 383
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 384
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 385
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    sget-object v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v4, v4, v5

    if-ne v4, v7, :cond_1

    .line 387
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 392
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v3    # "size":I
    :cond_0
    return-void

    .line 382
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "i":I
    .restart local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .restart local v3    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleUpdateBondedDevices()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 304
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v9, :cond_0

    .line 326
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 306
    .local v3, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 307
    .local v5, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    goto :goto_1

    .line 309
    .end local v5    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_1
    const/4 v1, 0x0

    .line 310
    .local v1, "bondedCount":I
    const/4 v6, 0x0

    .line 311
    .local v6, "lastBonded":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_4

    .line 312
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 313
    .local v2, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_3

    move v0, v7

    .line 314
    .local v0, "bonded":Z
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v9

    iput-boolean v0, v9, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    .line 315
    if-eqz v0, :cond_2

    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 317
    move-object v6, v2

    goto :goto_2

    .end local v0    # "bonded":Z
    :cond_3
    move v0, v8

    .line 313
    goto :goto_3

    .line 321
    .end local v2    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v8, :cond_5

    if-ne v1, v7, :cond_5

    .line 322
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 324
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnectionStates()V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    goto :goto_0
.end method

.method private handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    .line 345
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v2

    .line 349
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v3, 0x0

    .line 350
    .local v3, "stateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 351
    sget-object v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    aget v4, v4, v1

    if-ne v4, p3, :cond_3

    .line 352
    move v3, v1

    .line 356
    :cond_1
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 359
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 360
    .local v0, "N":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 361
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    if-le v4, v5, :cond_2

    .line 362
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 360
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    .end local v0    # "N":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .restart local v0    # "N":I
    :cond_4
    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    .line 366
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :goto_2
    return-void

    .line 368
    :cond_5
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2
.end method

.method private handleUpdateConnectionStates()V
    .locals 7

    .prologue
    .line 329
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 330
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 331
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 332
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v3

    .line 333
    .local v3, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 334
    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 335
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 336
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v6, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 337
    .local v5, "state":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-direct {p0, v1, v6, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 330
    .end local v5    # "state":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v4    # "j":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    .line 342
    return-void
.end method

.method private static infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .prologue
    .line 133
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bonded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",profiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 141
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 144
    if-eqz v2, :cond_0

    .line 145
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setAdapterState(I)V
    .locals 2
    .param p1, "adapterState"    # I

    .prologue
    .line 417
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 418
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    if-ne v1, v0, :cond_1

    .line 421
    :goto_1
    return-void

    .line 417
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    .restart local v0    # "enabled":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    goto :goto_1
.end method

.method private setConnecting(Z)V
    .locals 1
    .param p1, "connecting"    # Z

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    if-ne v0, p1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    goto :goto_0
.end method

.method private updateBondedDevices()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 286
    return-void
.end method

.method private updateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private updateConnectionStates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 292
    return-void
.end method

.method private updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 531
    .local v0, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v0, :cond_0

    .line 532
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-object v0

    .line 531
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V

    goto :goto_0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 156
    return-void
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
    .locals 1
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V

    .line 224
    return-void
.end method

.method public disconnect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
    .locals 1
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V

    .line 229
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 115
    const-string v3, "BluetoothController state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v3, "  mAdapter="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 117
    const-string v3, "  mEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 118
    const-string v3, "  mConnecting="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    const-string v3, "  mLastDevice="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 120
    const-string v3, "  mCallbacks.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 121
    const-string v3, "  mProfiles="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v3, "  mDeviceInfo.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 125
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 126
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 128
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_0
    return-void
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPairedDevices()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 199
    .local v4, "rt":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 202
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    if-nez v5, :cond_0

    .line 199
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;-><init>()V

    .line 204
    .local v3, "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    .line 205
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    .line 206
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    .line 207
    iget v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToPairedDeviceState(I)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    .line 208
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v3    # "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    :cond_1
    return-object v4
.end method

.method public isBluetoothConnected()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothConnecting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 183
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
