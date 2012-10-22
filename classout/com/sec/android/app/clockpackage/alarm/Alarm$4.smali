.class Lcom/sec/android/app/clockpackage/alarm/Alarm$4;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;->InitAlarmList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChange()V
    .registers 3

    .prologue
    .line 238
    const-string v0, "Alarm"

    const-string v1, "onItemChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->updateIndicatorAlarm(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #calls: Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$300(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$400(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_33

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$600(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    .line 251
    :goto_32
    return-void

    .line 248
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$600(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    goto :goto_32
.end method

.method public onItemInvalidate()V
    .registers 3

    .prologue
    .line 256
    const-string v0, "Alarm"

    const-string v1, "onItemInvalidate() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method
