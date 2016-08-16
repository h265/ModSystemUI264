.class Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;
.super Landroid/database/ContentObserver;
.source "LockscreenWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoading()V

    .line 49
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->onChange(Z)V

    .line 53
    return-void
.end method
