.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field protected mScreenOn:Ljava/lang/Boolean;

.field protected mScreenOnFromKeyguard:Z

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 177
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 202
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 215
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 279
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 381
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1119
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1609
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 2152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 24
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 859
    const v20, 0x7f1001ac

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 860
    .local v19, "stub":Landroid/view/ViewStub;
    if-eqz v19, :cond_0

    .line 861
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 863
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    .line 864
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 866
    .local v16, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 867
    const v20, 0x7f100144

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 868
    .local v11, "guts":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 869
    .local v14, "pkg":Ljava/lang/String;
    move-object v9, v14

    .line 870
    .local v9, "appname":Ljava/lang/String;
    const/4 v15, 0x0

    .line 871
    .local v15, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v7, -0x1

    .line 873
    .local v7, "appUid":I
    const/16 v20, 0x2200

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 876
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_1

    .line 877
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 878
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 879
    iget v7, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    const v20, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    const v20, 0x7f100146

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 887
    const v20, 0x7f100145

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    const v20, 0x7f100149

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 889
    .local v18, "settingsButton":Landroid/view/View;
    const v20, 0x7f100148

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 891
    .local v4, "appSettingsButton":Landroid/view/View;
    if-ltz v7, :cond_4

    .line 892
    move v8, v7

    .line 893
    .local v8, "appUidF":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/admin/DevicePolicyManager;->isSettingsDisabled(Landroid/content/ComponentName;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 894
    new-instance v20, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    :goto_1
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 908
    .local v6, "appSettingsQueryIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 909
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 910
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d00f4

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v9, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 916
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 918
    .local v5, "appSettingsLaunchIntent":Landroid/content/Intent;
    new-instance v20, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    .end local v5    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_2
    return-void

    .line 881
    .end local v4    # "appSettingsButton":Landroid/view/View;
    .end local v18    # "settingsButton":Landroid/view/View;
    :catch_0
    move-exception v10

    .line 883
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto/16 :goto_0

    .line 901
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appSettingsButton":Landroid/view/View;
    .restart local v8    # "appUidF":I
    .restart local v18    # "settingsButton":Landroid/view/View;
    :cond_2
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 927
    .restart local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 930
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 46
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 1323
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v31

    .line 1326
    .local v31, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v29, v0

    .line 1327
    .local v29, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v38, v0

    .line 1328
    .local v38, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1329
    .local v16, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1331
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_0

    .line 1332
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 1334
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1337
    :cond_0
    if-nez v16, :cond_1

    .line 1338
    const/4 v7, 0x0

    .line 1549
    :goto_0
    return v7

    .line 1341
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1342
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_2
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v35, v0

    .line 1351
    .local v35, "publicNotification":Landroid/app/Notification;
    const/16 v22, 0x0

    .line 1352
    .local v22, "hasUserChangedExpansion":Z
    const/16 v43, 0x0

    .line 1353
    .local v43, "userExpanded":Z
    const/16 v44, 0x0

    .line 1355
    .local v44, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_f

    .line 1356
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v37, v0

    .line 1357
    .local v37, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v22

    .line 1358
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v43

    .line 1359
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v44

    .line 1360
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 1361
    if-eqz v22, :cond_3

    .line 1362
    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1373
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 1374
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v45

    .line 1375
    .local v45, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1381
    const v7, 0x7f1001a9

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1383
    .local v20, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const v7, 0x7f1001aa

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1386
    .local v21, "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v7, 0x60000

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1388
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v15, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1389
    .local v15, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_10

    .line 1390
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v15, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v28

    .line 1392
    .local v28, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    .end local v28    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    const/16 v17, 0x0

    .line 1399
    .local v17, "contentViewLocal":Landroid/view/View;
    const/4 v14, 0x0

    .line 1401
    .local v14, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    .line 1403
    if-eqz v13, :cond_4

    .line 1404
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v20

    invoke-virtual {v13, v7, v0, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1414
    :cond_4
    if-eqz v17, :cond_5

    .line 1415
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1416
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1418
    :cond_5
    if-eqz v14, :cond_6

    .line 1419
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1420
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 1424
    :cond_6
    const/16 v36, 0x0

    .line 1425
    .local v36, "publicViewLocal":Landroid/view/View;
    if-eqz v35, :cond_7

    .line 1427
    :try_start_1
    move-object/from16 v0, v35

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v36

    .line 1430
    if-eqz v36, :cond_7

    .line 1431
    const/4 v7, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1432
    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1444
    :cond_7
    :goto_3
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    .line 1445
    .local v27, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v27

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1450
    .end local v27    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_4
    if-nez v36, :cond_d

    .line 1452
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040030

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    .line 1455
    const/4 v7, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1456
    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1458
    const v7, 0x7f1000b2

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1460
    .local v41, "title":Landroid/widget/TextView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1466
    :goto_5
    const v7, 0x7f10014b

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 1467
    .local v23, "icon":Landroid/widget/ImageView;
    const v7, 0x7f10014d

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    .line 1470
    .local v33, "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1477
    .local v6, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1478
    .local v24, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1479
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1481
    :cond_8
    const v7, 0x10804f9

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 1485
    .local v30, "padding":I
    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v30

    move/from16 v3, v30

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1486
    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_9

    .line 1487
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1492
    .end local v30    # "padding":I
    :cond_9
    if-eqz v33, :cond_a

    .line 1493
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 1495
    .local v34, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_11

    .line 1496
    invoke-virtual/range {v33 .. v34}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1503
    .end local v34    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_6
    const v7, 0x1020085

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 1504
    .local v32, "privateTime":Landroid/view/View;
    const v7, 0x7f10014c

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/DateTimeView;

    .line 1505
    .local v40, "time":Landroid/widget/DateTimeView;
    if-eqz v32, :cond_b

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 1506
    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 1507
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1510
    :cond_b
    const v7, 0x7f10014e

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1511
    .local v39, "text":Landroid/widget/TextView;
    if-eqz v39, :cond_c

    .line 1512
    const v7, 0x7f0d016b

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0c002f

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1517
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v42

    .line 1520
    .local v42, "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1522
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 1532
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v23    # "icon":Landroid/widget/ImageView;
    .end local v24    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v32    # "privateTime":Landroid/view/View;
    .end local v33    # "profileBadge":Landroid/widget/ImageView;
    .end local v39    # "text":Landroid/widget/TextView;
    .end local v40    # "time":Landroid/widget/DateTimeView;
    .end local v41    # "title":Landroid/widget/TextView;
    .end local v42    # "topPadding":I
    :cond_d
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1533
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v29

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 1534
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1535
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1536
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 1537
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 1539
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1542
    if-eqz v22, :cond_e

    .line 1545
    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1547
    :cond_e
    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1548
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 1549
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1366
    .end local v14    # "bigContentViewLocal":Landroid/view/View;
    .end local v15    # "contentIntent":Landroid/app/PendingIntent;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v20    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v21    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v36    # "publicViewLocal":Landroid/view/View;
    .end local v37    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v45    # "vetoButton":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 1368
    .local v26, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04005e

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1370
    .restart local v37    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1394
    .end local v26    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v20    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v21    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v45    # "vetoButton":Landroid/view/View;
    :cond_10
    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1408
    .restart local v14    # "bigContentViewLocal":Landroid/view/View;
    .restart local v17    # "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v18

    .line 1409
    .local v18, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1410
    .local v25, "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1435
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "ident":Ljava/lang/String;
    .restart local v36    # "publicViewLocal":Landroid/view/View;
    :catch_1
    move-exception v18

    .line 1436
    .restart local v18    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1437
    .restart local v25    # "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 1446
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 1447
    .local v19, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1462
    .end local v19    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v41    # "title":Landroid/widget/TextView;
    :catch_3
    move-exception v18

    .line 1463
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1499
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v23    # "icon":Landroid/widget/ImageView;
    .restart local v24    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "profileBadge":Landroid/widget/ImageView;
    .restart local v34    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    const/16 v7, 0x8

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1109
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setUser(I)V

    .line 700
    :cond_0
    return-void
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 829
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 818
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 821
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 833
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 856
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 507
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 511
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 514
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2109
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2110
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1883
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 1887
    .local v2, "show":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 1889
    .local v1, "dpmFlags":I
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_1

    move v0, v3

    .line 1891
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 1892
    return-void

    .end local v0    # "allowedByDpm":Z
    .end local v1    # "dpmFlags":I
    .end local v2    # "show":Z
    :cond_0
    move v2, v4

    .line 1883
    goto :goto_0

    .restart local v1    # "dpmFlags":I
    .restart local v2    # "show":Z
    :cond_1
    move v0, v4

    .line 1889
    goto :goto_1

    .restart local v0    # "allowedByDpm":Z
    :cond_2
    move v3, v4

    .line 1891
    goto :goto_2
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2105
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2114
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v2, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2115
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2118
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v5, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2119
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_3

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2123
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2124
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2125
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2128
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2129
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2132
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v1, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2133
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_4

    .line 2134
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 2136
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2141
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 2142
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 2143
    return-void

    .line 2115
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v5    # "publicVersion":Landroid/app/Notification;
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "publicVersion":Landroid/app/Notification;
    :cond_3
    move-object v4, v6

    .line 2119
    goto :goto_1

    .line 2138
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1800
    if-nez p1, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1805
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1690
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 788
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020348

    if-eq v1, v2, :cond_2

    .line 790
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_0

    .line 792
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 793
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 806
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 807
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_4

    .line 808
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(I)V

    .line 813
    :cond_1
    :goto_1
    return-void

    .line 797
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 798
    .local v0, "color":I
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isMediaNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 810
    :cond_4
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1041
    const/16 v0, 0x3ff

    .line 1042
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1044
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 1171
    :cond_0
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1105
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x0

    .line 1771
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1772
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 1776
    .local v9, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1778
    .local v8, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1780
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget v3, v9, Landroid/app/Notification;->icon:I

    iget v4, v9, Landroid/app/Notification;->iconLevel:I

    iget v5, v9, Landroid/app/Notification;->number:I

    iget-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1786
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 1796
    :cond_1
    :goto_0
    return-object v7

    .line 1791
    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1792
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 1794
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2219
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :goto_0
    return-void

    .line 2220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 734
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 735
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    .line 984
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 986
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 988
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1005
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 990
    .restart local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 991
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 992
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 994
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 995
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 996
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 937
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2232
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 2236
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2244
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 2240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1751
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1753
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :goto_0
    return-void

    .line 1755
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 3
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 1730
    if-eqz p1, :cond_2

    .line 1733
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1735
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(Z)V

    .line 1742
    .end local v0    # "clearNotificationEffects":Z
    :goto_1
    return-void

    .line 1733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1737
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1739
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    const/16 v0, 0x3fc

    .line 1020
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1021
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1023
    return-void

    :cond_0
    move v3, v2

    .line 1021
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1152
    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 1069
    const/16 v0, 0x403

    .line 1070
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1071
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1072
    return-void
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1319
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 2210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 719
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 2261
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    const/4 v0, 0x0

    .line 2265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 708
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 709
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 710
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 714
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 2250
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    :goto_0
    return-void

    .line 2251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "forHun"    # Z

    .prologue
    .line 1554
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 2146
    if-nez p1, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 2149
    :cond_0
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 644
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 646
    const-string v8, "StatusBar"

    const-string v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 648
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_1

    .line 649
    const-string v8, "StatusBar"

    const-string v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 654
    .restart local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v8, "StatusBar"

    const-string v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 665
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 669
    .local v7, "setupIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 670
    .local v6, "res":Landroid/content/res/Resources;
    const v1, 0x1060059

    .line 671
    .local v1, "colorRes":I
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020022

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d018a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d018b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f02002f

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d018c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0200da

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d018d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 686
    .local v4, "note":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 688
    .local v3, "noMan":Landroid/app/NotificationManager;
    const/16 v8, 0x2710

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 739
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 740
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 741
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 743
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 744
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 745
    const-string v3, "StatusBar"

    const-string v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 750
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 753
    :cond_2
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1188
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 1693
    if-eqz p1, :cond_0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1034
    const/16 v0, 0x3fe

    .line 1035
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1036
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1037
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1165
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1762
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1763
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v1, 0x0

    .line 1767
    :goto_0
    return-object v1

    .line 1766
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 1767
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 2203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 2204
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 2200
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1203
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1879
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 1880
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1873
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 1874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2157
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1, v9}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2158
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2159
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_0
    :goto_0
    return v9

    .line 2164
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isSnoozed(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2168
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2170
    .local v8, "notification":Landroid/app/Notification;
    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_2

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_6

    :cond_2
    move v7, v10

    .line 2174
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_7

    move v6, v10

    .line 2175
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_8

    move v5, v10

    .line 2176
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_9

    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move v2, v10

    .line 2177
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v11, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    move v4, v10

    .line 2179
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    move v0, v10

    .line 2182
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    if-nez v5, :cond_3

    if-eqz v6, :cond_c

    if-nez v7, :cond_3

    if-eqz v2, :cond_c

    :cond_3
    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-nez v11, :cond_c

    move v3, v10

    .line 2190
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_d

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_d

    move v3, v10

    .line 2194
    :goto_8
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v3

    .line 2195
    goto/16 :goto_0

    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    :cond_6
    move v7, v9

    .line 2170
    goto/16 :goto_1

    .restart local v7    # "isNoisy":Z
    :cond_7
    move v6, v9

    .line 2174
    goto/16 :goto_2

    .restart local v6    # "isHighPriority":Z
    :cond_8
    move v5, v9

    .line 2175
    goto/16 :goto_3

    .restart local v5    # "isFullscreen":Z
    :cond_9
    move v2, v9

    .line 2176
    goto :goto_4

    .restart local v2    # "hasTicker":Z
    :cond_a
    move v4, v9

    .line 2177
    goto :goto_5

    .restart local v4    # "isAllowed":Z
    :cond_b
    move v0, v9

    .line 2179
    goto :goto_6

    .restart local v0    # "accessibilityForcesLaunch":Z
    :cond_c
    move v3, v9

    .line 2182
    goto :goto_7

    .restart local v3    # "interrupt":Z
    :cond_d
    move v3, v9

    .line 2190
    goto :goto_8

    .line 2191
    :catch_0
    move-exception v1

    .line 2192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "StatusBar"

    const-string v10, "failed to query dream manager"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1048
    const/16 v0, 0x400

    .line 1049
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1051
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1055
    const/16 v0, 0x401

    .line 1056
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1058
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1012
    const/16 v0, 0x3fb

    .line 1013
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1014
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1015
    return-void

    :cond_0
    move v1, v2

    .line 1014
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 1146
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 1177
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1183
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1065
    :cond_0
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    .line 518
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 519
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 520
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 521
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 524
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 526
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 528
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "accessibility"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 531
    const-string v10, "dreams"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 533
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 535
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 536
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 539
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "zen_mode"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 542
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_show_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 547
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_allow_private_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 553
    const-string v10, "statusbar"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 556
    const-class v10, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/RecentsComponent;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 557
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v10, p0}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 559
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 560
    .local v2, "currentConfig":Landroid/content/res/Configuration;
    iget-object v10, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 561
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 562
    iget v10, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 564
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 566
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000e

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 568
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000f

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 572
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v7}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 573
    .local v7, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v10, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v10, p0, v7}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 575
    const/16 v10, 0x8

    new-array v8, v10, [I

    .line 576
    .local v8, "switches":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v10, v11, v7, v8, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 585
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IZ)V

    .line 586
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 587
    const/4 v10, 0x2

    aget v10, v8, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 589
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    const/4 v11, 0x3

    aget v12, v8, v11

    const/4 v11, 0x4

    aget v13, v8, v11

    const/4 v11, 0x5

    aget v11, v8, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 592
    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 593
    .local v0, "N":I
    const/4 v9, 0x0

    .line 594
    .local v9, "viewIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 595
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    .line 596
    .local v6, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v6, :cond_0

    .line 597
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5, v9, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 598
    add-int/lit8 v9, v9, 0x1

    .line 594
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 587
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v6    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v9    # "viewIndex":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 589
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 604
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v9    # "viewIndex":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    :goto_4
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 613
    const-string v10, "StatusBar"

    const-string v11, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 624
    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 626
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 627
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v10, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v10, "com.sonymobile.settings.notification.request"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 636
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v11, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 641
    return-void

    .line 607
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "StatusBar"

    const-string v11, "Unable to register notification listener"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 579
    .end local v0    # "N":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    .end local v9    # "viewIndex":I
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1560
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 1561
    .local v1, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1564
    .local v0, "afterKeyguardGone":Z
    :goto_1
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    goto :goto_0

    .line 1561
    .end local v0    # "afterKeyguardGone":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 1027
    const/16 v0, 0x3fd

    .line 1028
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1030
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 1159
    :cond_0
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 38
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1907
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    .line 1910
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v37

    .line 1912
    .local v37, "wasHeadsUp":Z
    if-eqz v37, :cond_1

    .line 1913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .line 1917
    .local v26, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    if-nez v26, :cond_2

    .line 2100
    :goto_1
    return-void

    .line 1915
    .end local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .restart local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 1921
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    .line 1924
    .local v28, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 1925
    .local v25, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 1926
    .local v22, "n":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1927
    .local v14, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    .line 1928
    .local v24, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1929
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    .line 1930
    .local v27, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 1931
    .local v17, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v30, v0

    .line 1932
    .local v30, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v30, :cond_11

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    .line 1934
    .local v29, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v32, v0

    .line 1935
    .local v32, "publicNotification":Landroid/app/Notification;
    if-eqz v32, :cond_12

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    .line 1938
    .local v31, "publicContentView":Landroid/widget/RemoteViews;
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1939
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_3
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_13

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_13

    const/4 v15, 0x1

    .line 1962
    .local v15, "contentsUnchanged":Z
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    if-eqz v12, :cond_5

    :cond_4
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_14

    :cond_5
    const/4 v13, 0x1

    .line 1969
    .local v13, "bigContentsUnchanged":Z
    :goto_5
    if-nez v27, :cond_6

    if-eqz v17, :cond_7

    :cond_6
    if-eqz v27, :cond_15

    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_15

    :cond_7
    const/16 v18, 0x1

    .line 1976
    .local v18, "headsUpContentsUnchanged":Z
    :goto_6
    if-nez v29, :cond_8

    if-eqz v31, :cond_9

    :cond_8
    if-eqz v29, :cond_16

    if-eqz v31, :cond_16

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_16

    :cond_9
    const/16 v33, 0x1

    .line 1983
    .local v33, "publicUnchanged":Z
    :goto_7
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_17

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    const/16 v36, 0x1

    .line 1987
    .local v36, "updateTicker":Z
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v34

    .line 1988
    .local v34, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 1989
    .local v11, "alertAgain":Z
    const/16 v35, 0x0

    .line 1990
    .local v35, "updateSuccessful":Z
    if-eqz v15, :cond_b

    if-eqz v13, :cond_b

    if-eqz v18, :cond_b

    if-eqz v33, :cond_b

    .line 1992
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1995
    :try_start_0
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_18

    .line 1997
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2003
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2004
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 2005
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2033
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v16

    .line 2035
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2038
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_9
    if-nez v35, :cond_e

    .line 2039
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_c
    if-eqz v37, :cond_20

    .line 2041
    if-eqz v34, :cond_1e

    .line 2042
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_d
    new-instance v23, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2044
    .local v23, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    .line 2045
    .local v19, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2046
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2047
    if-eqz v11, :cond_e

    .line 2048
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2085
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_e
    :goto_a
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 2088
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 2089
    .local v20, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_24

    const-string v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_f
    if-eqz v36, :cond_10

    if-eqz v20, :cond_10

    .line 2093
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->haltTicker()V

    .line 2094
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2098
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 2099
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    .line 1932
    .end local v11    # "alertAgain":Z
    .end local v13    # "bigContentsUnchanged":Z
    .end local v15    # "contentsUnchanged":Z
    .end local v18    # "headsUpContentsUnchanged":Z
    .end local v20    # "isForCurrentUser":Z
    .end local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v32    # "publicNotification":Landroid/app/Notification;
    .end local v33    # "publicUnchanged":Z
    .end local v34    # "shouldInterrupt":Z
    .end local v35    # "updateSuccessful":Z
    .end local v36    # "updateTicker":Z
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1935
    .restart local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v32    # "publicNotification":Landroid/app/Notification;
    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 1956
    .restart local v31    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1962
    .restart local v15    # "contentsUnchanged":Z
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1969
    .restart local v13    # "bigContentsUnchanged":Z
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1976
    .restart local v18    # "headsUpContentsUnchanged":Z
    :cond_16
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 1983
    .restart local v33    # "publicUnchanged":Z
    :cond_17
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 2010
    .restart local v11    # "alertAgain":Z
    .restart local v34    # "shouldInterrupt":Z
    .restart local v35    # "updateSuccessful":Z
    .restart local v36    # "updateTicker":Z
    :cond_18
    if-eqz v37, :cond_1b

    .line 2011
    if-eqz v34, :cond_1a

    .line 2012
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2013
    if-eqz v11, :cond_19

    .line 2014
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2029
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2031
    const/16 v35, 0x1

    goto/16 :goto_9

    .line 2018
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 2022
    :cond_1b
    if-eqz v34, :cond_1c

    if-eqz v11, :cond_1c

    .line 2023
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2024
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_c

    .line 2026
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 2051
    .restart local v19    # "holder":Landroid/view/ViewGroup;
    .restart local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1d
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2055
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1e
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_1f

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_1f
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2057
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 2061
    :cond_20
    if-eqz v34, :cond_22

    if-eqz v11, :cond_22

    .line 2062
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_21

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2064
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_a

    .line 2066
    :cond_22
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_23

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2068
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2074
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2075
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v37

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 2077
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    .line 2089
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v20    # "isForCurrentUser":Z
    :cond_24
    const-string v5, "not "

    goto/16 :goto_b
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 756
    const v0, 0x7f1001ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 757
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 759
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 762
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 763
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 781
    return-object v6

    .line 778
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1817
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v4

    .line 1818
    .local v4, "maxKeyguardNotifications":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 1820
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 1821
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1823
    .local v0, "N":I
    const/4 v8, 0x0

    .line 1824
    .local v8, "visibleNotifications":I
    iget v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v12, v10, :cond_4

    move v5, v10

    .line 1825
    .local v5, "onKeyguard":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_a

    .line 1826
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1827
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v5, :cond_5

    .line 1828
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 1836
    :cond_0
    :goto_2
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    .line 1837
    .local v6, "showOnKeyguard":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v12, :cond_2

    :cond_1
    if-eqz v5, :cond_7

    if-ge v8, v4, :cond_2

    if-nez v6, :cond_7

    .line 1840
    :cond_2
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 1841
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 1842
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1825
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "i":I
    .end local v5    # "onKeyguard":Z
    .end local v6    # "showOnKeyguard":Z
    :cond_4
    move v5, v11

    .line 1824
    goto :goto_0

    .line 1830
    .restart local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v3    # "i":I
    .restart local v5    # "onKeyguard":Z
    :cond_5
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 1831
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1832
    if-nez v3, :cond_6

    move v7, v10

    .line 1833
    .local v7, "top":Z
    :goto_4
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_2

    .end local v7    # "top":Z
    :cond_6
    move v7, v11

    .line 1832
    goto :goto_4

    .line 1845
    .restart local v6    # "showOnKeyguard":Z
    :cond_7
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    if-ne v12, v14, :cond_9

    move v9, v10

    .line 1846
    .local v9, "wasGone":Z
    :goto_5
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 1847
    if-eqz v9, :cond_8

    .line 1849
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v13, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v13, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 1851
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v9    # "wasGone":Z
    :cond_9
    move v9, v11

    .line 1845
    goto :goto_5

    .line 1855
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v6    # "showOnKeyguard":Z
    :cond_a
    if-eqz v5, :cond_b

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_b

    .line 1856
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 1861
    :goto_6
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 1863
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 1864
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 1865
    return-void

    .line 1858
    :cond_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10, v14}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    goto :goto_6
.end method

.method protected updateSearchPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1079
    const/4 v3, 0x0

    .line 1080
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 1081
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 1082
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1086
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1087
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040062

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 1089
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1091
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 1092
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 1093
    .local v2, "vertical":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    .line 1095
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1097
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1099
    if-eqz v3, :cond_1

    .line 1100
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1102
    :cond_1
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vertical":Z
    :cond_2
    move v2, v6

    .line 1092
    goto :goto_0
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 1713
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 1714
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreenOnFromKeyguard:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 1716
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 1717
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 1719
    :cond_0
    return-void

    .line 1714
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1214
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1230
    :goto_0
    return v3

    .line 1218
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_4

    .line 1219
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 1222
    .local v0, "allowed":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1224
    .local v2, "dpmFlags":I
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_2

    move v1, v3

    .line 1226
    .local v1, "allowedByDpm":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v3, v0

    .line 1227
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_1
    move v0, v4

    .line 1219
    goto :goto_1

    .restart local v0    # "allowed":Z
    .restart local v2    # "dpmFlags":I
    :cond_2
    move v1, v4

    .line 1224
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_3
    move v3, v4

    .line 1226
    goto :goto_3

    .line 1230
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 694
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 1704
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 1705
    if-nez p1, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1709
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 1710
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1312
    return-void
.end method
