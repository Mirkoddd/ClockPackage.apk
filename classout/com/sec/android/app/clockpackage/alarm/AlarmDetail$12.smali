.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;
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
    .line 1006
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1011
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1015
    const-string v1, "snooze_duration"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    const-string v1, "snooze_repeat"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v1, "volume_level"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string v1, "tone_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v2, 0x1000

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1020
    return-void
.end method
