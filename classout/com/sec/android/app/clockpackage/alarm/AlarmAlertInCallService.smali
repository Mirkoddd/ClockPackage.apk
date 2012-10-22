.class public Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
.super Landroid/app/Service;
.source "AlarmAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCount:I

.field private mOldVolume:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    .line 29
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mBinder:Landroid/os/IBinder;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "AlarmAlert"

    const-string v1, "..onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 14
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    if-eqz p1, :cond_72

    .line 54
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    .line 56
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->acquire(Landroid/content/Context;)V

    .line 59
    const-string v0, "AlarmAlert"

    const-string v1, "..onStart.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 68
    .local v7, mOriginVoiceCallVolume:I
    const-string v0, "ItemVolume"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 70
    .local v10, vol:I
    if-le v10, v7, :cond_32

    .line 71
    move v10, v7

    .line 72
    :cond_32
    if-gtz v10, :cond_35

    .line 73
    const/4 v10, 0x1

    .line 76
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alertoncall_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 79
    .local v6, mAlertMode:I
    if-ne v6, v3, :cond_73

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 84
    :goto_46
    packed-switch v6, :pswitch_data_c6

    .line 122
    :goto_49
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..mAlertMode.. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;

    const-wide/32 v2, 0xe678

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 141
    .end local v6           #mAlertMode:I
    .end local v7           #mOriginVoiceCallVolume:I
    .end local v10           #vol:I
    :cond_72
    return-void

    .line 82
    .restart local v6       #mAlertMode:I
    .restart local v7       #mOriginVoiceCallVolume:I
    .restart local v10       #vol:I
    :cond_73
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v10, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_46

    .line 94
    :pswitch_79
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const-string v1, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_49

    .line 101
    :pswitch_97
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 103
    const-string v0, "VoiceString"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_49

    .line 112
    .end local v9           #str:Ljava/lang/String;
    :pswitch_b8
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    .line 113
    .local v8, mVibPlayer:Landroid/os/Vibrator;
    const-wide/16 v0, 0x5dc

    invoke-virtual {v8, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_49

    .line 84
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_79
        :pswitch_97
        :pswitch_b8
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 152
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->release()V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_26

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 162
    :cond_26
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
