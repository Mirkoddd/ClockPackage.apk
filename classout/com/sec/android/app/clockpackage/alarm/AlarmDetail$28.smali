.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 2403
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 2406
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mOnDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2402(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    .line 2407
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mNeedPopupReOpen:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    .line 2411
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2412
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$28;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v1, 0x1102

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->removeDialog(I)V

    .line 2413
    return-void
.end method
