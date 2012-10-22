.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V
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
    .line 1239
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->stopPlayer()V

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$18;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->cancelDetailChange()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    .line 1243
    return-void
.end method
