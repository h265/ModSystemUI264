.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mPermanentGrant:Z

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permanentGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 209
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isScreenshotDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-static {p0}, Landroid/app/admin/PolicyNotification;->showScreenshotPolicyNotification(Landroid/content/Context;)V

    .line 211
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Screenshots have been disabled by EAS."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4, p3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 216
    .local v2, "projection":Landroid/media/projection/IMediaProjection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 218
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 224
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 200
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    .line 201
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 183
    if-ne p2, v1, :cond_0

    .line 184
    const/4 v1, -0x1

    :try_start_0
    iget v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 80
    const-string v20, "media_projection"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 81
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 170
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 91
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 92
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 101
    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v11

    .line 107
    .local v11, "e":Landroid/os/RemoteException;
    const-string v20, "MediaProjectionPermissionActivity"

    const-string v21, "Error checking projection permissions"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    .line 93
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 94
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "MediaProjectionPermissionActivity"

    const-string v21, "unable to look up package name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 112
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v17, Landroid/text/TextPaint;

    invoke-direct/range {v17 .. v17}, Landroid/text/TextPaint;-><init>()V

    .line 113
    .local v17, "paint":Landroid/text/TextPaint;
    const/high16 v20, 0x42280000    # 42.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 115
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 121
    .local v12, "label":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 122
    .local v13, "labelLength":I
    const/4 v15, 0x0

    .line 123
    .local v15, "offset":I
    :goto_1
    if-ge v15, v13, :cond_3

    .line 124
    invoke-virtual {v12, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 125
    .local v10, "codePoint":I
    invoke-static {v10}, Ljava/lang/Character;->getType(I)I

    move-result v18

    .line 126
    .local v18, "type":I
    const/16 v20, 0xd

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0xf

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0xe

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 129
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u2026"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 135
    .end local v10    # "codePoint":I
    .end local v18    # "type":I
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 139
    :cond_4
    const/high16 v20, 0x43fa0000    # 500.0f

    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v12, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 141
    .local v19, "unsanitizedAppName":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "appName":Ljava/lang/String;
    const v20, 0x7f0d016c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "actionText":Ljava/lang/String;
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    .local v14, "message":Landroid/text/SpannableString;
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 147
    .local v7, "appNameIndex":I
    if-ltz v7, :cond_5

    .line 148
    new-instance v20, Landroid/text/style/StyleSpan;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v7

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v7, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    :cond_5
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0d016f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const/high16 v21, 0x1040000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f040042

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->create()V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 164
    .local v9, "btn":Landroid/widget/Button;
    invoke-virtual {v9}, Landroid/widget/Button;->getRootView()Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const v21, 0x7f100169

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x7d3

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setType(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 132
    .end local v5    # "actionText":Ljava/lang/String;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "appNameIndex":I
    .end local v9    # "btn":Landroid/widget/Button;
    .end local v14    # "message":Landroid/text/SpannableString;
    .end local v19    # "unsanitizedAppName":Ljava/lang/String;
    .restart local v10    # "codePoint":I
    .restart local v18    # "type":I
    :cond_6
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v20

    add-int v15, v15, v20

    .line 133
    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 178
    :cond_0
    return-void
.end method
