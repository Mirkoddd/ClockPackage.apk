.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 802
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 805
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/16 v1, 0x1103

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->removeDialog(I)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$13;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 809
    return-void
.end method
