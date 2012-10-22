.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$12;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 699
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$12;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 701
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$12;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->volumeKeyEvent(ILandroid/view/KeyEvent;Z)Z
    invoke-static {v0, p2, p3, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$2100(Lcom/sec/android/app/clockpackage/timer/TimerDetail;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    .line 704
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
