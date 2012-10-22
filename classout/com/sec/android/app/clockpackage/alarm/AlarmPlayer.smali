.class public Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    }
.end annotation


# static fields
.field public static final PLAYMOD:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static final vibPattern:[J


# instance fields
.field private final DEBUG:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallState:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefautSoundUri:Landroid/net/Uri;

.field private mEndAlertOnVoice:Z

.field private mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

.field private mIsFinishing:Z

.field mIsMute:Z

.field private mIsTTSStream:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mOriginTtsVolume:I

.field private mOriginVoiceCallVolume:I

.field private mPause:Z

.field private mPlayMode:I

.field private mRotateListener:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

.field private mSoundPlayer:Landroid/media/MediaPlayer;

.field private mSoundUri:Landroid/net/Uri;

.field private mTtsString:Ljava/lang/String;

.field private mVibPlayer:Landroid/os/Vibrator;

.field private mVoicePlayer:Landroid/speech/tts/TextToSpeech;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->PLAYMOD:[I

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    return-void

    .line 107
    nop

    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x11t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_2c
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 87
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    .line 141
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    .line 825
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 150
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    .line 151
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    .line 152
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 154
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mDefautSoundUri:Landroid/net/Uri;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mDefautSoundUri:Landroid/net/Uri;

    if-nez v0, :cond_4b

    .line 159
    const-string v0, "/system/media/audio/alarms/Good_Morning.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mDefautSoundUri:Landroid/net/Uri;

    .line 161
    :cond_4b
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 164
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    .line 165
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    .line 166
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 169
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    .line 171
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mRotateListener:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

    .line 175
    const-string v0, "AlarmPlayer"

    const-string v1, "AlertPlayer constructor call."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private SoundPlay()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 411
    const-string v1, "AlarmPlayer"

    const-string v2, "SoundPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_b5

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v1, :cond_b5

    .line 414
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 416
    :try_start_19
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 434
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-nez v1, :cond_80

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 440
    :goto_4a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 445
    const-string v2, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "melody stream volume current : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_7f
    :goto_7f
    return-void

    .line 437
    :cond_80
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_87} :catch_88

    goto :goto_4a

    .line 450
    :catch_88
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mDefautSoundUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_7f

    .line 462
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b5
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_7f
.end method

.method private SoundStop()V
    .registers 5

    .prologue
    .line 645
    const-string v1, "AlarmPlayer"

    const-string v2, "SoundStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2b

    .line 649
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 650
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 651
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 652
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_2c

    .line 656
    :goto_21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 660
    :cond_2b
    return-void

    .line 653
    :catch_2c
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private VibratePlay()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v0, :cond_41

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JII)V

    .line 485
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_40
    :goto_40
    return-void

    .line 487
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-eqz v0, :cond_40

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JII)V

    goto :goto_40
.end method

.method private VibrateStop()V
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-eqz v0, :cond_9

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 665
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 666
    return-void
.end method

.method private VoicePlay()V
    .registers 5

    .prologue
    .line 616
    const-string v0, "AlarmPlayer"

    const-string v1, "VoicePlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v0, :cond_27

    .line 623
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 641
    :goto_26
    return-void

    .line 639
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->doSpeak()V

    goto :goto_26
.end method

.method private VoiceStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 671
    const-string v0, "AlarmPlayer"

    const-string v1, "VoiceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_16

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 677
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 680
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v0, v2, :cond_1f

    .line 682
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 685
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 686
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCompleteListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->doSpeak()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    return v0
.end method

.method private beepSoundPlay()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 363
    const-string v1, "AlarmPlayer"

    const-string v2, "beepSoundPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_91

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v1, :cond_91

    .line 366
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 368
    :try_start_17
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v3, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const v2, 0x3f19999a

    const v3, 0x3f19999a

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 388
    const-string v2, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep stream volume current : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_76} :catch_77

    .line 406
    :cond_76
    :goto_76
    return-void

    .line 393
    :catch_77
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 401
    .end local v0           #e:Ljava/lang/Exception;
    :cond_91
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_76

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_76
.end method

.method private doSpeak()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 568
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v4, v6, :cond_a

    .line 570
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 573
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_8c

    .line 574
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 575
    iput-boolean v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 576
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    if-eqz v4, :cond_8d

    .line 577
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    .line 579
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 581
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    if-le v4, v5, :cond_36

    .line 582
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 583
    :cond_36
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    if-gtz v4, :cond_3c

    .line 584
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 585
    :cond_3c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    invoke-virtual {v4, v8, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 591
    :goto_43
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "utteranceId"

    const-string v6, "alarm_name_string"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "streamType"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, mDefaultLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, mDefaultCountry:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, mDefaultLocVariant:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 603
    .local v0, languageResult:I
    if-gez v0, :cond_83

    .line 604
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 608
    :cond_83
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v7, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 611
    .end local v0           #languageResult:I
    .end local v1           #mDefaultCountry:Ljava/lang/String;
    .end local v2           #mDefaultLanguage:Ljava/lang/String;
    .end local v3           #mDefaultLocVariant:Ljava/lang/String;
    :cond_8c
    return-void

    .line 588
    :cond_8d
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "streamType"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43
.end method

.method private setCompleteListener()V
    .registers 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_e

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 563
    :cond_e
    return-void
.end method


# virtual methods
.method public GetEndAlertOnVoice()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    return v0
.end method

.method public Pause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2d

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 331
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 332
    return-void
.end method

.method public Play(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v1, v4, :cond_10

    .line 224
    const-string v1, "AlarmPlayer"

    const-string v2, "Play() - mIsMute is TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 289
    :cond_f
    :goto_f
    return-void

    .line 231
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 234
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, mAlertMode:I
    if-eq v0, v4, :cond_4a

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    goto :goto_f

    .line 248
    .end local v0           #mAlertMode:I
    :cond_4a
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmPlayer - PlayerMode = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    if-eqz v1, :cond_74

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-nez v1, :cond_74

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_b9

    .line 252
    :cond_74
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - Pause or null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-eqz v1, :cond_99

    .line 254
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_99
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_f

    .line 256
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFinishing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 260
    :cond_b9
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_ce

    .line 262
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - SoundPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f4

    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->beepSoundPlay()V

    .line 278
    :cond_ce
    :goto_ce
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_e2

    .line 280
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - VibratePlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    rem-int/lit8 v1, p1, 0x4

    if-ne v1, v4, :cond_e2

    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibratePlay()V

    .line 284
    :cond_e2
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit16 v1, v1, 0x100

    if-lez v1, :cond_f

    .line 286
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - VoicePlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V

    goto/16 :goto_f

    .line 267
    :cond_f4
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundPlay()V

    goto :goto_ce
.end method

.method public Release()V
    .registers 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    .line 349
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibrateStop()V

    .line 350
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 351
    return-void
.end method

.method public Resume(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 336
    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    .line 337
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    .line 338
    :cond_9
    return-void
.end method

.method public Stop()V
    .registers 3

    .prologue
    .line 293
    const-string v0, "AlarmPlayer"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-nez v0, :cond_14

    .line 296
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    .line 305
    :cond_14
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_1d

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibrateStop()V

    .line 309
    :cond_1d
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_26

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 316
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2d

    .line 317
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 319
    :cond_2d
    return-void
.end method

.method public isPause()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    return v0
.end method

.method public isPlying()Z
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->unregisterMotionListener()V

    .line 722
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->registerMotionListener()V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 727
    return-void
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_10

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 78
    :cond_10
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 79
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .registers 5
    .parameter "strValue"

    .prologue
    .line 343
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState strValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setIsFinishing()V
    .registers 2

    .prologue
    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    .line 710
    return-void
.end method

.method public setPause(Z)V
    .registers 5
    .parameter "bValue"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 217
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPause mPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public setPlayMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 179
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->PLAYMOD:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    .line 180
    return-void
.end method

.method public setPlayResource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "tts"

    .prologue
    .line 183
    if-eqz p1, :cond_26

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 185
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    .line 192
    :goto_1c
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    .line 193
    return-void

    .line 187
    :cond_1f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_1c

    .line 190
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mDefautSoundUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_1c
.end method

.method public setVolume(F)V
    .registers 5
    .parameter "nVol"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 198
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 202
    :cond_29
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_b

    .line 83
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 84
    :cond_b
    return-void
.end method
