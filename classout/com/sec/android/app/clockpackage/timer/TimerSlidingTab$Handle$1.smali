.class Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;
.super Landroid/widget/FrameLayout;
.source "TimerSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 621
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 623
    packed-switch p1, :pswitch_data_12

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->hideArrow()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V

    .line 639
    :goto_b
    return-void

    .line 627
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showArrow()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$000(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V

    goto :goto_b

    .line 623
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
