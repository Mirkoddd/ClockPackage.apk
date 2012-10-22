.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->onCreate(Landroid/os/Bundle;)V
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
    .line 531
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 534
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 536
    .local v0, actionCode:I
    if-ne v0, v6, :cond_37

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-lez v3, :cond_37

    .line 537
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 539
    .local v1, differY:I
    const/4 v3, 0x5

    if-gt v1, v3, :cond_20

    const/4 v3, -0x5

    if-ge v1, v3, :cond_37

    .line 540
    :cond_20
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 541
    .local v2, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 546
    .end local v1           #differY:I
    .end local v2           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_37
    return v5
.end method
