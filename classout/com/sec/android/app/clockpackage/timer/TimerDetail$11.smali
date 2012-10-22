.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;
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
    .line 708
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 711
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    .line 713
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 714
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 719
    :cond_20
    if-ltz p2, :cond_6f

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_6f

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 722
    if-ltz p2, :cond_50

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_50

    .line 726
    :try_start_46
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1900(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;
    :try_end_4f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_46 .. :try_end_4f} :catch_70

    move-result-object v1

    .line 734
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mErrorRingtoneManager:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1700(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 735
    #calls: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->CheckAlarmOggFilePathByRegion()V
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1300()V

    .line 736
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 738
    :cond_63
    if-eqz v1, :cond_6f

    .line 740
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-static {v2, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    .line 741
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$11;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneIndex:I
    invoke-static {v2, p2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;I)I

    .line 749
    .end local v1           #uri:Landroid/net/Uri;
    :cond_6f
    return-void

    .line 728
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_70
    move-exception v0

    .line 730
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "TimerDetail"

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
