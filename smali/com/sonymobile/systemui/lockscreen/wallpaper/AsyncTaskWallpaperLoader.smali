.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

.field private final mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

.field private final mUserId:I

.field private final mWallpaperUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Landroid/net/Uri;ILcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockscreenStreamOpener"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;
    .param p3, "wallpaperUri"    # Landroid/net/Uri;
    .param p4, "userId"    # I
    .param p5, "loadWallpaperInterface"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    .line 42
    iput p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    .line 43
    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    .line 44
    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    .line 45
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const/4 v3, 0x0

    .line 82
    :cond_0
    :goto_0
    return-object v3

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    .local v3, "wallpaperBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 61
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    invoke-static {v4, v5}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperUtils;->getUserSpecificContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, "userContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    invoke-virtual {v4, v2, v5}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;->openInputStreamForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 74
    :cond_2
    if-eqz v1, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "AsyncTaskWallpaperLoader"

    const-string v5, "IOException when closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v4

    .line 74
    if-eqz v1, :cond_0

    .line 76
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 77
    :catch_2
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "AsyncTaskWallpaperLoader"

    const-string v5, "IOException when closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 79
    :cond_3
    :goto_1
    throw v4

    .line 77
    :catch_3
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AsyncTaskWallpaperLoader"

    const-string v6, "IOException when closing stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    invoke-interface {v0, p1, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;->wallpaperLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
