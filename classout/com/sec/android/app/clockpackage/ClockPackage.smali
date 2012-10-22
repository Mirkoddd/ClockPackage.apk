.class public Lcom/sec/android/app/clockpackage/ClockPackage;
.super Landroid/app/TabActivity;
.source "ClockPackage.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG_ENG:Z

.field public static act:Landroid/app/Activity;

.field public static activity:Landroid/app/Activity;

.field public static ed:Landroid/content/SharedPreferences$Editor;

.field public static filter:Landroid/content/IntentFilter;

.field private static hsScroll:Landroid/widget/HorizontalScrollView;

.field public static layParams:Landroid/view/ViewGroup$LayoutParams;

.field private static mConfiguration:Landroid/content/res/Configuration;

.field public static mFadeLayout:Landroid/widget/LinearLayout;

.field public static p:Landroid/content/SharedPreferences;

.field public static pref:Landroid/content/SharedPreferences;

.field public static tabHost:Landroid/widget/TabHost;


# instance fields
.field private display:Landroid/view/Display;

.field private mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 69
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_20

    :goto_b
    sput-boolean v0, Lcom/sec/android/app/clockpackage/ClockPackage;->DEBUG_ENG:Z

    .line 94
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    .line 96
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 98
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 100
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 102
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 104
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 106
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 108
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 110
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    return-void

    :cond_20
    move v0, v1

    .line 69
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;Lcom/sec/android/app/clockpackage/ClockPackage$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$100()Landroid/widget/HorizontalScrollView;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    if-eqz v0, :cond_c

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    .line 477
    :cond_c
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 457
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 458
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Lcom/sec/android/app/clockpackage/ClockPackage$IntentReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 460
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public initTabSize()V
    .registers 12

    .prologue
    const/16 v10, 0x168

    const/16 v9, 0xf0

    const/4 v8, 0x4

    const/16 v7, 0x140

    const/16 v6, 0x1e0

    .line 321
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_59

    const/4 v1, 0x1

    .line 326
    .local v1, isLand:Z
    :goto_29
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 329
    .local v3, tabCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 331
    .local v2, r:Landroid/content/res/Resources;
    if-nez v1, :cond_8d

    .line 333
    if-le v3, v8, :cond_5b

    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    if-ge v0, v3, :cond_78

    .line 335
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 324
    .end local v0           #i:I
    .end local v1           #isLand:Z
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #tabCount:I
    :cond_59
    const/4 v1, 0x0

    goto :goto_29

    .line 338
    .restart local v1       #isLand:Z
    .restart local v2       #r:Landroid/content/res/Resources;
    .restart local v3       #tabCount:I
    :cond_5b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5c
    if-ge v0, v3, :cond_78

    .line 339
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 342
    :cond_78
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    if-eq v4, v8, :cond_8c

    .line 343
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lcom/sec/android/app/clockpackage/ClockPackage$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/ClockPackage$3;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    :cond_8c
    return-void

    .line 352
    .end local v0           #i:I
    :cond_8d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8e
    if-ge v0, v3, :cond_8c

    .line 354
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_a2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x320

    if-eq v4, v5, :cond_d4

    :cond_a2
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x320

    if-ne v4, v5, :cond_b4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v6, :cond_d4

    :cond_b4
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v7, :cond_c4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v6, :cond_d4

    :cond_c4
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_f0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v7, :cond_f0

    .line 358
    :cond_d4
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    div-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 352
    :goto_ed
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 361
    :cond_f0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v9, :cond_100

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v7, :cond_130

    :cond_100
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v7, :cond_110

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v9, :cond_130

    :cond_110
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v10, :cond_120

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v6, :cond_130

    :cond_120
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_148

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v10, :cond_148

    .line 365
    :cond_130
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_ed

    .line 367
    :cond_148
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x4ac

    if-ne v4, v5, :cond_177

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_177

    .line 369
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_ed

    .line 372
    :cond_177
    sget-object v4, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    div-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_ed
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v0, p1, :cond_e

    .line 279
    :cond_c
    sput-object p1, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    .line 284
    :cond_e
    const-string v0, "ClocksTabStatus"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 285
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    const-string v2, "CurrentTab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 290
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 291
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    if-eqz v0, :cond_54

    .line 292
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->initTabSize()V

    .line 307
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->invalidate()V

    .line 309
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/clockpackage/ClockPackage$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/ClockPackage$2;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    return-void

    .line 293
    :cond_54
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    if-eqz v0, :cond_62

    .line 294
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_3f

    .line 295
    :cond_62
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    if-eqz v0, :cond_70

    .line 296
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_3f

    .line 297
    :cond_70
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    if-eqz v0, :cond_7e

    .line 298
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/timer/Timer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_3f

    .line 299
    :cond_7e
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    if-eqz v0, :cond_3f

    .line 300
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_3f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/high16 v10, -0x100

    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->requestWindowFeature(I)Z

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->initReceiver()V

    .line 128
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->setContentView(I)V

    .line 129
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    .line 133
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f0b0002

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 138
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 143
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f0b0072

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 149
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f0b0079

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 157
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f0b00a8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 164
    const-string v0, "ClocksTabStatus"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 166
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    const-string v3, "CurrentTab"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 167
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 168
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DeskClockChanged"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "TimerResumed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 180
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 182
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 183
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 188
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->initTabSize()V

    .line 192
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/clockpackage/ClockPackage$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/ClockPackage$1;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    const v3, 0x1020016

    .line 202
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v4

    move v1, v2

    .line 203
    :goto_1c4
    if-ge v1, v4, :cond_1eb

    .line 204
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    invoke-virtual {v0, v7, v7, v7, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c4

    .line 210
    :cond_1eb
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0800ee

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1, v9, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v3, "com.sec.android.app.clockpackage.WORLD_ACTION"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 231
    const-string v1, "ADD_CITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 232
    const-string v1, "euigu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_CITY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 234
    const/16 v1, 0x64

    if-ne v0, v1, :cond_255

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.clockpackage.world.WORLD_ADDCITY_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    :cond_255
    return-void
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->deleteReceiver()V

    .line 435
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 436
    .local v0, actManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v1, v4, :cond_22

    .line 437
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->removeCity()V

    .line 440
    :cond_22
    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_28

    .line 441
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 444
    :cond_28
    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    if-eqz v1, :cond_2e

    .line 445
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 448
    :cond_2e
    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_34

    .line 449
    sput-object v3, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 452
    :cond_34
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 453
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 244
    const-string v0, "ClocksTabStatus"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 245
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    const-string v2, "CurrentTab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 246
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 15
    .parameter "tab"

    .prologue
    const/high16 v12, -0x100

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b2

    move v2, v5

    .line 381
    .local v2, isLand:Z
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 382
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_121

    .line 383
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 384
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_43

    if-nez v2, :cond_43

    .line 385
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 387
    :cond_43
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4e

    .line 388
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    sget-object v8, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    :cond_4e
    :try_start_4e
    const-string v7, "ClocksTabStatus"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    .line 392
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 393
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v8, "LocaleChanged"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    const-string v8, "DeskClockChanged"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v5, :cond_b5

    .line 398
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CurrentTab"

    const/4 v8, 0x4

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v7, "DeskClockChanged"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    :goto_82
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_87} :catch_d1

    .line 413
    :goto_87
    const v1, 0x1020016

    .line 414
    .local v1, idTitle:I
    const/4 v3, 0x0

    .local v3, tabindex:I
    :goto_8b
    const/4 v5, 0x5

    if-ge v3, v5, :cond_ea

    .line 415
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 417
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0800ef

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    invoke-virtual {v4, v10, v10, v10, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .end local v1           #idTitle:I
    .end local v2           #isLand:Z
    .end local v3           #tabindex:I
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_b2
    move v2, v6

    .line 379
    goto/16 :goto_19

    .line 403
    .restart local v2       #isLand:Z
    :cond_b5
    :try_start_b5
    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    const-string v8, "TimerResumed"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v5, :cond_dc

    .line 404
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CurrentTab"

    const/4 v8, 0x3

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 405
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v7, "TimerResumed"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d0} :catch_d1

    goto :goto_82

    .line 409
    :catch_d1
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ClockPackage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_dc
    :try_start_dc
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CurrentTab"

    sget-object v8, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e9} :catch_d1

    goto :goto_82

    .line 420
    .restart local v1       #idTitle:I
    .restart local v3       #tabindex:I
    :cond_ea
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 422
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0800ee

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    const/high16 v5, 0x4000

    invoke-virtual {v4, v5, v11, v11, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 425
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_122

    .line 426
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v6, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 430
    .end local v1           #idTitle:I
    .end local v3           #tabindex:I
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_121
    :goto_121
    return-void

    .line 428
    .restart local v1       #idTitle:I
    .restart local v3       #tabindex:I
    .restart local v4       #tv:Landroid/widget/TextView;
    :cond_122
    sget-object v5, Lcom/sec/android/app/clockpackage/ClockPackage;->hsScroll:Landroid/widget/HorizontalScrollView;

    sget-object v7, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_121
.end method
