.class public Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;
.super Landroid/app/Activity;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;
    }
.end annotation


# instance fields
.field private m24HMode:Z

.field private mAMPM:Ljava/lang/String;

.field private mAlarmName:Landroid/widget/TextView;

.field private mAlarmTime:Landroid/widget/TextView;

.field private mAlarmTime_ampm:Landroid/widget/TextView;

.field private mAlertTimer:Landroid/os/CountDownTimer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonEffectSilentMode:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCount:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCurrentTime_ampm:Landroid/widget/TextView;

.field private mEarphone_vib:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mOldVolume:I

.field private mPause:Ljava/lang/Boolean;

.field private mPhoneStateExtra:Ljava/lang/String;

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

.field private mSecHand:Landroid/graphics/drawable/Drawable;

.field private mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

.field private mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

.field private mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

.field private mSnoozeActive:Z

.field private mSnoozeCount:I

.field private mSoundTone:Ljava/lang/String;

.field private mUserStop:Z

.field private mVoiceCount:I

.field private mVoiceString:Ljava/lang/String;

.field private mVolume:I

.field private m_contentView:Landroid/view/ViewGroup;

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 94
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mUserStop:Z

    .line 135
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mEarphone_vib:Z

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    .line 152
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 154
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    .line 1350
    return-void
.end method

.method private ChangeTextColor(I)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f080058

    const v3, 0x7f080059

    const v2, 0x7f08005a

    .line 936
    if-nez p1, :cond_4d

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    :cond_4c
    :goto_4c
    return-void

    .line 944
    :cond_4d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4c

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4c
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->ChangeTextColor(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mUserStop:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopAlarmSound()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    return-object v0
.end method

.method private cleanupResouces()V
    .registers 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m_contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m_contentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 1556
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 1557
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1558
    return-void
.end method

.method private defaultStop()V
    .registers 4

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_14

    .line 763
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V

    .line 766
    :goto_13
    return-void

    .line 765
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V

    goto :goto_13
.end method

.method private initContentView()V
    .registers 9

    .prologue
    const v7, 0x7f02016a

    const v6, 0x7f020003

    const/4 v5, 0x0

    .line 831
    const-string v0, "AlarmAlert"

    const-string v1, "..initContentView.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    .line 834
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    .line 835
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    .line 836
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    .line 837
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7c

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_81
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V

    .line 852
    const v0, 0x7f0e0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v0, :cond_eb

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftHintText(I)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightHintText(I)V

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f02014d

    const v2, 0x7f02016b

    const v3, 0x7f020002

    const v4, 0x7f020016

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftTabResources(IIII)V

    .line 865
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_ec

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_ec

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f02014f

    const v2, 0x7f020017

    invoke-virtual {v0, v1, v7, v6, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    .line 882
    :goto_e1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setOnTriggerListener(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;)V

    .line 931
    :cond_eb
    return-void

    .line 873
    :cond_ec
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f020018

    invoke-virtual {v0, v5, v7, v6, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    goto :goto_e1
.end method

.method private isInCallState()Z
    .registers 3

    .prologue
    .line 462
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 468
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1535
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_11

    .line 1543
    :goto_4
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 1544
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1545
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13

    .line 1550
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_10
    return-void

    .line 1537
    :catch_11
    move-exception v2

    goto :goto_4

    .line 1547
    :catch_13
    move-exception v2

    goto :goto_10
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 1510
    if-eqz p1, :cond_1b

    .line 1514
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1516
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1517
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_b
    if-ge v3, v2, :cond_18

    .line 1519
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1520
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_17

    .line 1517
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1523
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_17
    move-exception v5

    .line 1527
    :cond_18
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->nullViewDrawable(Landroid/view/View;)V

    .line 1529
    :cond_1b
    return-void
.end method

.method private pausePlaying()V
    .registers 5

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_18

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 480
    :cond_18
    return-void
.end method

.method private pressSnoozeBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 707
    const-string v0, "AlarmAlert"

    const-string v1, "..pressSnoozeBtn.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_13

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 712
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 715
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setIsFinishing()V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 717
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 718
    const v1, 0x10001000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_3c

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 724
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 726
    :cond_3c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->release()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateAlarm(Z)V

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->finish()V

    .line 730
    return-void
.end method

.method private pressStopBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 734
    const-string v0, "AlarmAlert"

    const-string v1, "..pressStopBtn.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_13

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 739
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 742
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setIsFinishing()V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 744
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 745
    const v1, 0x10001000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_3c

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 750
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 752
    :cond_3c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->release()V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateAlarm(Z)V

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->finish()V

    .line 756
    return-void
.end method

.method private setWinodowOnTop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 772
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 773
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 774
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 782
    return-void
.end method

.method private stopAlarmSound()V
    .registers 3

    .prologue
    .line 1127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPause(Z)V

    .line 1129
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V

    .line 1130
    return-void
.end method

.method private updateAlarm(Z)V
    .registers 9
    .parameter "isSnooze"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 786
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlarm isSnooze : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-nez p1, :cond_46

    .line 789
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_46

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_c3

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v1

    if-ne v1, v5, :cond_95

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 817
    :goto_43
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updatedb()V

    .line 822
    :cond_46
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmProvider.CONTENT_URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection : _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void

    .line 795
    :cond_95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 796
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 799
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v5, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_b9

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 803
    :cond_b9
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto :goto_43

    .line 807
    .end local v0           #c:Ljava/util/Calendar;
    :cond_c3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 808
    .restart local v0       #c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v5, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_e2

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 814
    :cond_e2
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto/16 :goto_43
.end method

.method private updateDisplay()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x4

    const v9, 0x7f0b0027

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 956
    const-string v0, "AlarmAlert"

    const-string v1, "..updateDisplay.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->isPause()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-nez v0, :cond_34

    .line 959
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    if-eq v0, v8, :cond_34

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    if-eq v0, v1, :cond_34

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 968
    :cond_34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 969
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    .line 971
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 972
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_92

    .line 974
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v1, :cond_181

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    :goto_57
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setClockDial()V

    .line 1001
    :cond_92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    .line 1052
    :goto_115
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_173

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    if-lez v0, :cond_173

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v1, v1, 0x64

    .line 1055
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    if-eqz v2, :cond_173

    .line 1056
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v2, :cond_2b3

    .line 1058
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    :goto_13b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_173
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    const/16 v1, 0x3b

    if-lt v0, v1, :cond_180

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_180

    .line 1089
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V

    .line 1091
    :cond_180
    return-void

    .line 977
    :cond_181
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->getAmPmHour(I)I

    move-result v0

    .line 978
    if-gez v0, :cond_1a0

    .line 979
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 980
    mul-int/lit8 v0, v0, -0x1

    .line 984
    :goto_197
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57

    .line 982
    :cond_1a0
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0028

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    goto :goto_197

    .line 1014
    :cond_1b2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_268

    .line 1015
    const-string v1, ""

    .line 1016
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-nez v3, :cond_1ef

    .line 1017
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_258

    .line 1018
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0070

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    :cond_1ef
    :goto_1ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_115

    .line 1020
    :cond_258
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0071

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1ef

    .line 1046
    :cond_268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". It is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_115

    .line 1060
    :cond_2b3
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->getAmPmHour(I)I

    move-result v0

    .line 1062
    if-gez v0, :cond_2d7

    .line 1063
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 1065
    mul-int/lit8 v0, v0, -0x1

    .line 1070
    :goto_2ce
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 1067
    :cond_2d7
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    goto :goto_2ce
.end method

.method private updatedb()V
    .registers 6

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1100
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1449
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_14

    move v0, v1

    .line 1450
    .local v0, up:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_20

    .line 1485
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 1449
    .end local v0           #up:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 1454
    .restart local v0       #up:Z
    :pswitch_16
    if-eqz v0, :cond_13

    .line 1477
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->moveTaskToBack(Z)Z

    .line 1479
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopAlarmSound()V

    goto :goto_13

    .line 1450
    nop

    :pswitch_data_20
    .packed-switch 0x18
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x3

    .line 656
    const-string v5, "AlarmAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..onConfigurationChanged.. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 658
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->cleanupResouces()V

    .line 659
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 660
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 662
    .local v3, orientationDisplay:I
    move v1, v3

    .line 663
    .local v1, orientTemp:I
    if-ne v1, v8, :cond_3f

    .line 664
    const/4 v1, 0x1

    .line 666
    :cond_3f
    const-string v5, "AlarmAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation fuzzed : config -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", display -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    add-int/lit8 v5, v2, -0x1

    if-eq v5, v1, :cond_79

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 670
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 671
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_bb

    .line 672
    const/4 v5, 0x1

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 675
    :goto_72
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 681
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_79
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v5, v8, :cond_c6

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 683
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 693
    :goto_9f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 695
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 697
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 698
    return-void

    .line 674
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_bb
    const/4 v5, 0x2

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_72

    .line 685
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_bf
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9f

    .line 687
    :cond_c6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 688
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9f

    .line 690
    :cond_e7
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "android.intent.action.ACTION_POWEROFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 199
    if-nez v0, :cond_173

    .line 200
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 206
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v0, v7, :cond_18c

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 220
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 233
    :goto_bc
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setWinodowOnTop()V

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 235
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->acquire(Landroid/content/Context;)V

    .line 238
    const-string v0, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    .line 261
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    .line 262
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 263
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCallState(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v2, "VoiceString"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "ItemVolume"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 275
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 280
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;

    const-wide/32 v2, 0xe678

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 366
    :goto_13b
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;

    const-wide/32 v2, 0xe678

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 409
    :cond_156
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 411
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_168

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 420
    :cond_168
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void

    .line 201
    :cond_173
    if-ne v0, v1, :cond_17b

    .line 202
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_60

    .line 203
    :cond_17b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_60

    .line 204
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_60

    .line 222
    :cond_184
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 224
    :cond_18c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 225
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 227
    :cond_1ae
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 350
    :cond_1b5
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "driving_mode_on"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1eb

    move v0, v1

    .line 352
    :goto_1c2
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_alarm_notification"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1ed

    move v2, v1

    .line 355
    :goto_1cf
    if-eqz v0, :cond_1d3

    if-nez v2, :cond_1d9

    :cond_1d3
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v7, :cond_1ef

    .line 357
    :cond_1d9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 358
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    .line 362
    :goto_1e0
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13b

    :cond_1eb
    move v0, v6

    .line 350
    goto :goto_1c2

    :cond_1ed
    move v2, v6

    .line 352
    goto :goto_1cf

    .line 360
    :cond_1ef
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    goto :goto_1e0
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 621
    const-string v0, "AlarmAlert"

    const-string v1, "..onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_17

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 626
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    .line 633
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_27

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 640
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_2b

    .line 646
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 647
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    .line 649
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->cleanupResouces()V

    .line 650
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 652
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1103
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1d

    .line 1104
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..onKeyDown.. keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_1d
    packed-switch p1, :pswitch_data_22

    .line 1120
    :pswitch_20
    return v3

    .line 1106
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_20
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 496
    const-string v1, "AlarmAlert"

    const-string v2, "..onPause.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_e

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 505
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 507
    .local v0, sm:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_20

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 510
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v1, :cond_29

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onPause()V

    .line 515
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v1, :cond_32

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->inactiveHandle()V

    .line 519
    :cond_32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 525
    return-void
.end method

.method protected onResume()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 529
    const-string v6, "AlarmAlert"

    const-string v7, "..onResume..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 538
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 541
    :cond_1f
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_2b

    .line 542
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 545
    :cond_2b
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 553
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 557
    .local v5, sm:Landroid/app/StatusBarManager;
    if-eqz v5, :cond_54

    .line 558
    const/high16 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 560
    .end local v5           #sm:Landroid/app/StatusBarManager;
    :cond_54
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v6, :cond_6b

    .line 561
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onResume()V

    .line 569
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Resume(I)V

    .line 570
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setVolume(F)V

    .line 574
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 575
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 577
    .local v3, orientationDisplay:I
    move v1, v3

    .line 578
    .local v1, orientTemp:I
    if-ne v1, v10, :cond_89

    .line 579
    const/4 v1, 0x1

    .line 581
    :cond_89
    const-string v6, "AlarmAlert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation fuzzed : config -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    add-int/lit8 v6, v2, -0x1

    if-eq v6, v1, :cond_ec

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 585
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 586
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_106

    .line 587
    const/4 v6, 0x1

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 590
    :goto_bc
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 594
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v6, v10, :cond_111

    .line 595
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 596
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 607
    :goto_e9
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 610
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_ec
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v6, :cond_f5

    .line 611
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->activeHandle()V

    .line 614
    :cond_f5
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 617
    return-void

    .line 589
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_106
    const/4 v6, 0x2

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_bc

    .line 598
    :cond_10a
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_e9

    .line 600
    :cond_111
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 601
    const v6, 0x7f030001

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_e9

    .line 603
    :cond_132
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_e9
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 487
    const-string v0, "AlarmAlert"

    const-string v1, "..onStop.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 492
    return-void
.end method

.method protected setClockDial()V
    .registers 12

    .prologue
    const/16 v10, -0x2a

    const/16 v9, 0x500

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1396
    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_e4

    move v1, v2

    .line 1399
    :goto_e
    array-length v0, v3

    if-ge v1, v0, :cond_e2

    .line 1400
    aget v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    .line 1401
    if-nez v0, :cond_1f

    .line 1399
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1405
    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setSecondHand(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1408
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_3a

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v5, v9, :cond_4c

    :cond_3a
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v9, :cond_60

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_60

    .line 1410
    :cond_4c
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    .line 1421
    :goto_4f
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    .line 1423
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-ne v4, v7, :cond_92

    .line 1424
    aget v4, v3, v1

    const/high16 v5, 0x7f0e

    if-ne v4, v5, :cond_8e

    .line 1425
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto :goto_1b

    .line 1411
    :cond_60
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_76

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v9, :cond_76

    .line 1412
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1414
    :cond_76
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_88

    .line 1415
    const/16 v4, -0x15

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1417
    :cond_88
    const/16 v4, -0x10

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1427
    :cond_8e
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto :goto_1b

    .line 1429
    :cond_92
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_ba

    .line 1431
    aget v4, v3, v1

    const v5, 0x7f0e0001

    if-ne v4, v5, :cond_b5

    .line 1432
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1434
    :cond_b5
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1435
    :cond_ba
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_1b

    .line 1437
    aget v4, v3, v1

    const v5, 0x7f0e0002

    if-ne v4, v5, :cond_dd

    .line 1438
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1440
    :cond_dd
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1444
    :cond_e2
    return-void

    .line 1396
    nop

    :array_e4
    .array-data 0x4
        0x0t 0x0t 0xet 0x7ft
        0x1t 0x0t 0xet 0x7ft
        0x2t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public setContentView(I)V
    .registers 5
    .parameter "layoutResID"

    .prologue
    .line 1493
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1496
    .local v0, mainView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(Landroid/view/View;)V

    .line 1497
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1502
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1504
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 1505
    return-void
.end method
