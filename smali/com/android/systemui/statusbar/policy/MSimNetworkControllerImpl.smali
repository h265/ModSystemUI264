.class public Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    }
.end annotation


# instance fields
.field PHONE_ID1:I

.field PHONE_ID2:I

.field private mCarrierTextSub:[Ljava/lang/String;

.field private mDefaultPhoneId:I

.field mMSimCallBusyingIconId:[I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataNetType:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataState:[I

.field mMSimDataTypeIconId:[I

.field private final mMSimEnableMobileComboIcon:Z

.field private mMSimIconId:[I

.field mMSimLastCallBusyingIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastIconId:[I

.field mMSimLastNoSimIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastRoamingIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field mMSimPhoneState:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field private final mMSimShowCallBusying:Z

.field private final mMSimShowRATIconAlways:Z

.field mMSimSignalLevel:[I

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mNoMSimIconId:[I

.field mOriginalPlmn:[Ljava/lang/String;

.field mOriginalSpn:[Ljava/lang/String;

.field mPhoneCount:I

.field mPlmn:[Ljava/lang/String;

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSimSubscriptionActived:[Z

.field mSpn:[Ljava/lang/String;

.field private mSubIdPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    .line 120
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 121
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    .line 122
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID2:I

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.sonymobile.intent.action.SIM2_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v3, "com.sonymobile.provider.Telephony.SPN2_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v3, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 159
    .local v2, "numPhones":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener numPhones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 161
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    .line 162
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 163
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 164
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    .line 165
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    .line 166
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    .line 167
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    .line 168
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    .line 169
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    .line 170
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    .line 171
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneState:[I

    .line 172
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    .line 173
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 174
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    .line 175
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    .line 176
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalSpn:[Ljava/lang/String;

    .line 177
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalPlmn:[Ljava/lang/String;

    .line 178
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    .line 179
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    .line 180
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    .line 181
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    .line 182
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    .line 183
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    .line 184
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    .line 185
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    .line 186
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    .line 187
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    .line 188
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    .line 189
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    .line 190
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 191
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 192
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    .line 193
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    .line 194
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCallBusyingIconId:[I

    .line 195
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastIconId:[I

    .line 196
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastRoamingIconId:[I

    .line 197
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    .line 198
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    .line 199
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    .line 200
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    .line 201
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v1

    .line 206
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v1

    .line 207
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v3, v1

    .line 210
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v3, v1

    .line 211
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aput v7, v3, v1

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aput v7, v3, v1

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v6, v3, v1

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aput v7, v3, v1

    .line 215
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aput v7, v3, v1

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aput v6, v3, v1

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    aput v6, v3, v1

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aput v6, v3, v1

    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput v6, v3, v1

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aput v6, v3, v1

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    aput v6, v3, v1

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aput v6, v3, v1

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    aput v6, v3, v1

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aput v8, v3, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDefaultPhoneId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 230
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 232
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataServiceState:I

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 237
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 239
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    .line 241
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 243
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataDirectionIconId:I

    .line 244
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataSignalIconId:I

    .line 245
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    .line 246
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSimIconId:I

    .line 248
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 254
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataTypeIconId:I

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 258
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowRATIconAlways:Z

    .line 260
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimEnableMobileComboIcon:Z

    .line 262
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowCallBusying:Z

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateIconSet(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private getDefaultPhoneId()I
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 317
    .local v0, "numPhones":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v1

    .line 318
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    if-lt v1, v0, :cond_1

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 321
    :cond_1
    return v1
.end method

.method private getPhoneId(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 327
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 328
    .local v0, "phoneId":I
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 602
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 701
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 786
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 793
    const/4 v1, 0x1

    .line 796
    :cond_0
    :pswitch_0
    return v1

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCarrierText()V
    .locals 5

    .prologue
    .line 579
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    aget-object v0, v3, v4

    .line 580
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 586
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 587
    .local v2, "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 590
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 592
    .restart local v2    # "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private showNullSignalStrength(I)Z
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return-void
.end method

.method private updateCallBusyingIcon(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    const/4 v2, 0x0

    .line 1502
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1504
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aput v2, v3, p1

    .line 1514
    :goto_0
    return-void

    .line 1507
    :cond_1
    const/4 v1, 0x1

    .line 1508
    .local v1, "isIdleOnOtherSub":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v3, :cond_4

    .line 1509
    if-ne v0, p1, :cond_2

    .line 1508
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1510
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneState:[I

    aget v3, v3, v0

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :goto_3
    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    .line 1513
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    if-eqz v1, :cond_5

    :goto_4
    aput v2, v3, p1

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getCallBusying(I)I

    move-result v2

    goto :goto_4
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 538
    const v0, 0x10403b9

    .line 573
    :goto_0
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 576
    :cond_0
    return-void

    .line 541
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 568
    const v0, 0x10403a5

    goto :goto_0

    .line 548
    :pswitch_0
    const v0, 0x10403a5

    .line 549
    goto :goto_0

    .line 551
    :pswitch_1
    const v0, 0x10403b7

    .line 552
    goto :goto_0

    .line 554
    :pswitch_2
    const v0, 0x10403b5

    .line 555
    goto :goto_0

    .line 558
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 561
    :pswitch_4
    const v0, 0x10403a9

    .line 563
    goto :goto_0

    .line 565
    :pswitch_5
    const v0, 0x10403b3

    .line 566
    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 991
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIcon phoneId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v2, 0x0

    .line 993
    .local v2, "iconId":I
    const/4 v3, 0x1

    .line 994
    .local v3, "visible":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 996
    .local v1, "dataSub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 998
    .local v0, "currentDdsPhone":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIcon dataSub ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentDdsPhone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-eq p1, v0, :cond_0

    .line 1002
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v4, p1

    .line 1003
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIconi: phoneId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not DDS.  Clear the mMSimDataConnected Flag and return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_0
    return-void

    .line 1008
    :cond_0
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIcon  when SimState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aget v4, v4, p1

    if-nez v4, :cond_1

    .line 1011
    const/4 v3, 0x0

    .line 1032
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v2, v4, p1

    .line 1033
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aput v2, v4, p1

    .line 1036
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    if-eqz v4, :cond_5

    .line 1038
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v4, p1

    .line 1039
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 1045
    :goto_2
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMSimMobileActivityIconId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1013
    :cond_1
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataIcon  when gsm mMSimState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_4

    .line 1016
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1017
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    aget v4, v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1018
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v2

    .line 1019
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v2, v4, p1

    goto/16 :goto_1

    .line 1021
    :cond_3
    const/4 v2, 0x0

    .line 1022
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1025
    :cond_4
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "updateDataIcon when no sim"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1027
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon()I

    move-result v2

    .line 1028
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1041
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v3, v4, p1

    .line 1042
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    goto/16 :goto_2
.end method

.method private final updateDataNetType(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const v8, 0x7f0201bc

    const/4 v4, 0x0

    .line 879
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 881
    .local v1, "dataSub":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimEnableMobileComboIcon:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowRATIconAlways:Z

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 882
    .local v3, "showRatAnimationInRoaming":Z
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 884
    .local v0, "currentDdsPhone":I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataNetType: phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ddsPhone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentDdsPhone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    if-eq p1, v0, :cond_3

    .line 887
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataNetType: phoneId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not DDS(=SUB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v4, v5, p1

    .line 919
    :goto_1
    const/4 v2, 0x0

    .line 920
    .local v2, "setQSDataTypeIcon":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    const/4 v2, 0x1

    .line 923
    if-ne p1, v0, :cond_0

    .line 924
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 934
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    if-ne p1, v0, :cond_1

    .line 935
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v4, v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 937
    :cond_1
    return-void

    .end local v0    # "currentDdsPhone":I
    .end local v2    # "setQSDataTypeIcon":Z
    .end local v3    # "showRatAnimationInRoaming":Z
    :cond_2
    move v3, v4

    .line 881
    goto/16 :goto_0

    .line 891
    .restart local v0    # "currentDdsPhone":I
    .restart local v3    # "showRatAnimationInRoaming":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p1

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 892
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v4, :cond_6

    .line 894
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 895
    if-eqz v3, :cond_4

    .line 896
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v5, 0x7f0201a2

    aput v5, v4, p1

    .line 903
    :goto_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v4, v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 904
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f0d00a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_1

    .line 898
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v5, 0x7f0201a3

    aput v5, v4, p1

    goto :goto_3

    .line 901
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v5, 0x7f0201a1

    aput v5, v4, p1

    goto :goto_3

    .line 907
    :cond_6
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataNetType sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMSimDataNetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getRoamingDataTypeIcon(IZ)I

    move-result v4

    :goto_4
    aput v4, v5, p1

    .line 912
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeDesc(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 914
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getQSDataTypeIcon(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    goto/16 :goto_1

    .line 909
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeIcon(I)I

    move-result v4

    goto :goto_4

    .line 927
    .restart local v2    # "setQSDataTypeIcon":Z
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 928
    const/4 v2, 0x1

    .line 929
    if-ne p1, v0, :cond_0

    .line 930
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    goto/16 :goto_2
.end method

.method private updateIconSet(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    .line 965
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIconSet, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v8

    .line 967
    .local v8, "voiceNetorkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v7

    .line 968
    .local v7, "dataNetorkType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIconSet, voice network type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data network type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    if-nez v7, :cond_1

    move v1, v8

    .line 976
    .local v1, "chosenNetworkType":I
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIconSet, chosenNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hspaDataDistinguishable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hspapDistinguishable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showAtLeastThreeGees="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 985
    .local v2, "radioTech":I
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIIZZZI)V

    .line 988
    return-void

    .end local v1    # "chosenNetworkType":I
    .end local v2    # "radioTech":I
    :cond_1
    move v1, v7

    .line 973
    goto :goto_0

    .line 981
    .restart local v1    # "chosenNetworkType":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCorrectRilDataRadioTechnology()I

    move-result v2

    goto :goto_1
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 956
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private updateSimIndex(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSimIndexActivated(I)I

    move-result v0

    :goto_0
    aput v0, v1, p1

    .line 1499
    return-void

    .line 1496
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSimIndexDeactivated(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateSubscriptionStatus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 1518
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1519
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_1

    .line 1520
    aget v1, v2, v5

    .line 1521
    .local v1, "subId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubState(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    aput-boolean v3, v6, v0

    .line 1526
    .end local v1    # "subId":I
    :goto_2
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimSubscriptionActived["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "subId":I
    :cond_0
    move v3, v5

    .line 1521
    goto :goto_1

    .line 1524
    .end local v1    # "subId":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aput-boolean v5, v3, v0

    goto :goto_2

    .line 1528
    .end local v2    # "subIdtemp":[I
    :cond_2
    return-void
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 801
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: phoneId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 804
    .local v0, "dataSub":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->showNullSignalStrength(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 805
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, " No service"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v4

    aput v4, v3, p1

    .line 808
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v4, p1

    aput v4, v3, p1

    .line 810
    if-ne p1, v0, :cond_0

    .line 811
    const v3, 0x7f0200bd

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 814
    :cond_0
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal is null mSimSubscriptionActived="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimDataServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pinLocked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_3

    .line 827
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    aput v1, v3, p1

    .line 828
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v5

    invoke-static {p1, v4, v1, v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v4

    aput v4, v3, p1

    .line 851
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 854
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v4, p1

    aput v4, v3, p1

    .line 856
    if-ne p1, v0, :cond_2

    .line 857
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 862
    :cond_2
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mInetCondition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimPhoneSignalIconId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 833
    .end local v1    # "iconLevel":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .restart local v1    # "iconLevel":I
    aput v1, v3, p1

    .line 834
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    if-eqz v3, :cond_4

    .line 835
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 837
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getAlternateLteLevel()I

    move-result v2

    .line 838
    .local v2, "level":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 839
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, data type is lte, level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v2    # "level":I
    :cond_4
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v2    # "level":I
    :cond_5
    move v1, v2

    .line 838
    goto :goto_2
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 343
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 270
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 271
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 273
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 276
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1538
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1539
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1541
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1543
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1545
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1547
    const-string v0, "  mMSimDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1549
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1551
    const-string v0, "  mMSimDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1553
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aget v0, v0, p4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1557
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1559
    const-string v0, "  mMSimSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1561
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    const-string v0, "  mMSimMobileActivityIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const-string v0, "  mMSimCallBusyingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    const-string v0, "  mMSimIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    const-string v0, "  mSimSubscriptionActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSubscriptionActived:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1598
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1601
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1603
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1604
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1605
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1607
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1612
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1614
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1615
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1617
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1618
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1619
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1628
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1630
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1632
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1634
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1641
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1645
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1646
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1653
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    return-void

    .line 1533
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1478
    const/4 v0, 0x0

    .line 1480
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getGsmSignalLevel(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    const/4 v0, 0x0

    .line 1487
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1471
    const/4 v0, 0x0

    .line 1473
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 940
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 943
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 944
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 945
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 946
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 952
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDataConnected(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x1120098

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 408
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.sonymobile.intent.action.SIM2_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 412
    const/4 v11, 0x0

    .local v11, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 413
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 414
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 412
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 416
    .end local v11    # "sub":I
    :cond_4
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.sonymobile.provider.Telephony.SPN2_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 418
    :cond_5
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 420
    .local v8, "phoneId":Ljava/lang/Integer;
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SPN update on phoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v2

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 433
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v3, v0, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v0, v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 440
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 441
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 418
    .end local v8    # "phoneId":Ljava/lang/Integer;
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 442
    :cond_9
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 444
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 446
    :cond_b
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 450
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_c

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalSpn:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 454
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_d

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOriginalPlmn:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 458
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v3, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v4, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 459
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 460
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 463
    .end local v5    # "i":I
    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 465
    :cond_f
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 467
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 468
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 469
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 470
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 472
    .end local v5    # "i":I
    :cond_10
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 475
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 476
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 477
    :cond_12
    const-string v0, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 478
    const-string v0, "columnName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "column":Ljava/lang/String;
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_SUBINFO_CONTENT_CHANGE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "sub_state"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSubscriptionStatus()V

    .line 482
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v0, :cond_1

    .line 483
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIndex(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowCallBusying:Z

    if-eqz v0, :cond_13

    .line 485
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCallBusyingIcon(I)V

    .line 487
    :cond_13
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 488
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 482
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 491
    .end local v5    # "i":I
    .end local v7    # "column":Ljava/lang/String;
    :cond_14
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDefaultPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSubscriptionStatus()V

    .line 496
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v0, :cond_1

    .line 497
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIndex(I)V

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowCallBusying:Z

    if-eqz v0, :cond_15

    .line 499
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCallBusyingIcon(I)V

    .line 501
    :cond_15
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 502
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 503
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 504
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 505
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 507
    .end local v5    # "i":I
    :cond_16
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 510
    .local v12, "subId":I
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 511
    .local v8, "phoneId":I
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "state":Ljava/lang/String;
    const-string v0, "phone_type"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 515
    .local v9, "phoneType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received broadcast ACTION_CALL_STATE_CHANGED on phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x3

    if-eq v9, v0, :cond_1

    if-eqz v9, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneState:[I

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneConstants$State;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aput v1, v0, v8

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowCallBusying:Z

    if-eqz v0, :cond_1

    .line 522
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v0, :cond_1

    .line 523
    if-ne v5, v8, :cond_17

    .line 522
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 524
    :cond_17
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCallBusyingIcon(I)V

    .line 525
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_8
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 12
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 353
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v11, 0x7f0201d6

    .line 355
    .local v11, "roamingIconId":I
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v9, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v10, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 385
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 388
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster, mMSimPhoneSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataTypeIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimMobileActivityIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNoMSimIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .end local v11    # "roamingIconId":I
    :cond_1
    move v0, v2

    .line 346
    goto/16 :goto_0

    :cond_2
    move v11, v2

    .line 353
    goto/16 :goto_1

    .line 357
    .restart local v11    # "roamingIconId":I
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    goto/16 :goto_2

    .line 371
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v0, p2

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v9, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v10, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v0, p2

    goto :goto_4
.end method

.method protected refreshViews(I)V
    .locals 19
    .param p1, "phoneId"    # I

    .prologue
    .line 1146
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 1148
    .local v6, "context":Landroid/content/Context;
    const-string v5, ""

    .line 1149
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v11, ""

    .line 1150
    .local v11, "mobileLabel":Ljava/lang/String;
    const-string v14, ""

    .line 1152
    .local v14, "wifiLabel":Ljava/lang/String;
    const-string v15, "StatusBar.MSimNetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews phoneId ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "mMSimDataConnected ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v15, "StatusBar.MSimNetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews mMSimDataActivity ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 1157
    .local v7, "dataSub":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v15, :cond_8

    .line 1158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    aput v17, v15, p1

    .line 1159
    const-string v11, ""

    .line 1160
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1199
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_e

    .line 1200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-nez v15, :cond_d

    .line 1201
    const v15, 0x7f0d00ee

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1225
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 1226
    move-object v5, v14

    .line 1227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 1228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, p1

    .line 1238
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v15, :cond_0

    .line 1239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0d004d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 1241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d00ac

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, p1

    .line 1245
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    const/4 v8, 0x1

    .line 1247
    .local v8, "ethernetConnected":Z
    :goto_3
    if-eqz v8, :cond_1

    .line 1249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1252
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v15, v15, p1

    if-eqz v15, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v15

    if-nez v15, :cond_13

    .line 1258
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d00ad

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, p1

    .line 1260
    const v15, 0x7f02018f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    .line 1261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, p1

    aput v18, v16, p1

    aput v18, v15, p1

    .line 1263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 1264
    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 1265
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1270
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_11

    .line 1272
    const-string v11, ""

    .line 1286
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 1287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 1288
    move/from16 v0, p1

    if-ne v0, v7, :cond_4

    .line 1289
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1292
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1308
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowRATIconAlways:Z

    if-nez v15, :cond_7

    .line 1309
    const-string v15, "StatusBar.MSimNetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews: Data not connected!! Set no data type icon / Roaming for phoneId: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 1312
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimEnableMobileComboIcon:Z

    if-eqz v15, :cond_6

    .line 1313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v16, 0x7f0201bc

    aput v16, v15, p1

    .line 1315
    :cond_6
    move/from16 v0, p1

    if-ne v0, v7, :cond_7

    .line 1316
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1317
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRoaming(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1318
    const v15, 0x7f0201bc

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1324
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v15, " mMSimMobileActivityIconId=0x"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v15, v15, p1

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string v15, " mMSimCallBusyingIconId=0x"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v15, v15, p1

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v15, " mMSimIconId="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v15, v15, p1

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string v15, " sub="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1333
    const-string v16, "StatusBar.MSimNetworkController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews connected={"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_16

    const-string v15, " wifi"

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-eqz v15, :cond_17

    const-string v15, " data"

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " } mMSimSignalLevel="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalLevel:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimcombinedSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimcombinedActivityIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mAirplaneMode="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataActivity="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimPhoneSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataDirectionIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataTypeIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mNoMSimIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimMobileActivityIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mWifiIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1367
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_8

    .line 1170
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v8    # "ethernetConnected":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-eqz v15, :cond_9

    .line 1171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v11, v15, p1

    .line 1184
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-eqz v15, :cond_c

    .line 1185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1187
    move-object v5, v11

    .line 1188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    aput-object v16, v15, p1

    goto/16 :goto_0

    .line 1172
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v15, :cond_b

    .line 1173
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v11, v15, p1

    goto :goto_9

    .line 1176
    :cond_a
    const-string v11, ""

    goto :goto_9

    .line 1179
    :cond_b
    const v15, 0x7f0d00ed

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 1194
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 1195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    goto/16 :goto_0

    .line 1204
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 1206
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1209
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_1

    .line 1220
    :pswitch_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1211
    :pswitch_1
    const v15, 0x7f0203b5

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1214
    :pswitch_2
    const v15, 0x7f0203b7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1217
    :pswitch_3
    const v15, 0x7f0203b6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1230
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_f

    .line 1231
    const-string v14, ""

    goto/16 :goto_2

    .line 1233
    :cond_f
    const v15, 0x7f0d00ed

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 1245
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1274
    .restart local v8    # "ethernetConnected":Z
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_12

    .line 1276
    const-string v14, ""

    .line 1282
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, p1

    .line 1284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    goto/16 :goto_4

    .line 1278
    :cond_12
    const v15, 0x7f0d00ed

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1280
    move-object v5, v14

    goto :goto_a

    .line 1294
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-nez v15, :cond_5

    if-nez v8, :cond_5

    .line 1298
    const v15, 0x7f0d00ed

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    :goto_b
    aput v15, v16, p1

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v15, v15, p1

    :goto_c
    aput-object v15, v16, p1

    goto/16 :goto_5

    .line 1301
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    goto :goto_b

    .line 1303
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_c

    .line 1333
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    const-string v15, ""

    goto/16 :goto_6

    :cond_17
    const-string v15, ""

    goto/16 :goto_7

    .line 1370
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCallBusyingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1b

    .line 1383
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .line 1384
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_d

    .line 1386
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCallBusyingIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimCallBusyingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1390
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1c

    .line 1391
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    .line 1395
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    .line 1396
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1400
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1e

    .line 1401
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1404
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1f

    .line 1405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastNoSimIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1409
    :cond_1f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_20

    .line 1410
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    .line 1414
    :cond_20
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_21

    .line 1415
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    .line 1418
    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_22

    .line 1420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1423
    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_23

    .line 1425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1429
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_24

    .line 1430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 1434
    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25

    .line 1435
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1437
    .local v2, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    if-ge v9, v2, :cond_25

    .line 1438
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1439
    .local v13, "v":Landroid/widget/TextView;
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 1444
    .end local v2    # "N":I
    .end local v9    # "i":I
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1445
    .restart local v2    # "N":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f
    if-ge v9, v2, :cond_27

    .line 1446
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1447
    .restart local v13    # "v":Landroid/widget/TextView;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 1449
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 1451
    :cond_26
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 1456
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1457
    const/4 v9, 0x0

    :goto_11
    if-ge v9, v2, :cond_29

    .line 1458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1459
    .restart local v13    # "v":Landroid/widget/TextView;
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    const-string v15, ""

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 1461
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 1463
    :cond_28
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    .line 1466
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 1467
    return-void

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 285
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    .line 286
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 287
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 290
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 291
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 292
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 293
    .local v1, "subId":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-lez v1, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 300
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    const/16 v5, 0x1e1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 289
    .end local v1    # "subId":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "subId":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 312
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_2
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1102
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1107
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1110
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    .line 1111
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v4, :cond_1

    .line 1112
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 1113
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1119
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1122
    .local v1, "connectionStatus":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: networkInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: connectionStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v4, 0x32

    if-le v1, v4, :cond_2

    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    .line 1127
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1128
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    .line 1134
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxIcons()V

    .line 1135
    const/4 v3, 0x0

    .local v3, "sub":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1136
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1137
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 1138
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1    # "connectionStatus":I
    .end local v3    # "sub":I
    :cond_0
    move v4, v6

    .line 1110
    goto :goto_0

    .line 1115
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 1116
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .restart local v1    # "connectionStatus":I
    :cond_2
    move v5, v6

    .line 1126
    goto :goto_2

    .line 1130
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_3

    .line 1140
    .restart local v3    # "sub":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiIcons()V

    .line 1141
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    const v5, 0x1120099

    .line 1058
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1062
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1063
    .local v0, "something":Z
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p5

    if-eqz v2, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p5

    invoke-virtual {p0, p4, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->appendRatToNetworkName(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object p4

    .line 1068
    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const/4 v0, 0x1

    .line 1071
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1072
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1075
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "Do not display spn string when showPlmn and showSpn are both trueand plmn string is not null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 1090
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 1094
    :goto_1
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMSimNetworkName[phoneId] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void

    .line 1078
    :cond_3
    if-eqz v0, :cond_4

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p5

    if-eqz v2, :cond_5

    .line 1083
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p5

    invoke-virtual {p0, p2, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->appendRatToNetworkName(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object p2

    .line 1085
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const/4 v0, 0x1

    goto :goto_0

    .line 1092
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_1
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 731
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    .line 737
    .local v1, "phoneId":I
    :goto_0
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-ltz v1, :cond_2

    .line 739
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 740
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 763
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 764
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 765
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 766
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateIconSet(I)V

    .line 769
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 770
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIndex(I)V

    .line 771
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimShowCallBusying:Z

    if-eqz v4, :cond_1

    .line 772
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCallBusyingIcon(I)V

    .line 774
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 775
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 777
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    return-void

    .line 734
    .end local v1    # "phoneId":I
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 742
    .restart local v1    # "phoneId":I
    :cond_4
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 745
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 747
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 748
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 751
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 753
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 754
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_1

    .line 757
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_1

    .line 760
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_1
.end method
