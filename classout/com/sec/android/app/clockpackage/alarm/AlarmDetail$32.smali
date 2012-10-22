.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$32;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2422
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$32;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 2424
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2425
    return-void
.end method
