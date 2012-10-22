.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 153
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_20

    .line 154
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 157
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getState()I

    move-result v0

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_PLAY:I

    if-ne v0, v1, :cond_3f

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 161
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->changeAlarmVolume(I)V

    .line 165
    :cond_50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I
    invoke-static {v0, p2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;I)I

    .line 169
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 174
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7c

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7d

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, vStr:Ljava/lang/String;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_48

    .line 178
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_48
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$800(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    .line 197
    .end local v0           #vStr:Ljava/lang/String;
    :cond_7c
    :goto_7c
    return-void

    .line 191
    :cond_7d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$800(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_7c
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 201
    return-void
.end method
