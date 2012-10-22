.class Lcom/sec/android/app/clockpackage/ClockPackage$2;
.super Ljava/lang/Object;
.source "ClockPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/ClockPackage;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/ClockPackage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/ClockPackage$2;->this$0:Lcom/sec/android/app/clockpackage/ClockPackage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 311
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    .line 312
    invoke-static {}, Lcom/sec/android/app/clockpackage/ClockPackage;->access$100()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 316
    :goto_11
    return-void

    .line 314
    :cond_12
    invoke-static {}, Lcom/sec/android/app/clockpackage/ClockPackage;->access$100()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_11
.end method
