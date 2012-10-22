.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;
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
    .line 1302
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$20;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v1, 0x1101

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    .line 1309
    return-void
.end method
