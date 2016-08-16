.class Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;
.super Ljava/lang/Object;
.source "SomcExpandedVolumeSliders.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->createVolumeSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 163
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0, p1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$202(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;

    .line 151
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$300(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$300(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    :cond_1
    return-void
.end method
