.class public Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.super Landroid/app/Activity;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;
    }
.end annotation


# static fields
.field private static alarmogg:Ljava/lang/String;


# instance fields
.field private btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private hourWatcher:Landroid/text/TextWatcher;

.field private leftVolume:Landroid/widget/ImageView;

.field private mAMPM:I

.field private mAlarmName:Landroid/widget/EditText;

.field private mAlarmRepeatType:Landroid/view/View;

.field private mAlarmTone:Landroid/widget/TextView;

.field private mAlarmToneBox:Landroid/view/View;

.field private mAlarmToneStr:Ljava/lang/String;

.field private mAlarmType:Landroid/widget/TextView;

.field private mAlarmTypeArray:[Ljava/lang/String;

.field private mAlarmTypeBox:Landroid/view/View;

.field private mAppTitle:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mDataChnaged:Z

.field private mDefaultRingtoneIndex:I

.field private mDetailType:I

.field private mErrorRingtoneManager:Z

.field private mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

.field private mInfoAlarmName:Ljava/lang/String;

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

.field private mNeedPopupReOpen:Z

.field private mOldAudioStream:I

.field private mOldVolume:I

.field private mOnDialog:Z

.field private mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

.field private mRepeatDayCheckBox:Landroid/widget/CheckBox;

.field private mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

.field private mRepeatTypeLinear:Landroid/widget/LinearLayout;

.field private mResumeFromAlarmTypeBox:Z

.field mRingtoneDlg:Landroid/app/AlertDialog;

.field private mRingtoneIndex:I

.field private mRingtoneList:[Ljava/lang/String;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mRingtoneVol:I

.field private mSelectedIndex:I

.field private mSelectedUri:Landroid/net/Uri;

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mSetAsUri:Ljava/lang/String;

.field private mSubmitted:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTmpText:Landroid/text/Editable;

.field private mToast:Landroid/widget/Toast;

.field private mTwscrollView:Lcom/sec/android/touchwiz/widget/TwScrollView;

.field private mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

.field private minWatcher:Landroid/text/TextWatcher;

.field private myOwnReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;

.field private rightVolume:Landroid/widget/ImageView;

.field smartAlarm:Landroid/widget/LinearLayout;

.field smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

.field private vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-string v0, "/system/media/audio/alarms/Good_Morning.ogg"

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->alarmogg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 165
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 212
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    .line 214
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->myOwnReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;

    .line 233
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 237
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z

    .line 241
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    .line 266
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    .line 280
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 2939
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I

    return p1
.end method

.method static synthetic access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->saveDetailChange()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->cancelDetailChange()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->volumeKeyEvent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeAlarmType(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    return-void
.end method

.method static synthetic access$3302(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$3402(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/content/Context;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    return p1
.end method

.method private calAlarmTime(I)I
    .registers 11
    .parameter "checkDay"

    .prologue
    .line 1580
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1583
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1584
    .local v2, currentAlarmTime:J
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getCurrentSettingTime()J

    move-result-wide v5

    .line 1586
    .local v5, setAlarmTime:J
    if-nez p1, :cond_2e

    .line 1587
    cmp-long v7, v5, v2

    if-lez v7, :cond_21

    .line 1593
    :goto_12
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-wide v5, v7, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1594
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1595
    .local v4, day:I
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeCalendarDaytoAlarmDay(I)I

    move-result p1

    move v1, p1

    .line 1598
    .end local v4           #day:I
    .end local p1
    .local v1, checkDay:I
    :goto_20
    return v1

    .line 1589
    .end local v1           #checkDay:I
    .restart local p1
    :cond_21
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1590
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1591
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    goto :goto_12

    :cond_2e
    move v1, p1

    .line 1598
    .end local p1
    .restart local v1       #checkDay:I
    goto :goto_20
.end method

.method private cancelDetailChange()V
    .registers 4

    .prologue
    .line 1688
    const-string v0, "AlarmDetail"

    const-string v1, "cancelDetailChange() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1690
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1693
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V

    .line 1694
    return-void
.end method

.method private changeAlarmType(I)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x1002

    const/4 v3, 0x1

    .line 2849
    if-ltz p1, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2d

    .line 2850
    const/4 v0, 0x3

    if-ne p1, v0, :cond_44

    .line 2859
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2860
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2862
    const-string v1, "com.samsung.SMT"

    const-string v2, "com.samsung.SMT.CheckVoiceData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2867
    const/16 v1, 0x1002

    :try_start_20
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_23} :catch_2e

    .line 2884
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v3, :cond_52

    .line 2885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    .line 2890
    :cond_2d
    :goto_2d
    return-void

    .line 2868
    :catch_2e
    move-exception v0

    .line 2871
    const-string v0, "AlarmDetail"

    const-string v1, "Samsung TTS is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2876
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2878
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_23

    .line 2881
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput p1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 2887
    :cond_52
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    goto :goto_2d
.end method

.method private changeCalendarDaytoAlarmDay(I)I
    .registers 4
    .parameter "calendarDay"

    .prologue
    .line 1576
    const/4 v0, 0x1

    rsub-int/lit8 v1, p1, 0x7

    mul-int/lit8 v1, v1, 0x4

    shl-int/2addr v0, v1

    return v0
.end method

.method private createRingtoneList()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2510
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_a0

    .line 2511
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 2514
    if-eqz v3, :cond_aa

    .line 2515
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v2, v1

    .line 2517
    :goto_13
    if-eqz v3, :cond_54

    if-lez v2, :cond_54

    .line 2518
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    .line 2519
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    move v1, v0

    .line 2525
    :goto_1e
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_74

    .line 2527
    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2529
    const/4 v4, 0x1

    :try_start_26
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2531
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 2532
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    aput-object v4, v5, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_3a

    .line 2534
    add-int/lit8 v0, v0, 0x1

    .line 2525
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2536
    :catch_3a
    move-exception v4

    .line 2537
    const-string v4, "AlarmDetail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch mRingtoneList index------>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 2544
    :cond_54
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    .line 2545
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    .line 2547
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 2548
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2553
    :cond_74
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  count :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    if-nez v3, :cond_9f

    .line 2555
    const-string v0, "AlarmDetail"

    const-string v1, "cursor is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_9f
    :goto_9f
    return-void

    .line 2559
    :cond_a0
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    .line 2561
    const-string v0, "AlarmDetail"

    const-string v1, "Ringtone manager is null.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_aa
    move v2, v0

    goto/16 :goto_13
.end method

.method private fillEditData(Landroid/content/Intent;)V
    .registers 9
    .parameter

    .prologue
    const/16 v5, 0xc

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1405
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1406
    if-nez v0, :cond_e

    .line 1500
    :goto_d
    return-void

    .line 1409
    :cond_e
    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1410
    invoke-virtual {v3, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 1412
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v0, :cond_136

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1425
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    iput-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 1435
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v5, 0x100

    if-ne v0, v5, :cond_15e

    move v0, v1

    :goto_64
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1437
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit8 v0, v0, 0x10

    const/16 v5, 0x10

    if-ne v0, v5, :cond_161

    move v0, v1

    :goto_73
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1439
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_164

    move v0, v1

    :goto_80
    iput-boolean v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1443
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1450
    :cond_a2
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    .line 1457
    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    .line 1460
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 1463
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 1465
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v6, :cond_d2

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1468
    :cond_d2
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v0, :cond_167

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1480
    :goto_f9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_10c

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1484
    :cond_10c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 1486
    const v0, 0x7f0e002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1487
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    if-eqz v1, :cond_183

    .line 1488
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v1, :cond_12f

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_17a

    .line 1489
    :cond_12f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1415
    :cond_136
    iget v0, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_14d

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1419
    :goto_143
    iget v0, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    if-ge v0, v5, :cond_159

    .line 1420
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_23

    .line 1418
    :cond_14d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xc

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_143

    .line 1422
    :cond_159
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_23

    :cond_15e
    move v0, v2

    .line 1435
    goto/16 :goto_64

    :cond_161
    move v0, v2

    .line 1437
    goto/16 :goto_73

    :cond_164
    move v0, v2

    .line 1439
    goto/16 :goto_80

    .line 1475
    :cond_167
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_f9

    .line 1491
    :cond_17a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1493
    :cond_183
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v1, :cond_199

    .line 1494
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1497
    :cond_199
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method private getContentValues()Landroid/content/ContentValues;
    .registers 9

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, alarmType:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v3, :cond_c

    .line 1700
    or-int/lit16 v0, v0, 0x100

    .line 1701
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v3, :cond_14

    .line 1702
    or-int/lit8 v0, v0, 0x10

    .line 1703
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_1c

    .line 1704
    or-int/lit8 v0, v0, 0x1

    .line 1706
    :cond_1c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1708
    .local v1, c:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1710
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v2

    .line 1711
    .local v2, hour:I
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v3, :cond_c1

    .line 1712
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1722
    :goto_45
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1723
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 1724
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1725
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1727
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1741
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1742
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1743
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/Alarm;->SMART_ALARM_TONE:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    aget v4, v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 1744
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1745
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_e0

    .line 1746
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1750
    :goto_9f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_aa

    .line 1751
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v4, 0x3

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1753
    :cond_aa
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 1756
    const-string v3, "AlarmDetail"

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    return-object v3

    .line 1714
    :cond_c1
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v2

    .line 1715
    if-ne v2, v7, :cond_ca

    .line 1716
    const/4 v2, 0x0

    .line 1717
    :cond_ca
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d1

    .line 1718
    add-int/lit8 v2, v2, 0xc

    .line 1719
    :cond_d1
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    mul-int/lit8 v4, v2, 0x64

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    goto/16 :goto_45

    .line 1748
    :cond_e0
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    goto :goto_9f
.end method

.method private getCurrentSettingTime()J
    .registers 8

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 1553
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1555
    .local v0, c:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    .line 1556
    .local v1, hour:I
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v2, :cond_41

    .line 1557
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1567
    :goto_24
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1568
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 1569
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1570
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1572
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 1559
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    .line 1560
    if-ne v1, v6, :cond_4a

    .line 1561
    const/4 v1, 0x0

    .line 1562
    :cond_4a
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    .line 1563
    add-int/lit8 v1, v1, 0xc

    .line 1564
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    mul-int/lit8 v3, v1, 0x64

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    goto :goto_24
.end method

.method private getDefaultRingtoneIndex()I
    .registers 6

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    .line 2581
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v1, v1

    .line 2584
    const-string v2, "AlarmDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultRingtoneIndex: index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    if-ltz v0, :cond_33

    if-lt v0, v1, :cond_34

    .line 2588
    :cond_33
    const/4 v0, 0x0

    .line 2590
    :cond_34
    return v0
.end method

.method private getDefaultRingtoneURI()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 2567
    .line 2569
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 2570
    if-nez v0, :cond_11

    .line 2571
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->alarmogg:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2573
    :cond_11
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..getDefaultRingtoneURI.. Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    return-object v0
.end method

.method private getRingtoneIndex(Ljava/lang/String;)I
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2663
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_113

    .line 2664
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2665
    const-string v0, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 2666
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2667
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2671
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

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

    .line 2676
    if-eqz v0, :cond_8a

    .line 2677
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_87

    .line 2678
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    .line 2719
    :goto_86
    return v0

    .line 2685
    :cond_87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2689
    :cond_8a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

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

    .line 2694
    if-eqz v0, :cond_ed

    .line 2695
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2696
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_ea

    .line 2697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    goto :goto_86

    .line 2703
    :cond_ea
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2708
    :cond_ed
    :try_start_ed
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v6}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I
    :try_end_f2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_ed .. :try_end_f2} :catch_f4

    move-result v0

    goto :goto_86

    .line 2709
    :catch_f4
    move-exception v0

    .line 2710
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 2711
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_10b

    .line 2712
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2714
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v8}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 2716
    :cond_10b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v6}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    goto/16 :goto_86

    .line 2719
    :cond_113
    const/4 v0, -0x1

    goto/16 :goto_86
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 910
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 911
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 912
    const v2, 0x7f03002f

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 915
    invoke-direct {p0, p1, v4, v4, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 918
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;

    .line 919
    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 922
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;

    .line 923
    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->setParentActivity(Landroid/app/Activity;)V

    .line 924
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_59

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatTypeLinear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 929
    :cond_59
    const v0, 0x7f0e002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    if-eqz v0, :cond_9b

    .line 931
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V

    .line 932
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1005
    :cond_9b
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1006
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    .line 1027
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1028
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$14;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$15;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->leftVolume:Landroid/widget/ImageView;

    .line 1101
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->rightVolume:Landroid/widget/ImageView;

    .line 1102
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$16;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1223
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 1224
    if-eqz v0, :cond_147

    .line 1225
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$17;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1237
    :cond_147
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 1238
    if-eqz v0, :cond_15a

    .line 1239
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    :cond_15a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    or-int/lit8 v1, v1, 0x0

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    or-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1277
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    .line 1278
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1281
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    .line 1282
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->createRingtoneList()V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v0, :cond_1f6

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1293
    :goto_1c6
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmRepeatType:Landroid/view/View;

    .line 1294
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeBox:Landroid/view/View;

    .line 1295
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeBox:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    return-void

    .line 1290
    :cond_1f6
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_1c6
.end method

.method private initRingtoneString()V
    .registers 5

    .prologue
    .line 2630
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneIndex()I

    move-result v0

    .line 2632
    const-string v1, "AlarmDetail"

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

    .line 2634
    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_24

    .line 2635
    :cond_23
    const/4 v0, 0x0

    .line 2636
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 2639
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    if-eqz v1, :cond_5e

    .line 2641
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 2646
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..initRingtoneString.. mErrorRingtoneManager... mAlarmToneStr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :goto_54
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2660
    return-void

    .line 2651
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 2655
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..initRingtoneString.. mAlarmToneStr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method private initTime(Landroid/content/Context;III)V
    .registers 14
    .parameter "context"
    .parameter "hour"
    .parameter "min"
    .parameter "ampm"

    .prologue
    .line 744
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 746
    .local v3, c:Ljava/util/Calendar;
    move v4, p2

    .line 747
    .local v4, currentHour:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_e

    .line 748
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 749
    :cond_e
    move v5, p3

    .line 750
    .local v5, currentMinute:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    .line 751
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 753
    :cond_18
    iput p4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 754
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_28

    .line 755
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 756
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 765
    :cond_28
    :goto_28
    const v6, 0x7f0e0127

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 766
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v7, "Increment Hour"

    const-string v8, "Decrement Hour"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 767
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setSpeedVariable(Z)V

    .line 768
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_e1

    .line 769
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x0

    const/16 v8, 0x17

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 770
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    .line 780
    :goto_55
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_f2

    .line 781
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v7, v4, 0x18

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 789
    :goto_60
    const v6, 0x7f0e0128

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 790
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v7, "Increment Minute"

    const-string v8, "Decrement Minute"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 791
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setSpeedVariable(Z)V

    .line 792
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 793
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    .line 794
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 803
    const v6, 0x7f0e0129

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 804
    .local v2, ampmBtn:Landroid/widget/Button;
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v6, :cond_108

    .line 805
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 833
    :goto_a0
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v7, 0x7f0e00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 835
    .local v0, EditTextHour:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v7, 0x7f0e00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 837
    .local v1, EditTextMin:Landroid/widget/EditText;
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$8;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$8;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 858
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 875
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 876
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 877
    return-void

    .line 758
    .end local v0           #EditTextHour:Landroid/widget/EditText;
    .end local v1           #EditTextMin:Landroid/widget/EditText;
    .end local v2           #ampmBtn:Landroid/widget/Button;
    :cond_cf
    const/16 v6, 0xc

    if-lt v4, v6, :cond_d7

    const/16 v6, 0x18

    if-ne v4, v6, :cond_dc

    .line 759
    :cond_d7
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_28

    .line 761
    :cond_dc
    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto/16 :goto_28

    .line 772
    :cond_e1
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v7, 0x1

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 776
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V

    goto/16 :goto_55

    .line 783
    :cond_f2
    rem-int/lit8 v6, v4, 0xc

    if-nez v6, :cond_ff

    .line 784
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto/16 :goto_60

    .line 786
    :cond_ff
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v7, v4, 0xc

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto/16 :goto_60

    .line 807
    .restart local v2       #ampmBtn:Landroid/widget/Button;
    :cond_108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 809
    const/high16 v6, 0x41f0

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 811
    :cond_121
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13a

    .line 813
    const v6, 0x7f0b0027

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 816
    :cond_130
    :goto_130
    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a0

    .line 814
    :cond_13a
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_130

    .line 815
    const v6, 0x7f0b0028

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_130
.end method

.method private initTimeTitle()V
    .registers 12

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    .line 880
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    .line 881
    .local v1, currentHour:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v2

    .line 882
    .local v2, currentMinute:I
    const-string v0, ""

    .line 883
    .local v0, ampmStr:Ljava/lang/String;
    const-string v3, ""

    .line 884
    .local v3, now:Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v5, v10, :cond_78

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_21
    :goto_21
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

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

    if-eqz v5, :cond_88

    .line 899
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 903
    :goto_69
    const v5, 0x7f0e0126

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 904
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_77

    .line 905
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    :cond_77
    return-void

    .line 886
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_78
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v5, v7, :cond_21

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 901
    :cond_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_69
.end method

.method private declared-synchronized saveDetailChange()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1603
    monitor-enter p0

    :try_start_6
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDetailChange() called mSubmitted = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1605
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_149

    if-eqz v0, :cond_2c

    .line 1684
    :goto_2a
    monitor-exit p0

    return-void

    .line 1607
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1610
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1612
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v0, :cond_14c

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1618
    :goto_47
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 1620
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->calAlarmTime(I)I

    move-result v0

    .line 1624
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v5

    .line 1625
    const-string v1, "haeju"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_153

    .line 1628
    or-int/lit8 v0, v0, 0x5

    .line 1632
    :goto_7c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1633
    const-string v1, "haeju"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mItem.repeatType = 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1639
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1641
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d3
    .catchall {:try_start_2d .. :try_end_d3} :catchall_149

    .line 1645
    :try_start_d3
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-eqz v0, :cond_db

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v7, :cond_157

    .line 1646
    :cond_db
    const-string v0, "alarm"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1656
    :cond_e6
    :goto_e6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_193

    .line 1658
    :try_start_e9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1662
    const-string v5, "AlarmDetail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDetailChange transaction result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1666
    cmp-long v0, v0, v2

    if-lez v0, :cond_11f

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 1672
    :cond_11f
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1674
    const-string v0, "GATE"

    const-string v1, "<GATE-M>ALARM_CREATED :  </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_12c
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1679
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->saveMsg()V

    .line 1680
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1681
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1683
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V
    :try_end_147
    .catchall {:try_start_e9 .. :try_end_147} :catchall_149

    goto/16 :goto_2a

    .line 1603
    :catchall_149
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1615
    :cond_14c
    :try_start_14c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I
    :try_end_151
    .catchall {:try_start_14c .. :try_end_151} :catchall_149

    goto/16 :goto_47

    .line 1630
    :cond_153
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7c

    .line 1648
    :cond_157
    :try_start_157
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v6, :cond_198

    .line 1649
    const-string v0, "alarm"

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 1652
    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z

    if-eqz v5, :cond_e6

    cmp-long v5, v0, v2

    if-nez v5, :cond_e6

    .line 1653
    const-string v0, "alarm"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_190
    .catchall {:try_start_157 .. :try_end_190} :catchall_193

    move-result-wide v0

    goto/16 :goto_e6

    .line 1658
    :catchall_193
    move-exception v0

    :try_start_194
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_198
    .catchall {:try_start_194 .. :try_end_198} :catchall_149

    :cond_198
    move-wide v0, v2

    goto/16 :goto_e6
.end method

.method private saveMsg()V
    .registers 13

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v0, :cond_a4

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1511
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    .line 1512
    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    rem-long v7, v0, v4

    .line 1513
    const-wide/16 v0, 0x18

    div-long v9, v2, v0

    .line 1514
    const-wide/16 v0, 0x18

    rem-long/2addr v2, v0

    .line 1519
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-nez v0, :cond_a5

    const-string v0, ""

    move-object v6, v0

    .line 1523
    :goto_34
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_c8

    const-string v0, ""

    move-object v5, v0

    .line 1527
    :goto_3d
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_ec

    const-string v0, ""

    move-object v4, v0

    .line 1531
    :goto_46
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_110

    const/4 v0, 0x1

    move v1, v0

    .line 1532
    :goto_4e
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_114

    const/4 v0, 0x1

    move v3, v0

    .line 1533
    :goto_56
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_118

    const/4 v0, 0x1

    move v2, v0

    .line 1535
    :goto_5e
    if-eqz v1, :cond_11c

    const/4 v0, 0x1

    move v1, v0

    :goto_62
    if-eqz v3, :cond_120

    const/4 v0, 0x2

    :goto_65
    or-int/2addr v1, v0

    if-eqz v2, :cond_123

    const/4 v0, 0x4

    :goto_69
    or-int/2addr v0, v1

    .line 1538
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1540
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_DIRECTSAVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    const-string v3, "save_msg"

    aget-object v0, v1, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const/4 v6, 0x1

    aput-object v4, v1, v6

    const/4 v4, 0x2

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v0, :cond_9e

    .line 1545
    const-string v0, "set_alarm_from_intent"

    const-string v1, "finish"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    :cond_9e
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->finish()V

    .line 1551
    :cond_a4
    return-void

    .line 1519
    :cond_a5
    const-wide/16 v0, 0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_b4

    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_34

    :cond_b4
    const v0, 0x7f0b0044

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_34

    .line 1523
    :cond_c8
    const-wide/16 v0, 0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_d8

    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_3d

    :cond_d8
    const v0, 0x7f0b0048

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_3d

    .line 1527
    :cond_ec
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_fc

    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_46

    :cond_fc
    const v0, 0x7f0b0046

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_46

    .line 1531
    :cond_110
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4e

    .line 1532
    :cond_114
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_56

    .line 1533
    :cond_118
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5e

    .line 1535
    :cond_11c
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_62

    :cond_120
    const/4 v0, 0x0

    goto/16 :goto_65

    :cond_123
    const/4 v0, 0x0

    goto/16 :goto_69
.end method

.method private setEnableField(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2840
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 2841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->leftVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2842
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->rightVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2843
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setEnabled(Z)V

    .line 2844
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2845
    return-void
.end method

.method private setRingtoneString(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2724
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v0, v0

    .line 2726
    const-string v1, "AlarmDetail"

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

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 2730
    if-ltz v1, :cond_32

    if-lt v1, v0, :cond_68

    .line 2731
    :cond_32
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_64

    .line 2732
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

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

    .line 2738
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_5e

    .line 2739
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2748
    :goto_5d
    return-void

    .line 2741
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 2743
    :cond_64
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    goto :goto_5d

    .line 2746
    :cond_68
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d
.end method

.method private setSmartButtonText()V
    .registers 6

    .prologue
    const v2, 0x7f0b0052

    const v1, 0x7f0b004d

    .line 3336
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3339
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    packed-switch v3, :pswitch_data_6c

    .line 3361
    :goto_16
    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    packed-switch v3, :pswitch_data_7a

    .line 3385
    :goto_1d
    :pswitch_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3387
    return-void

    .line 3341
    :pswitch_48
    const v1, 0x7f0b004c

    .line 3342
    goto :goto_16

    .line 3347
    :pswitch_4c
    const v1, 0x7f0b004e

    .line 3348
    goto :goto_16

    .line 3350
    :pswitch_50
    const v1, 0x7f0b004f

    .line 3351
    goto :goto_16

    .line 3353
    :pswitch_54
    const v1, 0x7f0b0050

    .line 3354
    goto :goto_16

    .line 3366
    :pswitch_58
    const v2, 0x7f0b0053

    .line 3367
    goto :goto_1d

    .line 3369
    :pswitch_5c
    const v2, 0x7f0b0057

    .line 3370
    goto :goto_1d

    .line 3372
    :pswitch_60
    const v2, 0x7f0b0054

    .line 3373
    goto :goto_1d

    .line 3375
    :pswitch_64
    const v2, 0x7f0b0055

    .line 3376
    goto :goto_1d

    .line 3378
    :pswitch_68
    const v2, 0x7f0b0056

    .line 3379
    goto :goto_1d

    .line 3339
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_16
        :pswitch_4c
        :pswitch_50
        :pswitch_54
    .end packed-switch

    .line 3361
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
        :pswitch_68
    .end packed-switch
.end method

.method private setSnoozeButtonText()V
    .registers 6

    .prologue
    const v2, 0x7f0b0067

    const v1, 0x7f0b0060

    .line 3278
    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3281
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    packed-switch v3, :pswitch_data_68

    .line 3306
    :goto_16
    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    packed-switch v3, :pswitch_data_76

    .line 3330
    :goto_1d
    :pswitch_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3332
    return-void

    .line 3283
    :pswitch_48
    const v1, 0x7f0b005f

    .line 3284
    goto :goto_16

    .line 3289
    :pswitch_4c
    const v1, 0x7f0b0061

    .line 3290
    goto :goto_16

    .line 3292
    :pswitch_50
    const v1, 0x7f0b0062

    .line 3293
    goto :goto_16

    .line 3295
    :pswitch_54
    const v1, 0x7f0b0063

    .line 3296
    goto :goto_16

    .line 3308
    :pswitch_58
    const v2, 0x7f0b0065

    .line 3309
    goto :goto_1d

    .line 3311
    :pswitch_5c
    const v2, 0x7f0b0066

    .line 3312
    goto :goto_1d

    .line 3317
    :pswitch_60
    const v2, 0x7f0b0068

    .line 3318
    goto :goto_1d

    .line 3320
    :pswitch_64
    const v2, 0x7f0b0069

    .line 3321
    goto :goto_1d

    .line 3281
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_48
        :pswitch_16
        :pswitch_4c
        :pswitch_50
        :pswitch_54
    .end packed-switch

    .line 3306
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5c
        :pswitch_1d
        :pswitch_60
        :pswitch_64
    .end packed-switch
.end method

.method private updateRepeatDaysColor()V
    .registers 4

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    .line 2224
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2229
    :goto_21
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.repeatType >> 4 = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const-string v0, "haeju"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.repeatType = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 2232
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    .line 2234
    return-void

    .line 2227
    :cond_72
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_21
.end method

.method private updateRepeatType()V
    .registers 4

    .prologue
    .line 2239
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 2240
    .local v0, checkDay:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->calAlarmTime(I)I

    move-result v0

    .line 2241
    const/4 v1, 0x0

    .line 2242
    .local v1, result:I
    shl-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v1, v2

    .line 2245
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2246
    or-int/lit8 v1, v1, 0x5

    .line 2250
    :goto_1a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 2251
    return-void

    .line 2248
    :cond_1f
    or-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method private validRingtoneStr(Ljava/lang/String;)Z
    .registers 13
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 450
    const/4 v8, 0x0

    .line 451
    .local v8, retVal:Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 455
    .local v10, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 456
    .local v7, fp:Ljava/io/File;
    if-eqz v10, :cond_105

    .line 457
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 465
    .local v9, scheme:Ljava/lang/String;
    const-string v0, "AlarmDetail"

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

    .line 466
    if-eqz v9, :cond_45

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 467
    :cond_45
    new-instance v7, Ljava/io/File;

    .end local v7           #fp:Ljava/io/File;
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v7       #fp:Ljava/io/File;
    const-string v0, "AlarmDetail"

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz v7, :cond_82

    .line 471
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 473
    const-string v0, "AlarmDetail"

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

    .line 474
    const/4 v8, 0x1

    .line 482
    :cond_82
    :goto_82
    const-string v0, "AlarmDetail"

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

    .line 485
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 489
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_105

    .line 491
    const-string v0, "AlarmDetail"

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

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_102

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_102

    .line 494
    const/4 v8, 0x1

    .line 495
    :cond_102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_105
    return v8

    .line 477
    .restart local v9       #scheme:Ljava/lang/String;
    :cond_106
    const-string v0, "AlarmDetail"

    const-string v1, "fp is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82
.end method

.method private volumeKeyEvent(I)Z
    .registers 7
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3242
    sparse-switch p1, :sswitch_data_4a

    .line 3271
    :cond_6
    :goto_6
    return v2

    .line 3245
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v4, v3, :cond_f

    move v2, v3

    .line 3247
    goto :goto_6

    .line 3250
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 3252
    .local v0, i:I
    const/16 v4, 0x18

    if-ne p1, v4, :cond_35

    .line 3253
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_1e

    move v0, v1

    .line 3257
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3258
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_2e

    .line 3259
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 3260
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    move v2, v3

    .line 3261
    goto :goto_6

    .line 3255
    :cond_35
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3a

    move v0, v2

    :cond_3a
    goto :goto_1e

    .line 3264
    .end local v0           #i:I
    :sswitch_3b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    .line 3265
    goto :goto_6

    .line 3242
    nop

    :sswitch_data_4a
    .sparse-switch
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x52 -> :sswitch_3b
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1771
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1775
    packed-switch p1, :pswitch_data_130

    .line 1930
    :cond_8
    :goto_8
    return-void

    .line 1778
    :pswitch_9
    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_10

    .line 1779
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    goto :goto_8

    .line 1784
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1786
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSnoozeButtonText()V

    .line 1788
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    .line 1790
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1792
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    goto :goto_8

    .line 1799
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1804
    and-int/lit8 v0, p2, 0xf

    if-eqz v0, :cond_8

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1808
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 1812
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    goto :goto_8

    .line 1825
    :pswitch_74
    if-eq p2, v2, :cond_a4

    .line 1827
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1828
    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1829
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$21;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$21;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1840
    const v1, 0x7f0b002f

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1878
    const v1, 0x7f0b002d

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$23;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$23;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1885
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 1888
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1889
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    .line 1891
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    goto/16 :goto_8

    .line 1896
    :pswitch_b8
    and-int/lit8 v0, p2, 0xf

    .line 1897
    if-eqz v0, :cond_8

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput p2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1901
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatDaysColor()V

    goto/16 :goto_8

    .line 1905
    :pswitch_c5
    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_cd

    .line 1906
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    goto/16 :goto_8

    .line 1911
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1912
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1913
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSmartButtonText()V

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    if-eqz v0, :cond_100

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->smartAlarm_btn:Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1918
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1921
    :cond_100
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    .line 1923
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItem.subdueTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1775
    :pswitch_data_130
    .packed-switch 0x1000
        :pswitch_9
        :pswitch_36
        :pswitch_74
        :pswitch_c5
        :pswitch_b8
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 1766
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1767
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 17
    .parameter "newConfig"

    .prologue
    .line 1318
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1328
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v14, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1329
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v14, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1331
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v14, 0x7f0e00e4

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1333
    .local v3, editHour:Landroid/widget/EditText;
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const v14, 0x7f0e00e4

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1335
    .local v4, editMin:Landroid/widget/EditText;
    const-string v12, ""

    .line 1336
    .local v12, setString:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v7

    .line 1337
    .local v7, isFocusedHour:Z
    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v8

    .line 1338
    .local v8, isFocusedMin:Z
    const/4 v9, 0x0

    .line 1340
    .local v9, isSelection:Z
    if-nez v7, :cond_36

    if-eqz v8, :cond_4f

    .line 1341
    :cond_36
    move-object v5, v3

    .line 1342
    .local v5, et:Landroid/widget/EditText;
    if-eqz v8, :cond_3a

    .line 1343
    move-object v5, v4

    .line 1345
    :cond_3a
    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v14

    if-ne v13, v14, :cond_c7

    const/4 v9, 0x0

    .line 1347
    :goto_45
    if-nez v9, :cond_4f

    .line 1348
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1351
    .end local v5           #et:Landroid/widget/EditText;
    :cond_4f
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v13}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v0

    .line 1352
    .local v0, Hour:I
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v13}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v1

    .line 1353
    .local v1, Min:I
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1354
    .local v2, ampm:I
    const v13, 0x7f0e0017

    invoke-virtual {p0, v13}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1355
    .local v10, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1367
    const-string v13, "layout_inflater"

    invoke-virtual {p0, v13}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1368
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f03002f

    invoke-virtual {v6, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1370
    invoke-direct {p0, p0, v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V

    .line 1371
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 1373
    if-nez v7, :cond_81

    if-eqz v8, :cond_a5

    .line 1374
    :cond_81
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 1375
    .local v11, np:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    if-eqz v8, :cond_87

    .line 1376
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 1378
    :cond_87
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->requestFocus()Z

    .line 1379
    if-nez v9, :cond_a5

    .line 1380
    const v13, 0x7f0e00e4

    invoke-virtual {v11, v13}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1381
    .restart local v5       #et:Landroid/widget/EditText;
    if-eqz v5, :cond_a5

    .line 1382
    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1393
    .end local v5           #et:Landroid/widget/EditText;
    .end local v11           #np:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    :cond_a5
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v14, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->hourWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1394
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v14, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->minWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1398
    const v13, 0x7f0e0014

    invoke-virtual {p0, v13}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAppTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v13, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1402
    return-void

    .line 1345
    .end local v0           #Hour:I
    .end local v1           #Min:I
    .end local v2           #ampm:I
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #ll:Landroid/widget/LinearLayout;
    .restart local v5       #et:Landroid/widget/EditText;
    :cond_c7
    const/4 v9, 0x1

    goto/16 :goto_45
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 514
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->requestWindowFeature(I)Z

    .line 515
    const v8, 0x7f030004

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setContentView(I)V

    .line 517
    const v8, 0x7f0e001a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    .line 519
    const v8, 0x7f0e001c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    .line 521
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRepeatDayCheckBox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const v8, 0x7f0e0013

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;

    .line 528
    const v8, 0x7f0e0015

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwScrollView;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTwscrollView:Lcom/sec/android/touchwiz/widget/TwScrollView;

    .line 531
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTwscrollView:Lcom/sec/android/touchwiz/widget/TwScrollView;

    new-instance v9, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;

    invoke-direct {v9, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    const v8, 0x7f0e0030

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 554
    const v8, 0x7f0e000a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 557
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 558
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v8, "volume_change"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v8, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 564
    .local v2, filefilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v8, "file"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 567
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 574
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, startType:Ljava/lang/String;
    const-string v8, "alarm_create"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_198

    .line 576
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAppTitle:Ljava/lang/String;

    .line 585
    :cond_c0
    :goto_c0
    const-string v8, "AlarmDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDetailType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const v8, 0x7f0e0014

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAppTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    const-string v8, "alarm_uri"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    .line 591
    const-string v8, "alarm_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mInfoAlarmName:Ljava/lang/String;

    .line 593
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    .line 594
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    .line 595
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 596
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    .line 597
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioMode:I

    .line 598
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneVol:I

    .line 600
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    .line 601
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z

    .line 602
    new-instance v8, Landroid/media/RingtoneManager;

    invoke-direct {v8, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 603
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v8, :cond_149

    .line 604
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/media/RingtoneManager;->setType(I)V

    .line 606
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 609
    :cond_149
    invoke-direct {p0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V

    .line 611
    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d0

    .line 612
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->fillEditData(Landroid/content/Intent;)V

    .line 613
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    .line 614
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneString(Ljava/lang/String;)V

    .line 674
    :cond_161
    :goto_161
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneIndex()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDefaultRingtoneIndex:I

    .line 677
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    .line 680
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSnoozeButtonText()V

    .line 681
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setSmartButtonText()V

    .line 683
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    .line 687
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v8, v8, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2bf

    .line 688
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    .line 693
    :goto_183
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 695
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 699
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v9, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;

    invoke-direct {v9, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 727
    return-void

    .line 578
    :cond_198
    const-string v8, "alarm_edit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 579
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAppTitle:Ljava/lang/String;

    goto/16 :goto_c0

    .line 581
    :cond_1b2
    const-string v8, "alarm_create_direct"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 582
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    .line 583
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAppTitle:Ljava/lang/String;

    goto/16 :goto_c0

    .line 616
    :cond_1cc
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    goto :goto_161

    .line 626
    :cond_1d0
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSetAsUri:Ljava/lang/String;

    if-eqz v8, :cond_29b

    .line 627
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v9, -0x1

    iput v9, v8, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 628
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneString(Ljava/lang/String;)V

    .line 633
    :goto_1de
    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_161

    .line 634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 635
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    const/4 v5, -0x1

    .line 638
    .local v5, nHour:I
    const/4 v6, -0x1

    .line 640
    .local v6, nMinutes:I
    const-string v8, "android.intent.extra.alarm.HOUR"

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 641
    const-string v8, "android.intent.extra.alarm.MINUTES"

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 643
    const-string v8, "AlarmDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nHour = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v8, "AlarmDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nMinutes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-ltz v5, :cond_244

    const/16 v8, 0x17

    if-gt v5, v8, :cond_244

    if-ltz v6, :cond_244

    const/16 v8, 0x3b

    if-le v6, v8, :cond_280

    .line 649
    :cond_244
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 650
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 651
    const-string v8, "AlarmDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after nHour = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v8, "AlarmDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after nMinutes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_280
    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v8, :cond_2a0

    .line 656
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v8, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 667
    :goto_289
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 669
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    const-string v9, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_161

    .line 630
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v5           #nHour:I
    .end local v6           #nMinutes:I
    :cond_29b
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V

    goto/16 :goto_1de

    .line 658
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v5       #nHour:I
    .restart local v6       #nMinutes:I
    :cond_2a0
    rem-int/lit8 v8, v5, 0xc

    if-nez v8, :cond_2b3

    .line 659
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 662
    :goto_2ab
    const/16 v8, 0xc

    if-ge v5, v8, :cond_2bb

    .line 663
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_289

    .line 661
    :cond_2b3
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v9, v5, 0xc

    invoke-virtual {v8, v9}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_2ab

    .line 665
    :cond_2bb
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_289

    .line 690
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v5           #nHour:I
    .end local v6           #nMinutes:I
    :cond_2bf
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setEnableField(Z)V

    goto/16 :goto_183
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f0b000f

    const/4 v0, 0x0

    .line 2255
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog id = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    packed-switch p1, :pswitch_data_fc

    .line 2505
    :goto_23
    return-object v0

    .line 2258
    :pswitch_24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$26;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$25;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_23

    .line 2283
    :pswitch_51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z

    .line 2284
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->createRingtoneList()V

    .line 2285
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    .line 2286
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    if-ltz v1, :cond_6a

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_6e

    .line 2287
    :cond_6a
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDefaultRingtoneIndex:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    .line 2290
    :cond_6e
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    .line 2291
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_80

    .line 2292
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;

    .line 2293
    :cond_80
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$31;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$31;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002d

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$27;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 2422
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$32;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2428
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    goto/16 :goto_23

    .line 2430
    :pswitch_d8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$34;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070010

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$33;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$33;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_23

    .line 2256
    :pswitch_data_fc
    .packed-switch 0x1100
        :pswitch_24
        :pswitch_d8
        :pswitch_51
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 735
    const/16 v0, 0x1102

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 739
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 740
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 741
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3231
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 3232
    const-string v0, "AlarmDetail"

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

    .line 3234
    :cond_1c
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->volumeKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3235
    const/4 v0, 0x1

    .line 3237
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b0027

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 3094
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_23

    .line 3095
    const-string v0, "AlarmDetail"

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

    .line 3096
    :cond_23
    packed-switch p1, :pswitch_data_236

    .line 3227
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_2a
    return v0

    .line 3099
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v1, :cond_33

    move v0, v1

    .line 3101
    goto :goto_2a

    .line 3103
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v7, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3105
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_26

    .line 3106
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21b

    .line 3109
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3112
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3113
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_76

    .line 3114
    :cond_69
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3116
    :cond_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 3118
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3120
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 3121
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_114

    .line 3122
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3133
    :cond_a4
    :goto_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3202
    :cond_f2
    :goto_f2
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_26

    .line 3204
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 3206
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v7, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3210
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3211
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    goto/16 :goto_26

    .line 3126
    :cond_114
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_a4

    .line 3127
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a4

    .line 3154
    :cond_128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 3156
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3157
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 3158
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_1a9

    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0070

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3165
    :cond_159
    :goto_159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 3161
    :cond_1a9
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_159

    .line 3162
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0071

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_159

    .line 3178
    :cond_1bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3188
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 3189
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v1, :cond_207

    .line 3190
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 3194
    :cond_207
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v0, v6, :cond_f2

    .line 3195
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_f2

    .line 3214
    :cond_21b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v7, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_26

    .line 3096
    nop

    :pswitch_data_236
    .packed-switch 0x18
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3036
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_b

    .line 3037
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 3038
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3039
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3040
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    .line 3045
    :goto_1e
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldAudioStream:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setVolumeControlStream(I)V

    .line 3048
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3049
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 3050
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_38

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 3056
    :cond_38
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 3060
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_47

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3065
    :cond_47
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    .line 3066
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 3067
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatType()V

    .line 3069
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3070
    return-void

    .line 3043
    :cond_55
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z

    goto :goto_1e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2132
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2133
    const-string v0, "alarm_detail_ampm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_detail_repeat_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 2135
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_sound_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 2136
    const-string v0, "alarm_sound_type_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 2138
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2139
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const-string v1, "alarm_sound_tone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 2140
    const-string v0, "alarm_sound_tone_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 2142
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    :cond_50
    const-string v0, "alarm_sound_tone_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    .line 2144
    const-string v0, "alarm_noti_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2145
    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_68

    .line 2146
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 2147
    :cond_68
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_72

    .line 2148
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 2149
    :cond_72
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_7a

    .line 2150
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 2152
    :cond_7a
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 2159
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->setChecked(Z)V

    .line 2163
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v1, "alarm_hour"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 2164
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const-string v1, "alarm_minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 2166
    const-string v0, "alarm_noti_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2167
    and-int/lit8 v1, v0, 0xf

    .line 2168
    if-lez v1, :cond_c0

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 2170
    :cond_c0
    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 2171
    if-lez v0, :cond_cc

    .line 2172
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 2174
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->changeAlarmType(I)V

    .line 2176
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " alarmSoundType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x2

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1934
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1960
    const/16 v0, 0x1102

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 1963
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOldAudioStream:I

    .line 1964
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setVolumeControlStream(I)V

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_2b

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1968
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDetailType:I

    if-ne v0, v5, :cond_3c

    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->validRingtoneStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->setRingtoneString(Ljava/lang/String;)V

    .line 1976
    :cond_3c
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1977
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-eqz v0, :cond_99

    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v0

    .line 1979
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 1981
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed 24Hour mode. prev mAMPM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v7, :cond_dc

    .line 1984
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_d4

    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 1996
    :goto_7a
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 1998
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 2000
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed 24Hour mode. current mAMPM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_99
    :goto_99
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2037
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v1, :cond_150

    .line 2038
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2054
    :cond_ab
    :goto_ab
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    if-nez v0, :cond_b2

    .line 2055
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->updateRepeatDaysColor()V

    .line 2056
    :cond_b2
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mResumeFromAlarmTypeBox:Z

    .line 2075
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2076
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2077
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->myOwnReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    if-eqz v0, :cond_d3

    .line 2084
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$24;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$24;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2092
    :cond_d3
    return-void

    .line 1987
    :cond_d4
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_7a

    .line 1990
    :cond_dc
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_e6

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_7a

    .line 1993
    :cond_e6
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_7a

    .line 2006
    :cond_ec
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-nez v0, :cond_99

    .line 2007
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v0

    .line 2008
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setRange(II)V

    .line 2010
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed 24Hour mode. prev mAMPM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    if-lt v0, v6, :cond_11b

    const/16 v1, 0x18

    if-ne v0, v1, :cond_145

    .line 2013
    :cond_11b
    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    .line 2017
    :goto_11d
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_148

    .line 2018
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    .line 2023
    :goto_126
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V

    .line 2025
    const-string v0, "AlarmDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed 24Hour mode. current mAMPM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 2015
    :cond_145
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    goto :goto_11d

    .line 2020
    :cond_148
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    rem-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setCurrent(I)V

    goto :goto_126

    .line 2041
    :cond_150
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2043
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 2045
    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 2048
    :cond_16c
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v5, :cond_178

    .line 2049
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_ab

    .line 2050
    :cond_178
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    if-ne v1, v7, :cond_ab

    .line 2051
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_ab
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2181
    const-string v0, "alarm_detail_ampm"

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2182
    const-string v0, "alarm_detail_repeat_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2183
    const-string v0, "alarm_sound_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2184
    const-string v0, "alarm_sound_type_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    const-string v0, "alarm_sound_tone"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2187
    const-string v0, "alarm_sound_tone_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v0, "alarm_sound_tone_uri"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_94

    .line 2192
    const/16 v0, 0x100

    .line 2193
    :goto_50
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v2, :cond_58

    .line 2194
    or-int/lit8 v0, v0, 0x10

    .line 2195
    :cond_58
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_60

    .line 2196
    or-int/lit8 v0, v0, 0x1

    .line 2197
    :cond_60
    const-string v2, "alarm_noti_type"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2200
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    add-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    .line 2201
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 2202
    const-string v1, "alarm_noti_values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2208
    const-string v0, "alarm_hour"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2209
    const-string v0, "alarm_minute"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2211
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2212
    return-void

    :cond_94
    move v0, v1

    goto :goto_50
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSubmitted:Z

    .line 506
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 3077
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 3082
    :cond_10
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 3085
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3088
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->myOwnReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3091
    return-void
.end method

.method public sd_check()V
    .registers 7

    .prologue
    .line 2098
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2099
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 2100
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2101
    if-eqz v0, :cond_6e

    .line 2103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2104
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2106
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2107
    const-string v0, "TAGG"

    const-string v1, "path exist"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :goto_3e
    return-void

    .line 2110
    :cond_3f
    const-string v0, "TAGG"

    const-string v1, "path doesnot exist"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    const-string v1, "Illuminator"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDefaultRingtoneIndex:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    .line 2113
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_3e

    .line 2121
    :catch_56
    move-exception v0

    .line 2122
    const-string v0, "TAGG"

    const-string v1, "we are in catch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;

    const-string v1, "Illuminator"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2124
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDefaultRingtoneIndex:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    .line 2125
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I

    goto :goto_3e

    .line 2117
    :cond_6e
    :try_start_6e
    const-string v0, "TAGG"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v0, "TAGG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8f} :catch_56

    goto :goto_3e
.end method

.method public stopPlayer()V
    .registers 3

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 3020
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    if-eqz v0, :cond_10

    .line 3021
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->stop()V

    .line 3032
    :cond_10
    :goto_10
    return-void

    .line 3029
    :cond_11
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_10
.end method
