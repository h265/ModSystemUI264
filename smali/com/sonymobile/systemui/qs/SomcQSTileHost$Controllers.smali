.class final Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
.super Ljava/lang/Object;
.source "SomcQSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/SomcQSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Controllers"
.end annotation


# instance fields
.field public mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 390
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 394
    return-void
.end method
