.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;
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
    .line 785
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 787
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    .line 789
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/16 v1, 0x1103

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->removeDialog(I)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$9;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 792
    return-void
.end method
