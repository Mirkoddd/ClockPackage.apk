.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;
.super Landroid/os/CountDownTimer;
.source "AlarmAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->stopSelf()V

    .line 136
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->access$008(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I

    .line 130
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..mTimer.. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
