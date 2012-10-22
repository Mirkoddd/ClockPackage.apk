.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V
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
    .line 858
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "actionId"
    .parameter "arg2"

    .prologue
    .line 861
    packed-switch p2, :pswitch_data_16

    .line 870
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 864
    :pswitch_5
    const-string v0, "AlarmDetail"

    const-string v1, "ACTION MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$9;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 861
    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method
