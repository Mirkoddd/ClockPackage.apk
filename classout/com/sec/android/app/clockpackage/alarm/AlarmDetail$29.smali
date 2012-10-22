.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 2362
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2402(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    .line 2363
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2365
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2368
    :try_start_c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    if-ltz v1, :cond_31

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_31

    .line 2370
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 2371
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmTone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v2, 0x1102

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 2375
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2376
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6c} :catch_b8

    .line 2396
    :goto_6c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    .line 2398
    const-string v1, "uri : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlarmToneStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void

    .line 2380
    :cond_90
    :try_start_90
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 2381
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b7} :catch_b8

    goto :goto_6c

    .line 2392
    :catch_b8
    move-exception v0

    .line 2393
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initRingtoneString()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    goto :goto_6c

    .line 2388
    .end local v0           #e:Ljava/lang/Exception;
    :cond_bf
    :try_start_bf
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$29;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d2} :catch_b8

    goto :goto_6c
.end method
