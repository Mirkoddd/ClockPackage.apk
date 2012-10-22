.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->StatusBarControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 2
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1008
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1010
    .local v1, sm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1011
    if-eqz v1, :cond_2c

    .line 1012
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1013
    const-string v2, "CradleMain"

    const-string v3, "DiSABLE_EXPAND"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_2c
    :goto_2c
    return-void

    .line 1016
    :cond_2d
    if-eqz v1, :cond_2c

    .line 1017
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1018
    const-string v2, "CradleMain"

    const-string v3, "DiSABLE_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
