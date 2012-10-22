.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 48
    .local v0, motion:I
    packed-switch v0, :pswitch_data_14

    .line 71
    :goto_7
    return-void

    .line 50
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    goto :goto_7

    .line 48
    nop

    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_8
    .end packed-switch
.end method
