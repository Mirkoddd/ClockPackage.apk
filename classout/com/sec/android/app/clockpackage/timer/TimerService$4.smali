.class Lcom/sec/android/app/clockpackage/timer/TimerService$4;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 6
    .parameter "focusChange"

    .prologue
    .line 693
    const-string v1, "TimerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChange - focusChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    packed-switch p1, :pswitch_data_2a

    .line 720
    :goto_1b
    return-void

    .line 703
    :pswitch_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, stopTimer:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1b

    .line 694
    nop

    :pswitch_data_2a
    .packed-switch -0x2
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
