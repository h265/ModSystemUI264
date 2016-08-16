.class public Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field private mActiveUserAvatarSubstituted:Z

.field private mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    .line 134
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 142
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_multi_user_avatar:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    .line 144
    .local v0, "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    return-object v0
.end method

.method private setAllClickable(Z)V
    .locals 9
    .param p1, "clickable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "disableAddUser":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 162
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 163
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->isAddUserDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 171
    .local v4, "v":Landroid/view/View;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 172
    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v3    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "KeyguardMultiUserSelectorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute isAddUserDisabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "i":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_2
    move v5, v6

    .line 171
    goto :goto_2

    .line 174
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "userList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    .local v0, "activeUser":Landroid/content/pm/UserInfo;
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "disableAddUser":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 89
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_0

    .line 90
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->isAddUserDisabled(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 97
    .local v6, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_1

    .line 100
    :cond_2
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 101
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v8

    .line 102
    .local v8, "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v10, :cond_4

    .line 103
    iput-object v8, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 110
    :cond_3
    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_2

    .line 78
    .end local v0    # "activeUser":Landroid/content/pm/UserInfo;
    .end local v1    # "disableAddUser":Z
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :catch_0
    move-exception v5

    .line 79
    .local v5, "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "activeUser":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 92
    .end local v5    # "re":Landroid/os/RemoteException;
    .restart local v1    # "disableAddUser":Z
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v9, "KeyguardMultiUserSelectorView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute isAddUserDisabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :cond_4
    if-eqz v1, :cond_3

    .line 106
    iput-object v8, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 107
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    goto :goto_3

    .line 113
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 114
    return-void
.end method

.method finalizeActiveUserNow(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public finalizeActiveUserView(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    instance-of v1, p1, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 180
    .local v0, "avatar":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->showUnlockHint()V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->hideSecurityView(I)V

    .line 188
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    .line 189
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    new-instance v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$3;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    sget v0, Lcom/android/keyguard/R$id;->keyguard_users_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setClipChildren(Z)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setClipToPadding(Z)V

    .line 68
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->userActivity()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    .line 72
    return-void
.end method
