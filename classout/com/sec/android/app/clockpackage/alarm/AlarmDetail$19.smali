.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;
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
    .line 1296
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$19;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v1, 0x1100

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    .line 1299
    return-void
.end method
