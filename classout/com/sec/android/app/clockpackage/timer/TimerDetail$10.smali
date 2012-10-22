.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 753
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    .line 755
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 758
    :try_start_6
    #calls: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->CheckAlarmOggFilePathByRegion()V
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1300()V

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)I

    move-result v1

    if-ltz v1, :cond_2e

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 763
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmTone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/16 v2, 0x1103

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->removeDialog(I)V

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneDlg:Landroid/app/AlertDialog;

    .line 768
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$802(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_72} :catch_b9

    .line 782
    :goto_72
    const-string v1, "TimerDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlarmToneStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$800(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 771
    :cond_91
    :try_start_91
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 772
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$802(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b8} :catch_b9

    goto :goto_72

    .line 778
    :catch_b9
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->initRingtoneString()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$2000(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    goto :goto_72

    .line 776
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c0
    :try_start_c0
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$10;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$802(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cd} :catch_b9

    goto :goto_72
.end method
