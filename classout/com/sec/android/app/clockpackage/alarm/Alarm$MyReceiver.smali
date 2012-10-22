.class Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V
    .registers 2
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;Lcom/sec/android/app/clockpackage/alarm/Alarm$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 721
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_SAVE_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 724
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 726
    .local v1, datas:Landroid/os/Bundle;
    const-string v3, "save_msg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 728
    .local v2, strAlarmSaveMsg:Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 731
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 750
    .end local v1           #datas:Landroid/os/Bundle;
    .end local v2           #strAlarmSaveMsg:Ljava/lang/String;
    :cond_25
    :goto_25
    const-string v3, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 751
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 752
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 756
    :cond_4a
    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_DIRECTSAVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 757
    const-string v3, "set_alarm_from_intent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 758
    const-string v3, "set_alarm_from_intent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "finish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 759
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->finish()V

    .line 763
    :cond_6d
    return-void

    .line 736
    :cond_6e
    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 738
    const-string v3, "id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v4

    if-ne v3, v4, :cond_a2

    .line 739
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 740
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_25

    .line 743
    :cond_a2
    const-string v3, "id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 744
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$210(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    goto/16 :goto_25
.end method
