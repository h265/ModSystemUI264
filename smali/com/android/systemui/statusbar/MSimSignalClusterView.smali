.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field mCallBusying:[Landroid/widget/ImageView;

.field private mCallBusyingId:[I

.field private mCallBusyingResourceId:[I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDataActResourceId:[I

.field private mDataActivity:[Landroid/widget/ImageView;

.field private mDataActivityId:[I

.field private mDataGroup:[Landroid/view/ViewGroup;

.field private mDataGroupResourceId:[I

.field private mDataVisible:[Z

.field private mExcludeWifiGroup:Z

.field private mIsAirplaneMode:Z

.field private final mMSimEnableMobileComboIcon:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field private final mMSimShowRATIconAlways:Z

.field mMobile:[Landroid/widget/ImageView;

.field private mMobileActResourceId:[I

.field mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

.field private mMobileDataVoiceGroupResourceId:[I

.field private mMobileDataVoiceVisible:[Z

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field private mMobileRoamingId:[I

.field private mMobileSepActResourceId:[I

.field private mMobileSepResourceId:[I

.field private mMobileSepTypeResourceId:[I

.field private mMobileSignalData:[Landroid/widget/ImageView;

.field private mMobileSignalDataId:[I

.field private mMobileSignalDataResourceId:[I

.field private mMobileSignalVoice:[Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:[I

.field private mMobileSignalVoiceResourceId:[I

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:[Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:[I

.field private final mNumPhones:I

.field private mPhoneIdOfShowNoSim:I

.field private mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

.field private mRATAnimWhenRoamResID:I

.field private mRoamingResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowTwoBars:[I

.field mSimIndex:[Landroid/widget/ImageView;

.field private mSimIndexId:[I

.field private mSimIndexResourceId:[I

.field private mStyle:I

.field mTelephonyGroup:[Landroid/view/ViewGroup;

.field private mTelephonyResourceId:[I

.field private mTelephonySepResourceId:[I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 63
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 64
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 65
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 67
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 73
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 85
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 104
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 105
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 106
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    .line 123
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    .line 127
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    .line 129
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    .line 131
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepActResourceId:[I

    .line 133
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepTypeResourceId:[I

    .line 135
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepResourceId:[I

    .line 137
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    .line 138
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    .line 140
    new-array v1, v3, [I

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    .line 142
    new-array v1, v3, [I

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    .line 144
    new-array v1, v3, [I

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    .line 146
    new-array v1, v3, [I

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    .line 148
    new-array v1, v3, [I

    fill-array-data v1, :array_d

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyResourceId:[I

    .line 150
    new-array v1, v3, [I

    fill-array-data v1, :array_e

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonySepResourceId:[I

    .line 152
    new-array v1, v3, [I

    fill-array-data v1, :array_f

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingResourceId:[I

    .line 154
    new-array v1, v3, [I

    fill-array-data v1, :array_10

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexResourceId:[I

    .line 155
    new-array v1, v3, [I

    fill-array-data v1, :array_11

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingResourceId:[I

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    .line 158
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    .line 162
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    .line 176
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    .line 188
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 189
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 190
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    .line 194
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    .line 195
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    .line 198
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 199
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    .line 201
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    .line 202
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    .line 204
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    .line 205
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    .line 207
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    .line 208
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    .line 209
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    .line 210
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    .line 211
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    .line 212
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    .line 213
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    .line 214
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput v2, v1, v0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v1, v0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v1, v0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v1, v0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput v2, v1, v0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aput v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    .line 231
    new-instance v1, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    .line 238
    new-instance v1, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    .line 251
    return-void

    .line 123
    :array_0
    .array-data 4
        0x7f1000c5
        0x7f1000e2
        0x7f1000f4
    .end array-data

    .line 125
    :array_1
    .array-data 4
        0x7f1000c6
        0x7f1000ef
        0x7f100101
    .end array-data

    .line 127
    :array_2
    .array-data 4
        0x7f1000df
        0x7f1000f1
        0x7f100103
    .end array-data

    .line 129
    :array_3
    .array-data 4
        0x7f1000c7
        0x7f1000f0
        0x7f100102
    .end array-data

    .line 131
    :array_4
    .array-data 4
        0x7f1000db
        0x7f1000eb
        0x7f1000fd
    .end array-data

    .line 133
    :array_5
    .array-data 4
        0x7f1000da
        0x7f1000ea
        0x7f1000fc
    .end array-data

    .line 135
    :array_6
    .array-data 4
        0x7f1000dd
        0x7f1000ed
        0x7f1000ff
    .end array-data

    .line 137
    :array_7
    .array-data 4
        0x7f1000d7
        0x7f1000e7
        0x7f1000f9
    .end array-data

    .line 138
    :array_8
    .array-data 4
        0x7f1000cd
        0x7f1000e0
        0x7f1000f2
    .end array-data

    .line 140
    :array_9
    .array-data 4
        0x7f1000ce
        0x7f1000e1
        0x7f1000f3
    .end array-data

    .line 142
    :array_a
    .array-data 4
        0x7f1000d3
        0x7f1000e3
        0x7f1000f5
    .end array-data

    .line 144
    :array_b
    .array-data 4
        0x7f1000d4
        0x7f1000e4
        0x7f1000f6
    .end array-data

    .line 146
    :array_c
    .array-data 4
        0x7f1000d5
        0x7f1000e5
        0x7f1000f7
    .end array-data

    .line 148
    :array_d
    .array-data 4
        0x7f1000de
        0x7f1000ee
        0x7f100100
    .end array-data

    .line 150
    :array_e
    .array-data 4
        0x7f1000d9
        0x7f1000e9
        0x7f1000fb
    .end array-data

    .line 152
    :array_f
    .array-data 4
        0x7f1000dc
        0x7f1000ec
        0x7f1000fe
    .end array-data

    .line 154
    :array_10
    .array-data 4
        0x7f1000d6
        0x7f1000e6
        0x7f1000f8
    .end array-data

    .line 155
    :array_11
    .array-data 4
        0x7f1000d8
        0x7f1000e8
        0x7f1000fa
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateSignalClusterExclusionSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/MSimSignalClusterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/MSimSignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    return v0
.end method

.method private apply(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    const-string v4, "MSimSignalClusterView"

    const-string v5, "vpn: %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v1, :cond_3

    const-string v1, "VISIBLE"

    :goto_2
    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    if-nez v1, :cond_4

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    :goto_3
    const-string v4, "MSimSignalClusterView"

    const-string v5, "wifi: %s sig=%d act=%d"

    new-array v6, v9, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_5

    const-string v1, "VISIBLE"

    :goto_4
    aput-object v1, v6, v2

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showMobileGroup(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateMobile(I)V

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateCdma()V

    .line 577
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateData(I)V

    .line 578
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateDataVoice(I)V

    .line 579
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 587
    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_7

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_8

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_2
    move v1, v3

    .line 558
    goto/16 :goto_1

    .line 559
    :cond_3
    const-string v1, "GONE"

    goto/16 :goto_2

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 570
    :cond_5
    const-string v1, "GONE"

    goto :goto_4

    .line 581
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 594
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    :cond_8
    const-string v4, "MSimSignalClusterView"

    const-string v5, "mobile[%d]: %s sig=%d type=%d"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_b

    const-string v1, "VISIBLE"

    :goto_7
    aput-object v1, v6, v7

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v1, :cond_c

    .line 604
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    :goto_8
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v1, :cond_9

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_11

    .line 616
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    :cond_9
    :goto_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v4, v1, p1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_12

    :cond_a
    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isDataConnected(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 597
    :cond_b
    const-string v1, "GONE"

    goto :goto_7

    .line 605
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v1, :cond_10

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v4, v1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isDataConnected(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_f

    :cond_e
    move v1, v2

    :goto_c
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_f
    move v1, v3

    goto :goto_c

    .line 611
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 619
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_12
    move v1, v3

    .line 625
    goto :goto_a

    :cond_13
    move v2, v3

    .line 627
    goto :goto_b
.end method

.method private convertMobileStrengthIcon(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 849
    move v0, p1

    .line 850
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 914
    :goto_0
    return v0

    .line 852
    :sswitch_0
    const v0, 0x7f020257

    .line 853
    goto :goto_0

    .line 855
    :sswitch_1
    const v0, 0x7f02025f

    .line 856
    goto :goto_0

    .line 858
    :sswitch_2
    const v0, 0x7f020295

    .line 859
    goto :goto_0

    .line 861
    :sswitch_3
    const v0, 0x7f02029d

    .line 862
    goto :goto_0

    .line 864
    :sswitch_4
    const v0, 0x7f0202d7

    .line 865
    goto :goto_0

    .line 867
    :sswitch_5
    const v0, 0x7f0202df

    .line 868
    goto :goto_0

    .line 870
    :sswitch_6
    const v0, 0x7f020319

    .line 871
    goto :goto_0

    .line 873
    :sswitch_7
    const v0, 0x7f020321

    .line 874
    goto :goto_0

    .line 876
    :sswitch_8
    const v0, 0x7f02035b

    .line 877
    goto :goto_0

    .line 879
    :sswitch_9
    const v0, 0x7f020363

    .line 880
    goto :goto_0

    .line 882
    :sswitch_a
    const v0, 0x7f020258

    .line 883
    goto :goto_0

    .line 885
    :sswitch_b
    const v0, 0x7f020260

    .line 886
    goto :goto_0

    .line 888
    :sswitch_c
    const v0, 0x7f020296

    .line 889
    goto :goto_0

    .line 891
    :sswitch_d
    const v0, 0x7f02029e

    .line 892
    goto :goto_0

    .line 894
    :sswitch_e
    const v0, 0x7f0202d8

    .line 895
    goto :goto_0

    .line 897
    :sswitch_f
    const v0, 0x7f0202e0

    .line 898
    goto :goto_0

    .line 900
    :sswitch_10
    const v0, 0x7f02031a

    .line 901
    goto :goto_0

    .line 903
    :sswitch_11
    const v0, 0x7f020322

    .line 904
    goto :goto_0

    .line 906
    :sswitch_12
    const v0, 0x7f02035c

    .line 907
    goto :goto_0

    .line 909
    :sswitch_13
    const v0, 0x7f020364

    .line 910
    goto :goto_0

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020256 -> :sswitch_0
        0x7f02025b -> :sswitch_a
        0x7f02025e -> :sswitch_1
        0x7f020263 -> :sswitch_b
        0x7f020294 -> :sswitch_2
        0x7f020299 -> :sswitch_c
        0x7f02029c -> :sswitch_3
        0x7f0202a1 -> :sswitch_d
        0x7f0202d6 -> :sswitch_4
        0x7f0202db -> :sswitch_e
        0x7f0202de -> :sswitch_5
        0x7f0202e3 -> :sswitch_f
        0x7f020318 -> :sswitch_6
        0x7f02031d -> :sswitch_10
        0x7f020320 -> :sswitch_7
        0x7f020325 -> :sswitch_11
        0x7f02035a -> :sswitch_8
        0x7f02035f -> :sswitch_12
        0x7f020362 -> :sswitch_9
        0x7f020367 -> :sswitch_13
    .end sparse-switch
.end method

.method private getCdma2gId(I)I
    .locals 4
    .param p1, "icon"    # I

    .prologue
    const/4 v2, 0x0

    .line 918
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v3, :cond_0

    move v1, v2

    .line 942
    :goto_0
    return v1

    .line 921
    :cond_0
    const/4 v1, 0x0

    .line 922
    .local v1, "retValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    .line 923
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 925
    :pswitch_0
    const v1, 0x7f020250

    .line 926
    goto :goto_0

    .line 928
    :pswitch_1
    const v1, 0x7f02028e

    .line 929
    goto :goto_0

    .line 931
    :pswitch_2
    const v1, 0x7f0202d0

    .line 932
    goto :goto_0

    .line 934
    :pswitch_3
    const v1, 0x7f020312

    .line 935
    goto :goto_0

    .line 937
    :pswitch_4
    const v1, 0x7f020354

    .line 938
    goto :goto_0

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCdmaRoamId(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 1001
    :goto_0
    return v0

    .line 951
    :sswitch_0
    const v0, 0x7f020265

    .line 952
    goto :goto_0

    .line 956
    :sswitch_1
    const v0, 0x7f0202a3

    .line 957
    goto :goto_0

    .line 961
    :sswitch_2
    const v0, 0x7f0202e5

    .line 962
    goto :goto_0

    .line 966
    :sswitch_3
    const v0, 0x7f020327

    .line 967
    goto :goto_0

    .line 971
    :sswitch_4
    const v0, 0x7f020369

    .line 972
    goto :goto_0

    .line 976
    :sswitch_5
    const v0, 0x7f020264

    .line 977
    goto :goto_0

    .line 981
    :sswitch_6
    const v0, 0x7f0202a2

    .line 982
    goto :goto_0

    .line 986
    :sswitch_7
    const v0, 0x7f0202e4

    .line 987
    goto :goto_0

    .line 991
    :sswitch_8
    const v0, 0x7f020326

    .line 992
    goto :goto_0

    .line 996
    :sswitch_9
    const v0, 0x7f020368

    .line 997
    goto :goto_0

    .line 947
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020253 -> :sswitch_5
        0x7f020254 -> :sswitch_0
        0x7f020259 -> :sswitch_5
        0x7f02025a -> :sswitch_0
        0x7f020261 -> :sswitch_5
        0x7f020262 -> :sswitch_0
        0x7f020291 -> :sswitch_6
        0x7f020292 -> :sswitch_1
        0x7f020297 -> :sswitch_6
        0x7f020298 -> :sswitch_1
        0x7f02029f -> :sswitch_6
        0x7f0202a0 -> :sswitch_1
        0x7f0202d3 -> :sswitch_7
        0x7f0202d4 -> :sswitch_2
        0x7f0202d9 -> :sswitch_7
        0x7f0202da -> :sswitch_2
        0x7f0202e1 -> :sswitch_7
        0x7f0202e2 -> :sswitch_2
        0x7f020315 -> :sswitch_8
        0x7f020316 -> :sswitch_3
        0x7f02031b -> :sswitch_8
        0x7f02031c -> :sswitch_3
        0x7f020323 -> :sswitch_8
        0x7f020324 -> :sswitch_3
        0x7f020357 -> :sswitch_9
        0x7f020358 -> :sswitch_4
        0x7f02035d -> :sswitch_9
        0x7f02035e -> :sswitch_4
        0x7f020365 -> :sswitch_9
        0x7f020366 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDefaultPhoneId()I
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getPhoneId(I)I

    move-result v0

    .line 508
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-lt v0, v1, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 511
    :cond_1
    return v0
.end method

.method private getMobileVoiceId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 820
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v2, :cond_0

    .line 821
    const/4 v1, 0x0

    .line 845
    :goto_0
    return v1

    .line 824
    :cond_0
    const/4 v1, 0x0

    .line 825
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    .line 826
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 828
    :pswitch_0
    const v1, 0x7f020279

    .line 829
    goto :goto_0

    .line 831
    :pswitch_1
    const v1, 0x7f0202b7

    .line 832
    goto :goto_0

    .line 834
    :pswitch_2
    const v1, 0x7f0202f9

    .line 835
    goto :goto_0

    .line 837
    :pswitch_3
    const v1, 0x7f02033b

    .line 838
    goto :goto_0

    .line 840
    :pswitch_4
    const v1, 0x7f02037d

    .line 841
    goto :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 517
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 518
    .local v0, "phoneId":I
    return v0
.end method

.method private isCdmaDataOnlyMode(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 756
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eq v4, v3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v2

    .line 759
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 763
    .local v0, "dataType":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v1

    .line 764
    .local v1, "voiceType":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    :cond_2
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0201bc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private show1xOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 794
    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 800
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 801
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 802
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 803
    .local v1, "ret":Z
    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 805
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showBothDataAndVoice(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 732
    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v1

    .line 736
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    aget v3, v3, p1

    if-eqz v3, :cond_0

    .line 740
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 746
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 747
    .local v2, "voiceType":I
    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 750
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDataAndVoice()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 771
    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v1

    .line 774
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 777
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 778
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 779
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 780
    .local v1, "ret":Z
    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 788
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 811
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMobileGroup(I)Z
    .locals 6
    .param p1, "sub"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 636
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 650
    :cond_1
    :goto_0
    return v2

    .line 639
    :cond_2
    const/4 v1, 0x1

    .line 640
    .local v1, "noneSimPresent":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v4, :cond_4

    .line 641
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, v0

    if-eqz v4, :cond_3

    move v1, v2

    .line 640
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 641
    goto :goto_2

    .line 643
    :cond_4
    if-eqz v1, :cond_6

    .line 644
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    if-ne v4, v5, :cond_5

    .line 645
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    .line 647
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    if-eq p1, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 649
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mPhoneIdOfShowNoSim:I

    .line 650
    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, p1

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 696
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 704
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    :goto_1
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 654
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aget-object v5, v2, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v2, v2, p1

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-nez v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 668
    .local v0, "dataSub":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v5, v5, p1

    if-eq v2, v5, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aget v2, v2, p1

    if-eqz v2, :cond_4

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 676
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    :cond_2
    :goto_1
    return-void

    .end local v0    # "dataSub":I
    :cond_3
    move v2, v4

    .line 661
    goto :goto_0

    .line 678
    .restart local v0    # "dataSub":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimShowRATIconAlways:Z

    if-eqz v2, :cond_2

    if-ne v0, p1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, p1

    if-eq v2, v4, :cond_2

    .line 683
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 684
    .local v1, "mobileTypeDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_5

    .line 685
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "mobileTypeDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    .line 686
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoam:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 687
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    goto :goto_1

    .line 689
    .restart local v1    # "mobileTypeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRATAnimWhenRoamResID:I

    goto :goto_1
.end method

.method private updateSignalClusterExclusionSettings()V
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "settingsFromDB":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mExcludeWifiGroup:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I

    move-result v0

    .line 489
    .local v0, "defaultPhoneId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 279
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 281
    const v1, 0x7f1000c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 282
    const v1, 0x7f1000c9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 283
    const v1, 0x7f1000ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 284
    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 285
    const v1, 0x7f100104

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 289
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimEnableMobileComboIcon:Z

    if-eqz v1, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 291
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSepTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonySepResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    goto/16 :goto_1

    .line 317
    :cond_1
    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 318
    const v1, 0x7f1000d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 319
    const v1, 0x7f1000d1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 320
    const v1, 0x7f1000d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 322
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_2

    .line 323
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateSignalClusterExclusionSettings()V

    .line 329
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 336
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 337
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 338
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 339
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndex:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusying:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mTelephonyGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aput-object v3, v1, v0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 357
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 358
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 359
    iput-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 361
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 362
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 527
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 537
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 541
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 544
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 547
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_7
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$3;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 478
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 480
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "phoneId"    # I
    .param p8, "noSimIcon"    # I
    .param p9, "simIndexIcon"    # I
    .param p10, "callBusyingIconId"    # I
    .param p11, "dataRoamingIcon"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p7

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    .line 400
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput p8, v0, p7

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p11, v0, p7

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIndexId:[I

    aput p9, v0, p7

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCallBusyingId:[I

    aput p10, v0, p7

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v0, p7

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v0, p7

    .line 414
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_8

    .line 415
    if-nez p7, :cond_7

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 418
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 421
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdma2gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 424
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isCdmaDataOnlyMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    .line 472
    :cond_0
    :goto_1
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 473
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v0, p7

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput p3, v0, p7

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, p7

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 431
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 432
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 436
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 438
    :cond_5
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 441
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 442
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    goto :goto_1

    .line 447
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v1

    aput v1, v0, p7

    goto :goto_1

    .line 453
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 454
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showBothDataAndVoice(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, p7

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v1, v0, p7

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput p2, v0, p7

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v1

    aput v1, v0, p7

    goto/16 :goto_1

    .line 462
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p7

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p7

    goto/16 :goto_1

    .line 466
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p7

    goto/16 :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 266
    const-string v0, "MSimSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 268
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 271
    const-string v0, "MSimSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 275
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 382
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 383
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 384
    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 386
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method
