.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;
.super Landroid/app/Activity;
.source "AlarmSmartAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$WakeLockSmart;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;
    }
.end annotation


# instance fields
.field private count:F

.field private m24HMode:Z

.field private mAMPM:Ljava/lang/String;

.field private mAlarmName:Landroid/widget/TextView;

.field private mAlarmTime:Landroid/widget/TextView;

.field private mAlarmTime_ampm:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrightness:F

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCurrentTime_ampm:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mOldVolume:I

.field private mPause:Ljava/lang/Boolean;

.field private mPhoneStateExtra:Ljava/lang/String;

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

.field private mSecHand:Landroid/graphics/drawable/Drawable;

.field private mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

.field private mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

.field private mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

.field private mTimeVal:J

.field private mTimer1:Landroid/os/CountDownTimer;

.field private mVoiceString:Ljava/lang/String;

.field private mVol:F

.field private mVolMax:F

.field private mVolume:I

.field private m_contentView:Landroid/view/ViewGroup;

.field private per:F

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 59
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

    .line 60
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 108
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;

    .line 881
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goExit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mOldVolume:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->pausePlaying()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateDisplay()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    return p1
.end method

.method static synthetic access$508(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    const/high16 v1, 0x3f80

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolMax:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F

    return p1
.end method

.method private checkURI()Z
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private cleanupResouces()V
    .registers 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m_contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m_contentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 1064
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 1065
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1066
    return-void
.end method

.method private goExit()V
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 760
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$WakeLockSmart;->release()V

    .line 761
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 762
    const v1, 0x10002000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    if-eqz v0, :cond_28

    .line 764
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->stopService(Landroid/content/Intent;)Z

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    .line 769
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 770
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateAlarm()V

    .line 771
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->finish()V

    .line 772
    return-void
.end method

.method private goTimeOutExit()V
    .registers 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 742
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$WakeLockSmart;->release()V

    .line 743
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 744
    const v1, 0x10002000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    if-eqz v0, :cond_28

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->stopService(Landroid/content/Intent;)Z

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    .line 751
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_31

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 753
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->finish()V

    .line 754
    return-void
.end method

.method private initContentView()V
    .registers 10

    .prologue
    const v8, 0x7f0201ec

    const v7, 0x7f0201e7

    const/4 v6, 0x0

    .line 292
    const v1, 0x7f0e0003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f0e0004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    .line 294
    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    .line 296
    const v1, 0x7f0e0007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7a

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 299
    .local v0, StrAlarmName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_75

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_75
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .end local v0           #StrAlarmName:Ljava/lang/String;
    :cond_7a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    :cond_8e
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateDisplay()V

    .line 313
    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v1, :cond_e2

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftHintText(I)V

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightHintText(I)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v2, 0x7f0201ea

    const v3, 0x7f0201ed

    const v4, 0x7f0201e6

    const v5, 0x7f0201ef

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftTabResources(IIII)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v1, :cond_e3

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v2, 0x7f0201eb

    const v3, 0x7f0201f0

    invoke-virtual {v1, v2, v8, v7, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    .line 345
    :goto_d8
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setOnTriggerListener(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;)V

    .line 367
    :cond_e2
    return-void

    .line 334
    :cond_e3
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v2, 0x7f0201f1

    invoke-virtual {v1, v6, v8, v7, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    goto :goto_d8
.end method

.method private isInCallState()Z
    .registers 3

    .prologue
    .line 668
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 674
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
    .line 1043
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_11

    .line 1051
    :goto_4
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 1052
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13

    .line 1058
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_10
    return-void

    .line 1045
    :catch_11
    move-exception v2

    goto :goto_4

    .line 1055
    :catch_13
    move-exception v2

    goto :goto_10
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 1018
    if-eqz p1, :cond_1b

    .line 1022
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1024
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1025
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_b
    if-ge v3, v2, :cond_18

    .line 1027
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1028
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_17

    .line 1025
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1031
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_17
    move-exception v5

    .line 1035
    :cond_18
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->nullViewDrawable(Landroid/view/View;)V

    .line 1037
    :cond_1b
    return-void
.end method

.method private pausePlaying()V
    .registers 5

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_18

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 538
    :cond_18
    return-void
.end method

.method private setWinodowOnTop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 380
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 381
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 391
    return-void
.end method

.method private updateAlarm()V
    .registers 3

    .prologue
    .line 776
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..updateAlarm.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateNextSmartAlertTime()V

    .line 779
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updatedb()V

    .line 780
    return-void
.end method

.method private updateDisplay()V
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v6, 0x4

    const v11, 0x7f0b0027

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 396
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->isPause()Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    if-nez v4, :cond_2d

    .line 397
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    if-eq v4, v5, :cond_2d

    .line 398
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v4, v6, v5, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 403
    :cond_2d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 404
    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m24HMode:Z

    .line 406
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 407
    .local v1, hour:I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 408
    .local v3, min:I
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    .line 409
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_8f

    .line 410
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m24HMode:Z

    if-eqz v4, :cond_17d

    .line 411
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    :goto_8c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setClockDial()V

    .line 441
    :cond_8f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    .line 494
    :goto_10c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v4, :cond_16e

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    if-lez v4, :cond_16e

    .line 495
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v1, v4, 0x64

    .line 496
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v3, v4, 0x64

    .line 497
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime:Landroid/widget/TextView;

    if-eqz v4, :cond_16e

    .line 498
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m24HMode:Z

    if-eqz v4, :cond_2e9

    .line 500
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :goto_136
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_16e
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_17c

    .line 525
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V

    .line 528
    :cond_17c
    return-void

    .line 415
    :cond_17d
    const/16 v4, 0xc

    if-ge v1, v4, :cond_1d6

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    .line 420
    :goto_18f
    rem-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_195

    .line 421
    const/16 v1, 0xc

    .line 431
    :cond_195
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 418
    :cond_1d6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    goto :goto_18f

    .line 454
    :cond_1e8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29e

    .line 456
    const-string v2, ""

    .line 457
    .local v2, mAMPM_CHN_TTS:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m24HMode:Z

    if-nez v4, :cond_225

    .line 458
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    :cond_225
    :goto_225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_10c

    .line 461
    :cond_28e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_225

    .line 488
    .end local v2           #mAMPM_CHN_TTS:Ljava/lang/String;
    :cond_29e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". It is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_10c

    .line 502
    :cond_2e9
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->getAmPmHour(I)I

    move-result v1

    .line 504
    if-gez v1, :cond_30d

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    .line 506
    mul-int/lit8 v1, v1, -0x1

    .line 510
    :goto_304
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_136

    .line 508
    :cond_30d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    goto :goto_304
.end method

.method private updatedb()V
    .registers 6

    .prologue
    .line 784
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..updatedb.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 789
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 790
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 957
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_14

    move v0, v1

    .line 958
    .local v0, up:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    .line 974
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 957
    .end local v0           #up:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 962
    .restart local v0       #up:Z
    :pswitch_16
    if-eqz v0, :cond_13

    .line 968
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->moveTaskToBack(Z)Z

    goto :goto_13

    .line 958
    :pswitch_data_1c
    .packed-switch 0x18
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->cleanupResouces()V

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 707
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 709
    .local v3, orientationDisplay:I
    move v1, v3

    .line 710
    .local v1, orientTemp:I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_25

    .line 711
    const/4 v1, 0x1

    .line 714
    :cond_25
    const-string v5, "AlarmSmartAlert"

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

    .line 717
    add-int/lit8 v5, v2, -0x1

    if-eq v5, v1, :cond_5f

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 719
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 720
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_9b

    .line 721
    const/4 v5, 0x1

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 724
    :goto_58
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 726
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

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

    if-eqz v5, :cond_9f

    .line 727
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    .line 730
    :goto_7f
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V

    .line 734
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 736
    return-void

    .line 723
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_9b
    const/4 v5, 0x2

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_58

    .line 729
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_9f
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    goto :goto_7f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const-wide/16 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.SMARTALARM_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.ACTION_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 151
    if-nez v0, :cond_180

    .line 152
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 158
    :cond_61
    :goto_61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 163
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    .line 167
    :goto_95
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setWinodowOnTop()V

    .line 171
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$WakeLockSmart;->acquire(Landroid/content/Context;)V

    .line 173
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolume:I

    .line 176
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mOldVolume:I

    .line 178
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolume:I

    .line 181
    :cond_c6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolume:I

    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 183
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimeVal:J

    .line 185
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F

    .line 186
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F

    .line 187
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolMax:F

    .line 188
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimeVal:J

    div-long/2addr v0, v4

    long-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F

    .line 189
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->checkURI()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 194
    :cond_f7
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCallState(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v1, "PlayCount"

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimeVal:J

    mul-long/2addr v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v1, "VoiceString"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "ItemVolume"

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 205
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;

    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimeVal:J

    mul-long v2, v1, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    .line 222
    :goto_141
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setVolume(F)V

    .line 226
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;

    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimeVal:J

    mul-long v2, v1, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_175

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 278
    :cond_175
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    return-void

    .line 153
    :cond_180
    const/4 v1, 0x1

    if-ne v0, v1, :cond_189

    .line 154
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_61

    .line 155
    :cond_189
    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    .line 156
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_61

    .line 165
    :cond_192
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    goto/16 :goto_95

    .line 219
    :cond_19a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    goto :goto_141
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 638
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 645
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;

    .line 647
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->cleanupResouces()V

    .line 648
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 649
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 679
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1d

    .line 680
    const-string v0, "AlarmSmartAlert"

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

    .line 682
    :cond_1d
    packed-switch p1, :pswitch_data_22

    .line 696
    :pswitch_20
    return v3

    .line 682
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_20
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 557
    const-string v1, "AlarmSmartAlert"

    const-string v2, "..onPause.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_e

    .line 564
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 566
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 568
    .local v0, sm:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_20

    .line 569
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 572
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v1, :cond_29

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onPause()V

    .line 575
    :cond_29
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 576
    return-void
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 580
    const-string v6, "AlarmSmartAlert"

    const-string v7, "..onResume..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    .line 583
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolume:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 585
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 591
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 595
    .local v5, sm:Landroid/app/StatusBarManager;
    if-eqz v5, :cond_3f

    .line 596
    const/high16 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 600
    .end local v5           #sm:Landroid/app/StatusBarManager;
    :cond_3f
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onResume()V

    .line 602
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Resume(I)V

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 605
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 607
    .local v3, orientationDisplay:I
    move v1, v3

    .line 608
    .local v1, orientTemp:I
    const/4 v6, 0x3

    if-ne v1, v6, :cond_6b

    .line 609
    const/4 v1, 0x1

    .line 612
    :cond_6b
    const-string v6, "AlarmSmartAlert"

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

    .line 615
    add-int/lit8 v6, v2, -0x1

    if-eq v6, v1, :cond_c8

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 617
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 618
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_d9

    .line 619
    const/4 v6, 0x1

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 622
    :goto_9e
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

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

    if-eqz v6, :cond_dd

    .line 625
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    .line 628
    :goto_c5
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V

    .line 631
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 633
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 634
    return-void

    .line 621
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_d9
    const/4 v6, 0x2

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_9e

    .line 627
    :cond_dd
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    goto :goto_c5
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 542
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..onStop.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPause(Z)V

    .line 550
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->pausePlaying()V

    .line 552
    :cond_24
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 553
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

    .line 906
    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_f6

    move v1, v2

    .line 909
    :goto_e
    array-length v0, v3

    if-ge v1, v0, :cond_f5

    .line 910
    aget v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    .line 911
    if-nez v0, :cond_1f

    .line 909
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 914
    :cond_1f
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    .line 915
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setSecondHand(Landroid/graphics/drawable/Drawable;)V

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 918
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_3d

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v5, v9, :cond_4f

    :cond_3d
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v9, :cond_60

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_60

    .line 920
    :cond_4f
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    .line 930
    :goto_52
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m24HMode:Z

    if-ne v4, v7, :cond_a5

    .line 931
    aget v4, v3, v1

    const/high16 v5, 0x7f0e

    if-ne v4, v5, :cond_a0

    .line 932
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto :goto_1b

    .line 921
    :cond_60
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_72

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v5, v9, :cond_84

    :cond_72
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v9, :cond_88

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_88

    .line 923
    :cond_84
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_52

    .line 925
    :cond_88
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_9a

    .line 926
    const/16 v4, -0x15

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_52

    .line 928
    :cond_9a
    const/16 v4, -0x10

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_52

    .line 934
    :cond_a0
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 936
    :cond_a5
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_cd

    .line 938
    aget v4, v3, v1

    const v5, 0x7f0e0001

    if-ne v4, v5, :cond_c8

    .line 939
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 941
    :cond_c8
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 942
    :cond_cd
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_1b

    .line 944
    aget v4, v3, v1

    const v5, 0x7f0e0002

    if-ne v4, v5, :cond_f0

    .line 945
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 947
    :cond_f0
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 951
    :cond_f5
    return-void

    .line 906
    :array_f6
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
    .line 1001
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1004
    .local v0, mainView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(Landroid/view/View;)V

    .line 1005
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1010
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1012
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->m_contentView:Landroid/view/ViewGroup;

    .line 1013
    return-void
.end method
