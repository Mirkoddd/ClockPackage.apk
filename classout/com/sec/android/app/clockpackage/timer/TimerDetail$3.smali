.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;->onCreate(Landroid/os/Bundle;)V
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
    .line 353
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    if-gtz v1, :cond_12

    const/16 v1, 0x15

    if-ne p2, v1, :cond_12

    .line 360
    :cond_11
    :goto_11
    return v0

    .line 357
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    if-gt v1, v2, :cond_2c

    const/16 v1, 0x16

    if-eq p2, v1, :cond_11

    .line 360
    :cond_2c
    const/4 v0, 0x0

    goto :goto_11
.end method
