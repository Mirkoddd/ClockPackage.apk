.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;
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
    .line 2308
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 2311
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2313
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 2314
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2319
    :cond_20
    if-ltz p2, :cond_74

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_74

    .line 2321
    const/4 v1, 0x0

    .line 2322
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 2323
    if-ltz p2, :cond_50

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_50

    .line 2328
    :try_start_46
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;
    :try_end_4f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_46 .. :try_end_4f} :catch_75

    move-result-object v1

    .line 2338
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mErrorRingtoneManager:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2340
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getDefaultRingtoneURI()Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/net/Uri;

    move-result-object v1

    .line 2343
    :cond_5e
    if-eqz v1, :cond_74

    .line 2345
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-static {v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2347
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneIndex:I
    invoke-static {v2, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 2349
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedIndex:I
    invoke-static {v2, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3302(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 2350
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$30;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectedUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3402(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2356
    .end local v1           #uri:Landroid/net/Uri;
    :cond_74
    return-void

    .line 2330
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_75
    move-exception v0

    .line 2332
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "AlarmDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to play"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method
