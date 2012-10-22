.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;
.super Landroid/content/BroadcastReceiver;
.source "WCMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 263
    :goto_8
    return-void

    .line 262
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method
