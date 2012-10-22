.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2939
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2939
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x1102

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 2942
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2944
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V
    invoke-static {v1, p1, v2, v2, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/content/Context;III)V

    .line 2945
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2946
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 3015
    :cond_26
    :goto_26
    return-void

    .line 2949
    :cond_27
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2950
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_26

    .line 2952
    :cond_33
    const-string v1, "volume_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2953
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    const-string v2, "volume_level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_26

    .line 2955
    :cond_4b
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2957
    const-string v1, "AlarmDetail"

    const-string v2, "NOTIFY_ALARM_CHANGE comes in."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    goto :goto_26

    .line 2960
    :cond_60
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 2962
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {v2, v3}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;

    .line 2963
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 2964
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2966
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 2970
    :cond_8f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z

    move-result v1

    if-ne v1, v4, :cond_a1

    .line 2971
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 2972
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    .line 2974
    :cond_a1
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sd_check()V

    goto :goto_26

    .line 2978
    :cond_a7
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto/16 :goto_26
.end method
