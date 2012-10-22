.class public Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;
    }
.end annotation


# static fields
.field private static ALARM_IGNORE_DEADLINE_SEC:I


# instance fields
.field private intentActionName:Ljava/lang/String;

.field private mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

.field private mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mHandler:Landroid/os/Handler;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->intentActionName:Ljava/lang/String;

    .line 1248
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->destroyListener(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchInfoAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private destroyListener(I)V
    .registers 6
    .parameter "pendingEvent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 971
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-eqz v0, :cond_22

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 986
    :cond_22
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 1007
    :cond_24
    :goto_24
    return-void

    .line 988
    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-eqz v0, :cond_45

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 1003
    :cond_45
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    goto :goto_24
.end method

.method private getAlarmCount(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 565
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 566
    .local v7, itemCount:I
    if-eqz v6, :cond_30

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 569
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlarmCount() itemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_30
    const/4 v6, 0x0

    .line 573
    return v7
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 900
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private isInCallState(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 923
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 929
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 504
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 507
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 510
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method private launchInfoAlarm(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 480
    const-string v1, "AlarmReceiver"

    const-string v2, "..startInfoAlarm.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, intentInfoAlarm:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.widgetapp.infoalarm"

    const-string v3, "com.sec.android.widgetapp.infoalarm.activity.InfoAlarm"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 489
    const-string v1, "UpdateMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 496
    return-void
.end method

.method private launchSetAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 538
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAlarmDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->removeClockPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 543
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 545
    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    const-string v2, "alarm_create_direct"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ID"

    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getAlarmCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 551
    const-string v2, "android.intent.extra.alarm.HOUR"

    const-string v3, "android.intent.extra.alarm.HOUR"

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v2, "android.intent.extra.alarm.MINUTES"

    const-string v3, "android.intent.extra.alarm.MINUTES"

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v0, "android.intent.extra.alarm.MESSAGE"

    const-string v2, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/high16 v0, 0x1404

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method private launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 529
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method private updateAlarmAfterBoot(Landroid/content/Context;)V
    .registers 22
    .parameter "context"

    .prologue
    .line 716
    const-string v3, "AlarmReceiver"

    const-string v4, "updateSnoozeAfterBoot called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 720
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "active > 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 732
    .local v14, cursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 734
    .local v16, itemCount:I
    if-gtz v16, :cond_41

    .line 738
    const-string v3, "AlarmReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSnoozeAfterBoot item count ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", just return."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 743
    const/4 v14, 0x0

    .line 896
    :cond_40
    return-void

    .line 749
    :cond_41
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v17, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/alarm/AlarmItem;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 753
    .local v9, c:Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 755
    .local v12, currentMillis:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v8, builder:Ljava/lang/StringBuilder;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 759
    const/4 v15, 0x0

    .local v15, i:I
    :goto_57
    move/from16 v0, v16

    if-ge v15, v0, :cond_104

    .line 761
    invoke-static {v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v19

    .line 765
    .local v19, updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6d

    .line 767
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 769
    :cond_6d
    const-string v3, "updateSnoozeAfterBoot item id -> "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    move-object/from16 v0, v19

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v3, "AlarmReceiver"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, v19

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v3, :cond_d3

    .line 822
    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 824
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 826
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_9b

    .line 828
    const/4 v3, 0x3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 830
    :cond_9b
    const/16 v3, 0xb

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 832
    const/16 v3, 0xc

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 834
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 836
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 838
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 840
    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 842
    .local v10, createTimeBackup:J
    move-object/from16 v0, v19

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 844
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 846
    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 855
    .end local v10           #createTimeBackup:J
    :cond_d3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_e1

    .line 857
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 859
    :cond_e1
    const-string v3, "updateSnoozeAfterBoot updated......"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string v3, "AlarmReceiver"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 759
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_57

    .line 873
    .end local v19           #updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_104
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 875
    const/4 v14, 0x0

    .line 877
    const/4 v15, 0x0

    :goto_109
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_40

    .line 879
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 881
    .local v18, saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_125

    .line 883
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 885
    :cond_125
    const-string v3, "_id"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v3, " = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    move-object/from16 v0, v18

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 877
    add-int/lit8 v15, v15, 0x1

    goto :goto_109
.end method

.method private updateAlarmAsNewTime(Landroid/content/Context;)I
    .registers 21
    .parameter "context"

    .prologue
    .line 1041
    const/16 v17, 0x0

    .line 1043
    .local v17, updateCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1045
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1047
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1051
    .local v7, alarmCount:I
    const-string v2, "AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlarmAsNewTime queried "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    if-gtz v7, :cond_3b

    .line 1055
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1057
    const/4 v9, 0x0

    move/from16 v18, v17

    .line 1156
    .end local v17           #updateCount:I
    .local v18, updateCount:I
    :goto_3a
    return v18

    .line 1063
    .end local v18           #updateCount:I
    .restart local v17       #updateCount:I
    :cond_3b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1065
    .local v10, calendar:Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 1067
    .local v13, currentTimeMillies:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .local v8, builder:Ljava/lang/StringBuilder;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1071
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4c
    if-ge v15, v7, :cond_14e

    .line 1073
    invoke-static {v9}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v16

    .line 1077
    .local v16, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    const-string v2, "AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item befor update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v2, "android.intent.action.TIME_SET"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->intentActionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_af

    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    if-lez v2, :cond_af

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v2, v13, v2

    if-gez v2, :cond_af

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    aget v4, v4, v5

    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v13, v2

    if-lez v2, :cond_af

    .line 1089
    const-string v2, "AlarmReceiver"

    const-string v3, "android.intent.action.TIME_SET ALARM_SNOOZE ignored the snooze alarm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_ac
    add-int/lit8 v15, v15, 0x1

    goto :goto_4c

    .line 1093
    :cond_af
    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v2, :cond_149

    .line 1103
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1105
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_c5

    .line 1107
    const/4 v2, 0x3

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1111
    :cond_c5
    const/16 v2, 0xb

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1113
    const/16 v2, 0xc

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v3, v3, 0x64

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1115
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1117
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1119
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1121
    move-object/from16 v0, v16

    iget-wide v11, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1123
    .local v11, createTimeBackup:J
    move-object/from16 v0, v16

    iput-wide v13, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1125
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 1127
    move-object/from16 v0, v16

    iput-wide v11, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1131
    const-string v2, "AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item after update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_127

    .line 1135
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1137
    :cond_127
    const-string v2, "_id"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v2, " = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1143
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int v17, v17, v2

    .line 1148
    .end local v11           #createTimeBackup:J
    :cond_149
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_ac

    .line 1152
    .end local v16           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_14e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1154
    const/4 v9, 0x0

    move/from16 v18, v17

    .line 1156
    .end local v17           #updateCount:I
    .restart local v18       #updateCount:I
    goto/16 :goto_3a
.end method

.method private updateAlarmOnTime(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 20
    .parameter "context"
    .parameter "item"

    .prologue
    .line 580
    const-string v2, "AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlarmOnTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 584
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alerttime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 596
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 598
    .local v11, itemCount:I
    if-gtz v11, :cond_4b

    .line 600
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 602
    const/4 v8, 0x0

    .line 710
    :goto_4a
    return-void

    .line 608
    :cond_4b
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/alarm/AlarmItem;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v7, builder:Ljava/lang/StringBuilder;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 614
    const/4 v10, 0x0

    .local v10, i:I
    :goto_59
    if-ge v10, v11, :cond_a3

    .line 616
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    if-eq v2, v3, :cond_9d

    .line 618
    invoke-static {v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v15

    .line 622
    .local v15, updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_78

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 626
    :cond_78
    const-string v2, "updateAlarmOnTime ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string v2, ") : match and update item id -> "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget v2, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string v2, "AlarmReceiver"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateNextAlertTime()V

    .line 640
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v15           #updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_9d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 614
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 648
    :cond_a3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v8, 0x0

    .line 654
    const-string v2, "AlarmReceiver"

    const-string v3, "updateAlarmOnTime start update DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v2, "alarm.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 659
    .local v13, path:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 662
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 666
    const/4 v10, 0x0

    :goto_c4
    :try_start_c4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_100

    .line 668
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 670
    .local v14, saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 672
    .local v16, value:Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e2

    .line 674
    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 676
    :cond_e2
    const-string v2, "_id"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v2, " = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v2, v14, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, "alarm"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    add-int/lit8 v10, v10, 0x1

    goto :goto_c4

    .line 687
    .end local v14           #saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v16           #value:Landroid/content/ContentValues;
    :cond_100
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_103
    .catchall {:try_start_c4 .. :try_end_103} :catchall_130

    .line 691
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 695
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 697
    if-eqz v12, :cond_127

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_127

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 702
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    :cond_127
    const-string v2, "AlarmReceiver"

    const-string v3, "updateAlarmOnTime update DB done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 691
    :catchall_130
    move-exception v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1013
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAndEnableNextAlarm alarm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmOnTime(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 1018
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateNextAlertTime()V

    .line 1022
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAndEnableNextAlarm updated alarm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1035
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1037
    return-void
.end method

.method private waitForCallEnd(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 7
    .parameter "context"
    .parameter "intent"
    .parameter "pendingEvent"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 935
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2a

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-nez v0, :cond_11

    .line 939
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 941
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I
    invoke-static {v0, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;I)I

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 947
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 967
    :cond_29
    :goto_29
    return-void

    .line 950
    :cond_2a
    const/4 v0, 0x2

    if-ne p3, v0, :cond_29

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-nez v0, :cond_38

    .line 954
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 956
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I
    invoke-static {v0, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;I)I

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 962
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_29
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->removeClockPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->acquire(Landroid/content/Context;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 100
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAfterBoot(Landroid/content/Context;)V

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 106
    const/4 v11, 0x0

    .line 108
    .local v11, autotime:Z
    :try_start_36
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_af

    const/4 v11, 0x1

    .line 110
    :goto_43
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: ACTION_BOOT_COMPLETED, autotime = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_36 .. :try_end_5b} :catch_b1

    .line 116
    :goto_5b
    if-nez v11, :cond_9e

    .line 117
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, current:Ljava/lang/String;
    if-eqz v12, :cond_86

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    .line 119
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 120
    .local v26, zone:Ljava/util/TimeZone;
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 121
    .local v10, alarm:Landroid/app/AlarmManager;
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 124
    .end local v10           #alarm:Landroid/app/AlarmManager;
    .end local v26           #zone:Ljava/util/TimeZone;
    :cond_86
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: ACTION_BOOT_COMPLETED, current = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v11           #autotime:Z
    .end local v12           #current:Ljava/lang/String;
    :cond_9e
    :goto_9e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :goto_ae
    return-void

    .line 108
    .restart local v11       #autotime:Z
    :cond_af
    const/4 v11, 0x0

    goto :goto_43

    .line 112
    :catch_b1
    move-exception v22

    .line 113
    .local v22, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v11, 0x1

    goto :goto_5b

    .line 128
    .end local v11           #autotime:Z
    .end local v22           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_b4
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 131
    const-string v4, "android.intent.action.TIME_SET"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->intentActionName:Ljava/lang/String;

    .line 132
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 136
    .local v24, update:I
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_TIME_CHANGED:: updateAlarmAsNewTime returns "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto :goto_9e

    .line 143
    .end local v24           #update:I
    :cond_e4
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 149
    const-string v4, "AlarmReceiver"

    const-string v5, "ACTION_LOCALE_CHANGED:: updateAlarmAsNewTime returns "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto :goto_9e

    .line 153
    :cond_f7
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 161
    .restart local v24       #update:I
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_TIMEZONE_CHANGED:: updateAlarmAsNewTime returns "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto/16 :goto_9e

    .line 167
    .end local v24           #update:I
    :cond_122
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ef

    .line 169
    new-instance v19, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 171
    .local v19, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 175
    .local v13, currentTime:J
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget v7, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v4, v7

    cmp-long v4, v13, v4

    if-lez v4, :cond_179

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 181
    .restart local v24       #update:I
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received alarm is old one. get next alarm. currentTime:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " update:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto/16 :goto_9e

    .line 193
    .end local v24           #update:I
    :cond_179
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received alarm. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "createtime DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 201
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 203
    .local v20, itemCount:I
    if-gtz v20, :cond_1cd

    .line 206
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return itemCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v15, 0x0

    .line 211
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->release()V

    goto/16 :goto_ae

    .line 216
    :cond_1cd
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    const/16 v18, 0x0

    .line 219
    .local v18, isSameID:Z
    const/16 v17, 0x1

    .line 221
    .local v17, isActivate:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1d6
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f9

    .line 223
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    if-ne v4, v5, :cond_222

    .line 224
    const/16 v18, 0x1

    .line 227
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1f9

    .line 228
    const-string v4, "AlarmReceiver"

    const-string v5, "isActive = false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v17, 0x0

    .line 237
    :cond_1f9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v15, 0x0

    .line 240
    if-eqz v18, :cond_201

    if-nez v17, :cond_228

    .line 242
    :cond_201
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "it doesn\'t have same ID or deactivate(id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->release()V

    goto/16 :goto_ae

    .line 234
    :cond_222
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 221
    add-int/lit8 v16, v16, 0x1

    goto :goto_1d6

    .line 253
    :cond_228
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->isInCallState(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_280

    .line 257
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v3

    .line 260
    .local v3, helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    const/4 v6, 0x0

    .line 262
    .local v6, notificationType:I
    const/16 v21, 0x0

    .line 264
    .local v21, notificationDuration:I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_243

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_268

    .line 268
    :cond_243
    const v6, 0x10001000

    .line 270
    const v21, 0xea60

    .line 281
    :cond_249
    :goto_249
    move/from16 v0, v21

    int-to-long v7, v0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 286
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->waitForCallEnd(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_9e

    .line 272
    :cond_268
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_249

    .line 274
    const v6, 0x10002000

    .line 276
    const v4, 0xea60

    sget-object v5, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v5, v5, v7

    mul-int v21, v4, v5

    goto :goto_249

    .line 328
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v21           #notificationDuration:I
    :cond_280
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicecommand"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v25, vci:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "stop"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d3

    .line 336
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 344
    :goto_2a3
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v3

    .line 347
    .restart local v3       #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    const/4 v6, 0x0

    .line 349
    .restart local v6       #notificationType:I
    const/16 v21, 0x0

    .line 351
    .restart local v21       #notificationDuration:I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b8

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2d7

    .line 355
    :cond_2b8
    const v6, 0x10001000

    .line 357
    const v21, 0xea60

    .line 369
    :cond_2be
    :goto_2be
    move/from16 v0, v21

    int-to-long v7, v0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    goto/16 :goto_9e

    .line 340
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v21           #notificationDuration:I
    :cond_2d3
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2a3

    .line 359
    .restart local v3       #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .restart local v6       #notificationType:I
    .restart local v21       #notificationDuration:I
    :cond_2d7
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2be

    .line 361
    const v6, 0x10002000

    .line 363
    const v4, 0xea60

    sget-object v5, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v5, v5, v7

    mul-int v21, v4, v5

    goto :goto_2be

    .line 435
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v13           #currentTime:J
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #i:I
    .end local v17           #isActivate:Z
    .end local v18           #isSameID:Z
    .end local v19           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v20           #itemCount:I
    .end local v21           #notificationDuration:I
    .end local v25           #vci:Landroid/content/Intent;
    :cond_2ef
    const-string v4, "android.intent.action.SET_ALARM"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_313

    .line 437
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getAlarmCount(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_304

    .line 438
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSetAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_9e

    .line 440
    :cond_304
    const v4, 0x7f0b006a

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9e

    .line 442
    :cond_313
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_DIRECTSAVED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 444
    const-string v4, "save_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 446
    .local v23, str:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9e
.end method
