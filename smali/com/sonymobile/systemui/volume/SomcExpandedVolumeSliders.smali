.class public Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
.super Landroid/widget/LinearLayout;
.source "SomcExpandedVolumeSliders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;,
        Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private final mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

.field private mImageIDs:[I

.field private mImageViewIDs:[I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumberOfSliders:I

.field private mPanelMain:Landroid/widget/LinearLayout;

.field private mSeekBarIDs:[I

.field private mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

.field private mStreamOrderDiscardRingtoneOrNotification:I

.field private mStreamTypeInFocus:I

.field private mStreamTypeOffset:I

.field private mStreamsOrder:[I

.field private mTextIDs:[I

.field private mTextViewIDs:[I

.field private mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-array v0, v2, [Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    .line 51
    new-array v0, v2, [Landroid/preference/SeekBarVolumizer$Callback;

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    .line 61
    new-instance v0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;-><init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    .line 99
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mTextViewIDs:[I

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mImageViewIDs:[I

    .line 109
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarIDs:[I

    .line 113
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    .line 118
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mTextIDs:[I

    .line 123
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mImageIDs:[I

    .line 68
    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    .line 70
    iput v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mNumberOfSliders:I

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    return-void

    .line 99
    :array_0
    .array-data 4
        0x7f10003e
        0x7f100042
        0x7f100046
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x7f10003d
        0x7f100041
        0x7f100045
    .end array-data

    .line 109
    :array_2
    .array-data 4
        0x7f10003f
        0x7f100043
        0x7f100047
    .end array-data

    .line 113
    :array_3
    .array-data 4
        0x2
        0x5
        0x3
        0x4
    .end array-data

    .line 118
    :array_4
    .array-data 4
        0x7f0d002d
        0x7f0d002f
        0x7f0d002e
        0x7f0d0030
    .end array-data

    .line 123
    :array_5
    .array-data 4
        0x7f0200d7
        0x7f020069
        0x7f020029
        0x7f020023
    .end array-data
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
    .param p1, "x1"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/widget/SeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
    .param p1, "x1"    # Landroid/widget/SeekBar;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->seekBarChangeUpdateIcons(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method private createVolumeSliders()V
    .locals 9

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamOrderDiscardRingtoneOrNotification:I

    .line 134
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mNumberOfSliders:I

    if-ge v6, v0, :cond_6

    .line 136
    invoke-direct {p0, v6}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->getOffset(I)I

    move-result v7

    .line 138
    .local v7, "offsetAdded":I
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    new-instance v1, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;-><init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;)V

    aput-object v1, v0, v6

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    aget-object v0, v0, v6

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    new-instance v1, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;-><init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)V

    aput-object v1, v0, v6

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mImageViewIDs:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$402(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mTextViewIDs:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mTextView:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$502(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarIDs:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$602(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 179
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$500(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mTextIDs:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mImageIDs:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 184
    const/4 v4, 0x0

    .line 185
    .local v4, "defaultUri":Landroid/net/Uri;
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v7

    if-ne v0, v1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v4

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v8, v0, v6

    new-instance v0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$2;

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v3, v1, v7

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    aget-object v5, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$2;-><init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v8, v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$702(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;

    .line 198
    .end local v4    # "defaultUri":Landroid/net/Uri;
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$600(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v7

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mStreamId:I
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$902(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;I)I

    .line 204
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v7

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v7

    if-ne v0, v1, :cond_5

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$600(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v0, v0, v6

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 212
    .end local v7    # "offsetAdded":I
    :cond_6
    return-void
.end method

.method private exitSliders()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iput-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mNumberOfSliders:I

    if-ge v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 220
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$702(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mSeekBarVolumizerCallBacks:[Landroid/preference/SeekBarVolumizer$Callback;

    aput-object v2, v1, v0

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 7

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    .local v2, "mediaUri":Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 316
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.settings"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 317
    .local v0, "appResources":Landroid/content/res/Resources;
    const-string v4, "media_volume"

    const-string v5, "raw"

    const-string v6, "com.android.settings"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 319
    .local v3, "resId":I
    if-eqz v3, :cond_0

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://com.android.settings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    .end local v0    # "appResources":Landroid/content/res/Resources;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "resId":I
    :cond_0
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getOffset(I)I
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 264
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamTypeOffset:I

    add-int v0, v1, p1

    .line 266
    .local v0, "offset":I
    if-lt v0, v4, :cond_0

    .line 267
    add-int/lit8 v0, v0, -0x4

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->isWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 272
    iput v3, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamOrderDiscardRingtoneOrNotification:I

    .line 275
    :cond_1
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamOrderDiscardRingtoneOrNotification:I

    add-int/2addr v0, v1

    .line 285
    :goto_0
    if-lt v0, v4, :cond_2

    .line 286
    add-int/lit8 v0, v0, -0x4

    .line 288
    :cond_2
    return v0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v1, v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 279
    iput v3, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamOrderDiscardRingtoneOrNotification:I

    .line 282
    :cond_4
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamOrderDiscardRingtoneOrNotification:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isWifiOnly()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 304
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private seekBarChangeUpdateIcons(Landroid/widget/SeekBar;I)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I

    .prologue
    const v3, 0x7f0200d9

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mNumberOfSliders:I

    if-ge v0, v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$600(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/SeekBar;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mStreamId:I
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$900(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 236
    if-nez p2, :cond_2

    .line 237
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mStreamId:I
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$900(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 245
    if-nez p2, :cond_3

    .line 246
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mVolumeSliderInfo:[Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;

    aget-object v1, v1, v0

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 255
    :cond_4
    return-void
.end method

.method private setStreamTypeOffset()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mNumberOfSliders:I

    if-ge v0, v1, :cond_0

    .line 294
    iget v1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamTypeInFocus:I

    iget-object v2, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamsOrder:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 295
    iput v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamTypeOffset:I

    .line 299
    :cond_0
    return-void

    .line 293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hidePanel()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->exitSliders()V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f10003b

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    .line 80
    return-void
.end method

.method public showPanel(I)V
    .locals 2
    .param p1, "streamTypeInFocus"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mStreamTypeInFocus:I

    .line 84
    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->setStreamTypeOffset()V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->createVolumeSliders()V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mPanelMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method
