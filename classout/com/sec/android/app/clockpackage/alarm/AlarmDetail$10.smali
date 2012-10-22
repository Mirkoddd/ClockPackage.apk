.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 936
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 939
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 940
    .local v0, actionCode:I
    if-nez v0, :cond_12

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$10;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 943
    :cond_12
    const/4 v1, 0x0

    return v1
.end method
