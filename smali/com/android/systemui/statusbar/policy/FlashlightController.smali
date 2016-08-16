.class public Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraAvailable:Z

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mFlashlightEnabled:Z

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$2;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 326
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$3;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$4;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$5;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    .line 365
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$6;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 77
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->initialize()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 296
    .local v0, "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 300
    .end local v0    # "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 266
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 267
    return-void
.end method

.method private dispatchError()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 263
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 270
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 271
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    .local v0, "N":I
    const/4 v1, 0x0

    .line 273
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 274
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 275
    .local v3, "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v3, :cond_3

    .line 276
    if-nez p1, :cond_1

    .line 277
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 279
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightOff()V

    goto :goto_1

    .line 290
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 280
    .restart local v0    # "N":I
    .restart local v1    # "cleanup":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 281
    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    .line 284
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 287
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_4
    if-eqz v1, :cond_5

    .line 288
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 290
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    return-void
.end method

.method private dispatchOff()V
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 259
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 181
    const-string v9, "encrypted"

    const-string v10, "ro.crypto.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "trigger_restart_min_framework"

    const-string v10, "vold.decrypt"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, v8

    .line 196
    :cond_0
    :goto_0
    return-object v4

    .line 186
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v4, v0, v3

    .line 188
    .local v4, "id":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 189
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 190
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 191
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 187
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_3
    move-object v4, v8

    .line 196
    goto :goto_0
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 162
    .local v4, "outputSizes":[Landroid/util/Size;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    .line 163
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 167
    .local v1, "chosen":Landroid/util/Size;
    move-object v0, v4

    .local v0, "arr$":[Landroid/util/Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 168
    .local v5, "s":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 169
    move-object v1, v5

    .line 167
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v5    # "s":Landroid/util/Size;
    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 251
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchError()V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    .line 255
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 146
    :cond_0
    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 151
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 152
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v0, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 156
    return-void
.end method

.method private teardown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 238
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 239
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 244
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    .line 245
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 246
    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 7
    .param p1, "forceDisable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 202
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 204
    .local v2, "enabled":Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v2, :cond_4

    .line 206
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 234
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "FlashlightController"

    const-string v5, "Error in updateFlashlight"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    goto :goto_1

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "enabled":Z
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v4, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startSession()V

    goto :goto_1

    .line 230
    .end local v2    # "enabled":Z
    :catch_1
    move-exception v1

    goto :goto_2

    .line 214
    .restart local v2    # "enabled":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 217
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 219
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 220
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 221
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    goto :goto_1

    .line 230
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "enabled":Z
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 224
    .restart local v2    # "enabled":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public killFlashlight()V
    .locals 3

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 111
    .local v0, "enabled":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void

    .line 111
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFlashlight(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eq v0, p1, :cond_0

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
