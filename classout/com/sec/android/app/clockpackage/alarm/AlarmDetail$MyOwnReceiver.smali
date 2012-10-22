.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOwnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2920
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2920
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/16 v3, 0x1102

    .line 2925
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2927
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2928
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 2929
    const-string v1, "TAGG"

    const-string v2, "finally in "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 2931
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    .line 2933
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyOwnReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->sd_check()V

    .line 2935
    :cond_2d
    return-void
.end method
