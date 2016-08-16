.class public Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenTypeGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

.field private final mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "googleAnalyticsLockscreenClassifier"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;
    .param p4, "googleAnalyticsUserClassifier"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;
    .param p5, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    .line 84
    iput-object p4, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    .line 85
    iput-object p5, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    .line 86
    return-void
.end method

.method private getSelectedLockScreenTypeForAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 121
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "lockscreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 125
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    move-result-object v0

    .line 126
    .local v0, "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0    # "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v2
.end method

.method private getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "humanReadableLockscreenName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v6, :cond_1

    const-wide/16 v4, 0x1

    .line 152
    .local v4, "isActive":J
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-virtual {v1, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "userType":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    const-string v1, "LockscreenType"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    goto :goto_0

    .line 151
    .end local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v3    # "userType":Ljava/lang/String;
    .end local v4    # "isActive":J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private reportLockscreens()V
    .locals 10

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockScreenTypeForAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    .line 105
    .local v9, "selectedLockscreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    .line 106
    .local v0, "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string v2, "UA-47011422-17"

    iget-object v3, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iget-object v5, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 109
    .end local v0    # "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->reportLockscreens()V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportDataToGoogle()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
