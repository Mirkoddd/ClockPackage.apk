.class public Lcom/sec/android/app/clockpackage/ClockPackage;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "ClockPackage.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# static fields
.field public static act:Landroid/app/Activity;

.field public static activity:Landroid/app/Activity;

.field public static ed:Landroid/content/SharedPreferences$Editor;

.field public static filter:Landroid/content/IntentFilter;

.field public static layParams:Landroid/view/ViewGroup$LayoutParams;

.field private static mConfiguration:Landroid/content/res/Configuration;

.field public static mFadeLayout:Landroid/widget/LinearLayout;

.field public static p:Landroid/content/SharedPreferences;

.field public static pref:Landroid/content/SharedPreferences;

.field private static tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# instance fields
.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 65
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 66
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 67
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 68
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 69
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 70
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 71
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 72
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 223
    new-instance v0, Lcom/sec/android/app/clockpackage/ClockPackage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/ClockPackage$1;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 219
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v0, p1, :cond_d

    .line 171
    :cond_b
    sput-object p1, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    .line 174
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 175
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    if-eqz v0, :cond_26

    .line 176
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    :cond_20
    :goto_20
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->invalidate()V

    .line 189
    return-void

    .line 177
    :cond_26
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    if-eqz v0, :cond_34

    .line 178
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 179
    :cond_34
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    if-eqz v0, :cond_42

    .line 180
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 181
    :cond_42
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    if-eqz v0, :cond_50

    .line 182
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/timer/Timer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 183
    :cond_50
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    if-eqz v0, :cond_20

    .line 184
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f0b0034

    const v3, 0x7f0b0002

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/ClockPackage;->requestWindowFeature(I)Z

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->initReceiver()V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 86
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020201

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 91
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 96
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 102
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b0079

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0079

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 109
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 110
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b00a8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 117
    :cond_115
    const-string v0, "ClocksTabStatus"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 119
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    const-string v2, "CurrentTab"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 120
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 121
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 128
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 130
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 136
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 208
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->deleteReceiver()V

    .line 210
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    .local v0, actManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v1, v3, :cond_21

    .line 212
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->removeCity()V

    .line 214
    :cond_21
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 193
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_49

    .line 194
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 195
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1f

    .line 196
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    :cond_1f
    const-string v0, "ClocksTabStatus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    .line 200
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 201
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CurrentTab"

    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    :cond_49
    return-void
.end method
