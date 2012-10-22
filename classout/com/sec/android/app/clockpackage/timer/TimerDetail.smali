.class public Lcom/sec/android/app/clockpackage/timer/TimerDetail;
.super Landroid/app/Activity;
.source "TimerDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;,
        Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;
    }
.end annotation


# static fields
.field private static final DEBUG_ENG:Z

.field private static alarmogg:Ljava/lang/String;

.field private static alarmogg_kor:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isPause:Z

.field private isPopup:Z

.field private leftVolume:Landroid/widget/ImageView;

.field private mAlarmName:Landroid/widget/EditText;

.field private mAlarmTone:Landroid/widget/TextView;

.field private mAlarmToneBox:Landroid/view/View;

.field private mAlarmToneStr:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultRingtoneIndex:I

.field private mDetailType:I

.field private mErrorRingtoneManager:Z

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mNeedSavePopup:Z

.field private mOldAudioStream:I

.field private mOldVolume:I

.field private mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

.field mRingtoneDlg:Landroid/app/AlertDialog;

.field private mRingtoneIndex:I

.field private mRingtoneList:[Ljava/lang/String;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSetAsUri:Ljava/lang/String;

.field private mSmartToast:Landroid/widget/Toast;

.field private mSubmitted:Z

.field private mToast:Landroid/widget/Toast;

.field private mVolIntent:Landroid/content/Intent;

.field private mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

.field private mVolumeValue:I

.field private rightVolume:Landroid/widget/ImageView;

.field private vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_a
    sput-boolean v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->DEBUG_ENG:Z

    .line 69
    const-string v0, "/system/media/audio/alarms/Ticktac.ogg"

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    .line 71
    const-string v0, "content://media/internal/audio/media/15"

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg_kor:Ljava/lang/String;

    return-void

    :cond_15
    move v0, v1

    .line 64
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const-string v0, "TimerDetail"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->DEBUG:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 108
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 135
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPopup:Z

    .line 139
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    .line 147
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 149
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 1077
    return-void
.end method

.method private static CheckAlarmOggFilePathByRegion()V
    .registers 3

    .prologue
    .line 1218
    const-string v0, "/system/media/audio/alarms/Ticktac.ogg"

    .line 1227
    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    .line 1229
    const-string v0, "TIMER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->saveDetailChange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->cancelDetailChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300()V
    .registers 0

    .prologue
    .line 60
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->CheckAlarmOggFilePathByRegion()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;ILandroid/view/KeyEvent;Z)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->volumeKeyEvent(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    return-object v0
.end method

.method private cancelDetailChange()V
    .registers 4

    .prologue
    .line 555
    const-string v1, "TimerDetail"

    const-string v2, "cancelDetailChange() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 557
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 558
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->finish()V

    .line 562
    return-void
.end method

.method private createRingtoneList()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_83

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 825
    if-eqz v2, :cond_8d

    .line 826
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 828
    :goto_12
    if-eqz v2, :cond_76

    if-lez v1, :cond_76

    .line 829
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    .line 830
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    .line 834
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 837
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_5c

    .line 839
    add-int/lit8 v0, v0, 0x1

    .line 843
    :goto_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 853
    :goto_30
    const-string v0, "TimerDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  count :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    if-nez v2, :cond_5b

    .line 855
    const-string v0, "TimerDetail"

    const-string v1, "cursor is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_5b
    :goto_5b
    return-void

    .line 840
    :catch_5c
    move-exception v3

    .line 841
    const-string v3, "TimerDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch mRingtoneList index------>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 846
    :cond_76
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    .line 847
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    .line 849
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    const-string v4, "Ticktac"

    aput-object v4, v3, v0

    goto :goto_30

    .line 859
    :cond_83
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    .line 861
    const-string v0, "TimerDetail"

    const-string v1, "Ringtone manager is null.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_8d
    move v1, v0

    goto :goto_12
.end method

.method private fillEditData(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 505
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 506
    .local v0, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v2, -0x1

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 518
    :goto_23
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v1, :cond_36

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 522
    :cond_36
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 524
    return-void

    .line 513
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_23
.end method

.method private getDefaultRingtoneIndex()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 867
    .line 868
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v2, v0

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 870
    :goto_a
    if-ge v0, v2, :cond_77

    .line 872
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 873
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 874
    :cond_19
    const-string v4, "mRingtoneList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v4, "TimerDetail"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3b

    .line 879
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 880
    :cond_3b
    const-string v4, "mRingtoneUriList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v4, "TimerDetail"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "Ticktac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 887
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_62

    .line 888
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 889
    :cond_62
    const-string v4, "Match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v4, "TimerDetail"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_77
    if-ltz v0, :cond_7b

    if-lt v0, v2, :cond_7c

    :cond_7b
    move v0, v1

    .line 898
    :cond_7c
    return v0

    .line 870
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private getRingtoneIndex(Ljava/lang/String;)I
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_fb

    .line 922
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 923
    const-string v0, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 924
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 929
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_8a

    .line 934
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_87

    .line 935
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 938
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    .line 967
    :goto_86
    return v0

    .line 941
    :cond_87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 945
    :cond_8a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_ed

    .line 950
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 951
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_ea

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 954
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    goto :goto_86

    .line 957
    :cond_ea
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 960
    :cond_ed
    const-string v0, "getRingtoneIndex mRingtoneManager.getRingtonePosition(uri)"

    const-string v1, "mRingtoneManager.getRingtonePosition(uri)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v6}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    goto :goto_86

    .line 966
    :cond_fb
    const-string v0, "getRingtoneIndex         return -1"

    const-string v1, "mRingtoneManager.getRingtonePosition(uri)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, -0x1

    goto :goto_86
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 418
    const v3, 0x7f0e0016

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;

    .line 419
    .local v2, ssl:Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;
    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 421
    const v3, 0x7f0e0020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->leftVolume:Landroid/widget/ImageView;

    .line 422
    const v3, 0x7f0e0022

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->rightVolume:Landroid/widget/ImageView;

    .line 423
    const v3, 0x7f0e0021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 424
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 427
    const v3, 0x7f0e0030

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 428
    .local v1, btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v1, :cond_49

    .line 429
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :cond_49
    const v3, 0x7f0e000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 439
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v0, :cond_5c

    .line 440
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :cond_5c
    const v3, 0x7f0e0025

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->createRingtoneList()V

    .line 455
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v3, :cond_9e

    .line 456
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 457
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 462
    :goto_80
    const v3, 0x7f0e0024

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerDetail$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$6;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerDetail$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$7;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 488
    return-void

    .line 459
    :cond_9e
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_80
.end method

.method private initRingtoneString()V
    .registers 5

    .prologue
    .line 903
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->CheckAlarmOggFilePathByRegion()V

    .line 905
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getDefaultRingtoneIndex()I

    move-result v0

    .line 907
    const-string v1, "TimerDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..initRingtoneString.. index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    .line 910
    :cond_26
    const/4 v0, 0x0

    .line 911
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 913
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    if-eqz v1, :cond_41

    .line 914
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 917
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    return-void

    .line 915
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_37

    .line 916
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_37
.end method

.method private declared-synchronized saveDetailChange()V
    .registers 5

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_53

    if-eqz v1, :cond_7

    .line 551
    :goto_5
    monitor-exit p0

    return-void

    .line 529
    :cond_7
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 531
    const-string v1, "TimerDetail"

    const-string v2, "saveDetailChange() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_56

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v2, 0x3

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 538
    :goto_1c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "alarm_tone_uri"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    const-string v1, "alarm_tone_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    const-string v1, "alarm_tone_index"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 546
    const-string v1, "volume_progress_value"

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->finish()V
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_53

    goto :goto_5

    .line 527
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1

    .line 536
    :cond_56
    :try_start_56
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    goto :goto_1c
.end method

.method private setEnableField(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->leftVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->rightVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1075
    return-void
.end method

.method private setRingtoneString(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v0, v0

    .line 975
    const-string v1, "TimerDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingtoneString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 978
    if-ltz v1, :cond_32

    if-lt v1, v0, :cond_68

    .line 979
    :cond_32
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_64

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_5e

    .line 987
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :goto_5d
    return-void

    .line 989
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 991
    :cond_64
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_5d

    .line 994
    :cond_68
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d
.end method

.method private validRingtoneStr(Ljava/lang/String;)Z
    .registers 13
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v8, 0x0

    .line 206
    .local v8, retVal:Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 208
    .local v10, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 209
    .local v7, fp:Ljava/io/File;
    if-eqz v10, :cond_105

    .line 210
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, scheme:Ljava/lang/String;
    const-string v0, "TimerDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " scheme:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v9, :cond_45

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 214
    :cond_45
    new-instance v7, Ljava/io/File;

    .end local v7           #fp:Ljava/io/File;
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v7       #fp:Ljava/io/File;
    const-string v0, "TimerDetail"

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v7, :cond_82

    .line 218
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 220
    const-string v0, "TimerDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File exist : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v8, 0x1

    .line 229
    :cond_82
    :goto_82
    const-string v0, "TimerDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri.decode(uri.toString()) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_105

    .line 235
    const-string v0, "TimerDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getColumeCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_102

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_102

    .line 238
    const/4 v8, 0x1

    .line 239
    :cond_102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_105
    return v8

    .line 224
    .restart local v9       #scheme:Ljava/lang/String;
    :cond_106
    const-string v0, "TimerDetail"

    const-string v1, "fp is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82
.end method

.method private volumeKeyEvent(ILandroid/view/KeyEvent;Z)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1176
    packed-switch p1, :pswitch_data_4c

    .line 1198
    :goto_6
    return v1

    .line 1179
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v3, v2, :cond_f

    move v1, v2

    .line 1181
    goto :goto_6

    .line 1182
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1183
    const/16 v4, 0x18

    if-ne p1, v4, :cond_45

    .line 1184
    add-int/lit8 v1, v3, 0x1

    if-le v1, v0, :cond_43

    .line 1188
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1189
    if-ne p3, v2, :cond_35

    .line 1190
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_30

    .line 1191
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 1192
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    .line 1194
    :cond_35
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    const-string v3, "volume_level"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 1196
    goto :goto_6

    :cond_43
    move v0, v1

    .line 1184
    goto :goto_1e

    .line 1186
    :cond_45
    add-int/lit8 v0, v3, -0x1

    if-gez v0, :cond_1e

    move v0, v1

    goto :goto_1e

    .line 1176
    nop

    :pswitch_data_4c
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method getRingtoneAndVolume()V
    .registers 6

    .prologue
    .line 1207
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->CheckAlarmOggFilePathByRegion()V

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "alarm_tone_name"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "alarm_tone_uri"

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->alarmogg:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->cancelDetailChange()V

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 568
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 501
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    iput-boolean v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    .line 258
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setContentView(I)V

    .line 259
    const v2, 0x7f0e0013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;

    .line 261
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "volume_progress_value"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v2, "volume_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 281
    .local v1, intent:Landroid/content/Intent;
    iput v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDetailType:I

    .line 284
    const-string v2, "alarm_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v3, "timer_volume_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolIntent:Landroid/content/Intent;

    .line 288
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    .line 289
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    .line 293
    iput-boolean v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z

    .line 294
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v2, :cond_9c

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 297
    :cond_9c
    invoke-direct {p0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->init(Landroid/content/Context;)V

    .line 299
    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDetailType:I

    if-ne v2, v5, :cond_fa

    .line 300
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->fillEditData(Landroid/content/Intent;)V

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setRingtoneString(Ljava/lang/String;)V

    .line 317
    :goto_b3
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getDefaultRingtoneIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDefaultRingtoneIndex:I

    .line 319
    const/4 v2, 0x0

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mToast:Landroid/widget/Toast;

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSmartToast:Landroid/widget/Toast;

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v2, v5, :cond_10d

    .line 324
    invoke-direct {p0, v6}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setEnableField(Z)V

    .line 330
    :goto_da
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 364
    return-void

    .line 304
    :cond_f6
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_b3

    .line 308
    :cond_fa
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v2, :cond_109

    .line 309
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setRingtoneString(Ljava/lang/String;)V

    goto :goto_b3

    .line 312
    :cond_109
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_b3

    .line 326
    :cond_10d
    invoke-direct {p0, v5}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setEnableField(Z)V

    goto :goto_da
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 686
    const-string v1, "TimerDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    packed-switch p1, :pswitch_data_94

    .line 816
    :goto_1c
    return-object v0

    .line 690
    :pswitch_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPopup:Z

    .line 691
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->createRingtoneList()V

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    .line 693
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    if-ltz v1, :cond_36

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_3a

    .line 694
    :cond_36
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDefaultRingtoneIndex:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    .line 696
    :cond_3a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$12;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    new-instance v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002d

    new-instance v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$8;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    goto :goto_1c

    .line 687
    :pswitch_data_94
    .packed-switch 0x1103
        :pswitch_1d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 411
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mReceiver:Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 414
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1165
    sget-boolean v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 1166
    const-string v0, "TimerDetail"

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

    .line 1168
    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->volumeKeyEvent(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1169
    const/4 v0, 0x1

    .line 1171
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_24
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1120
    sget-boolean v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->DEBUG_ENG:Z

    if-eqz v0, :cond_1f

    .line 1121
    const-string v0, "TimerDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..onKeyUp.. keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1f
    packed-switch p1, :pswitch_data_96

    .line 1161
    :cond_22
    :goto_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_26
    return v0

    .line 1125
    :pswitch_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v1, :cond_2f

    move v0, v1

    .line 1127
    goto :goto_26

    .line 1129
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1132
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_22

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7d

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_61

    .line 1136
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    :cond_61
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v2, :cond_22

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1145
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    goto :goto_22

    .line 1149
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_22

    .line 1122
    :pswitch_data_96
    .packed-switch 0x18
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 371
    :cond_9
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldAudioStream:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setVolumeControlStream(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSmartToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_28

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 384
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    return-void

    .line 381
    :cond_38
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_28
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundle"

    .prologue
    const/4 v6, 0x1

    .line 637
    const-string v4, "TimerDetail"

    const-string v5, "onRestoreInstancestate() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 640
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v5, "alarm_sound_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 642
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v5, "alarm_sound_tone"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 643
    const-string v4, "alarm_sound_tone_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, toneName:Ljava/lang/String;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    .line 645
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :cond_32
    const-string v4, "alarm_noti_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 647
    .local v2, typeFlag:I
    and-int/lit16 v4, v2, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_42

    .line 648
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 649
    :cond_42
    and-int/lit8 v4, v2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4c

    .line 650
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 651
    :cond_4c
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_54

    .line 652
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v6, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 654
    :cond_54
    const-string v4, "alarm_noti_values"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 655
    .local v3, value:I
    and-int/lit8 v0, v3, 0xf

    .line 656
    .local v0, offset:I
    if-lez v0, :cond_64

    .line 657
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v5, v0, -0x1

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 658
    :cond_64
    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v0, v4, 0x4

    .line 659
    if-lez v0, :cond_70

    .line 660
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v5, v0, -0x1

    iput v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 663
    :cond_70
    const-string v4, "TimerDetail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " alarmSoundType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 574
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mPrefs:Landroid/content/SharedPreferences;

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 578
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getDefaultRingtoneIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDefaultRingtoneIndex:I

    .line 579
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    if-ne v0, v4, :cond_20

    .line 580
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->createRingtoneList()V

    .line 582
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mNeedSavePopup:Z

    .line 585
    :cond_20
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    if-nez v0, :cond_5c

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneAndVolume()V

    .line 604
    :goto_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_32

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolumeValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 607
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mOldAudioStream:I

    .line 608
    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setVolumeControlStream(I)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_4a

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v5, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 612
    :cond_4a
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDetailType:I

    if-ne v0, v4, :cond_5b

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->setRingtoneString(Ljava/lang/String;)V

    .line 632
    :cond_5b
    :goto_5b
    return-void

    .line 590
    :cond_5c
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mDefaultRingtoneIndex:I

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    if-eq v0, v1, :cond_88

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 597
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->isPause:Z

    goto :goto_27

    .line 601
    :cond_88
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->getRingtoneAndVolume()V

    goto :goto_27

    .line 618
    :cond_8c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V

    goto :goto_5b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 669
    const-string v1, "alarm_sound_tone"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    const-string v1, "alarm_sound_tone_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v1, :cond_21

    .line 674
    or-int/lit16 v0, v0, 0x100

    .line 675
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v1, :cond_29

    .line 676
    or-int/lit8 v0, v0, 0x10

    .line 677
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_31

    .line 678
    or-int/lit8 v0, v0, 0x1

    .line 679
    :cond_31
    const-string v1, "alarm_noti_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 682
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mSubmitted:Z

    .line 250
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 400
    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 401
    return-void

    .line 398
    :cond_14
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method

.method public stopPlayer()V
    .registers 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 1117
    :cond_10
    :goto_10
    return-void

    .line 1114
    :cond_11
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method
