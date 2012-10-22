.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->onCreate(Landroid/os/Bundle;)V
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
    .line 699
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-eq v1, v4, :cond_30

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-object v2, p1

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v3, v1, v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 704
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnSeekBarChangeLisnter:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    move-result-object v1

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .end local p1
    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 720
    :goto_2f
    return-void

    .line 709
    .restart local p1
    :cond_30
    :try_start_30
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_2f

    .line 711
    :catch_34
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlarmDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when Stopping the running player if focus is moved exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method
