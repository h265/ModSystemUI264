.class public Lcom/sonymobile/systemui/qs/SomcQSTileHost;
.super Lcom/android/systemui/statusbar/phone/QSTileHost;
.source "SomcQSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;,
        Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    }
.end annotation


# static fields
.field private static final ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;


# instance fields
.field private mQuickSettingsTilesDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 289
    const/16 v0, 0xf

    new-array v14, v0, [Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "airplane"

    const v2, 0x7f0a002f

    const v3, 0x7f020073

    const v4, 0x7f0d00fe

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v6

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "rotation"

    const v2, 0x7f0a0030

    const v3, 0x7f0200a2

    const v4, 0x7f0d0108

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v5

    const/4 v7, 0x2

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "flashlight"

    const v2, 0x7f0a0031

    const v3, 0x7f020091

    const v4, 0x7f0d012e

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "location"

    const v2, 0x7f0a0032

    const v3, 0x7f020095

    const v4, 0x7f0d010d

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "cast"

    const v2, 0x7f0a0033

    const v3, 0x7f020086

    const v4, 0x7f0d011c

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "sync"

    const v2, 0x7f0a0034

    const v3, 0x7f020078

    const v4, 0x7f0d0016

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/4 v0, 0x6

    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v8, "roaming"

    const v9, 0x7f0a0035

    const v10, 0x7f0200a1

    const v11, 0x7f0d0100

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v7, v14, v0

    const/4 v7, 0x7

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "nfc"

    const v2, 0x7f0a0036

    const v3, 0x7f02009a

    const v4, 0x7f0d0018

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/16 v0, 0x8

    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v8, "lte"

    const v9, 0x7f0a003d

    const v10, 0x7f020097

    const v11, 0x7f0d0019

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v7, v14, v0

    const/16 v0, 0x9

    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v8, "datatraffic"

    const v9, 0x7f0a0037

    const v10, 0x7f02008f

    const v11, 0x7f0d0017

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v7, v14, v0

    const/16 v0, 0xa

    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v8, "stamina"

    const v9, 0x7f0a0038

    const v10, 0x7f0200c1

    const v11, 0x7f0d001a

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v7, v14, v0

    const/16 v7, 0xb

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "screenmirroring"

    const v2, 0x7f0a0039

    const v3, 0x7f0200a4

    const v4, 0x7f0d001b

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/16 v0, 0xc

    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v8, "tethering"

    const v9, 0x7f0a003a

    const v10, 0x7f020093

    const v11, 0x7f0d012c

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v7, v14, v0

    const/16 v7, 0xd

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "throw"

    const v2, 0x7f0a003b

    const v3, 0x7f0200c3

    const v4, 0x7f0d001c

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string v1, "volte"

    const v2, 0x7f0a003c

    const v3, 0x7f0200c6

    const v4, 0x7f0d001d

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v7

    sput-object v14, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotation"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p7, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p8, "volumeComponent"    # Lcom/android/systemui/volume/VolumeComponent;
    .param p9, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p10, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p11, "flashlight"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p12, "nfc"    # Lcom/sonymobile/systemui/statusbar/policy/NFCController;
    .param p13, "lte"    # Lcom/sonymobile/systemui/statusbar/policy/LTEController;
    .param p14, "stamina"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
    .param p15, "datatraffic"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;
    .param p16, "screenmirroring"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;
    .param p17, "tethering"    # Lcom/sonymobile/systemui/statusbar/policy/TetheringController;
    .param p18, "throwcontroller"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowController;
    .param p19, "volte"    # Lcom/sonymobile/systemui/statusbar/policy/VolteController;
    .param p20, "userSwitcher"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p21, "keyguard"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p22, "security"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 92
    invoke-direct/range {p0 .. p22}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 95
    return-void
.end method

.method private static final createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllers"    # Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    .param p2, "tile"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 354
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v7, Lcom/android/systemui/qs/QSTileView;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 355
    .local v7, "tileView":Lcom/android/systemui/qs/QSTileView;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_0

    move v5, v8

    .line 357
    .local v5, "secondaryUser":Z
    :goto_0
    new-instance v6, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    .line 358
    .local v6, "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    sget-object v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    .local v0, "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 359
    .local v3, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v10, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 360
    iget v10, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    if-eqz v10, :cond_1

    iget v10, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v7, v9

    .line 378
    .end local v3    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v7    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :goto_2
    return-object v7

    .line 355
    .end local v0    # "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "secondaryUser":Z
    .end local v6    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    .restart local v7    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 364
    .restart local v0    # "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v5    # "secondaryUser":Z
    .restart local v6    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    :cond_1
    iget-boolean v10, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    move-object v7, v9

    .line 366
    goto :goto_2

    .line 367
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v7, v9

    goto :goto_2

    .line 369
    :cond_3
    iget v9, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->iconId:I

    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 370
    iget v9, v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->labelId:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 371
    iget-object v9, v6, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 372
    iput-boolean v8, v6, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 373
    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    goto :goto_2

    .line 358
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_5
    move-object v7, v9

    .line 378
    goto :goto_2
.end method

.method public static final getEditTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTileView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTileView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/QSTileView;>;"
    .local p2, "unused":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/QSTileView;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 170
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "tileList":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 175
    const v13, 0x7f0d0002

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    const-string v13, "default"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 178
    const v13, 0x7f0d0001

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 184
    :cond_0
    new-instance v2, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;-><init>(Landroid/content/Context;)V

    .line 185
    .local v2, "controllers":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v8, "tileArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 188
    .local v12, "usedTilesCounter":I
    const/4 v11, 0x0

    .line 190
    .local v11, "unusedTilesCounter":I
    const-string v13, ","

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v1, v3

    .line 191
    .local v7, "tile":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 190
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    invoke-static {v0, v2, v7}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v10

    .line 195
    .local v10, "tileView":Lcom/android/systemui/qs/QSTileView;
    if-eqz v10, :cond_1

    .line 196
    new-instance v13, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v14, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-direct {v13, v14, v12, v7}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/android/systemui/qs/QSTileView;->setTag(Ljava/lang/Object;)V

    .line 197
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 203
    .end local v7    # "tile":Ljava/lang/String;
    .end local v10    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_3
    sget-object v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    .local v1, "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    .line 205
    .local v5, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v13, v5, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 206
    iget-object v13, v5, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v10

    .line 207
    .restart local v10    # "tileView":Lcom/android/systemui/qs/QSTileView;
    if-eqz v10, :cond_4

    .line 208
    new-instance v13, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v14, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iget-object v15, v5, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v11, v15}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/android/systemui/qs/QSTileView;->setTag(Ljava/lang/Object;)V

    .line 210
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v11, v11, 0x1

    .line 203
    .end local v10    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 215
    .end local v5    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_5
    return-void
.end method

.method public static final getMaxTiles(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private static isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllers"    # Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    .param p2, "tile"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    const-string v2, "tethering"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    const-string v2, "bt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 332
    :cond_2
    const-string v2, "roaming"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "datatraffic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    :cond_3
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    goto :goto_0

    .line 335
    :cond_4
    const-string v2, "volte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 336
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 337
    :cond_5
    const-string v2, "flashlight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 338
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 340
    :cond_6
    const-string v2, "lte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLteNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static final setTiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "selected":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "selectedList":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 230
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sysui_qs_tiles"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    return-void
.end method


# virtual methods
.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 9
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v8, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 130
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;

    iget-object v8, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;-><init>(Landroid/content/Context;)V

    .line 131
    .local v1, "controllers":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    .line 134
    .local v6, "secondaryUser":Z
    :goto_0
    sget-object v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    .local v0, "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 135
    .local v4, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v8, v4, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v4, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    if-eqz v8, :cond_2

    iget v8, v4, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    .end local v4    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_0
    :goto_2
    return-object v7

    .line 131
    .end local v0    # "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "secondaryUser":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 138
    .restart local v0    # "arr$":[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v6    # "secondaryUser":Z
    :cond_2
    iget-object v8, v4, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    iget-boolean v8, v4, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    if-nez v8, :cond_0

    .line 140
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, p1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v4    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_4
    const-string v7, "sync"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/AutoSyncTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 144
    :cond_5
    const-string v7, "roaming"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 145
    :cond_6
    const-string v7, "nfc"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/NFCTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 146
    :cond_7
    const-string v7, "lte"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/LTETile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 147
    :cond_8
    const-string v7, "datatraffic"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 148
    :cond_9
    const-string v7, "stamina"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 149
    :cond_a
    const-string v7, "screenmirroring"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_2

    .line 150
    :cond_b
    const-string v7, "throw"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_2

    .line 151
    :cond_c
    const-string v7, "volte"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/VolteTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_2

    .line 152
    :cond_d
    const-string v7, "tethering"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-direct {v7, p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_2

    .line 156
    :cond_e
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v7

    goto/16 :goto_2
.end method

.method protected loadTileSpecs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mQuickSettingsTilesDefault:Ljava/lang/String;

    .line 249
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 253
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "defaultTileList":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mQuickSettingsTilesDefault:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->recreateTiles()V

    .line 258
    :cond_0
    return-void
.end method

.method protected recreateTiles()V
    .locals 9

    .prologue
    .line 98
    sget-boolean v6, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "QSTileHost"

    const-string v7, "Recreating tiles"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v5

    .line 100
    .local v5, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 101
    .local v3, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_0

    .line 103
    .end local v3    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 104
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "tileSpec":Ljava/lang/String;
    sget-boolean v6, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    .line 108
    .local v2, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v2, :cond_2

    .line 109
    iget-object v6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    .end local v2    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :catch_0
    move-exception v1

    .line 112
    .local v1, "t":Ljava/lang/Throwable;
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating tile for spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "tileSpec":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 119
    :cond_5
    return-void
.end method
