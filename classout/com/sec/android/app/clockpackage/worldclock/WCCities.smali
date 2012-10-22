.class public Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.super Landroid/app/Activity;
.source "WCCities.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;,
        Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;
    }
.end annotation


# static fields
.field public static ADD_CITY:Ljava/lang/String;

.field private static mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;


# instance fields
.field private final CW_CITY_MENU_SORT:I

.field private adapter:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

.field private button:Landroid/widget/Button;

.field private gpsDialShow:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mAutoText:Landroid/widget/AutoCompleteTextView;

.field private mCity:Ljava/lang/String;

.field private mCityCountrySel:Ljava/lang/String;

.field private mCityGmt:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field private mCityName:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field private mCityUniqueID:I

.field private mContext:Landroid/content/Context;

.field mDlgProgress:Landroid/app/ProgressDialog;

.field private mFadeLayout:Landroid/widget/LinearLayout;

.field public mFailToastHandler:Landroid/os/Handler;

.field private mFlame:Landroid/widget/FrameLayout;

.field protected final mGeocoderHandler:Landroid/os/Handler;

.field private mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field mGotoMapButtonClicked:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFindingLocation:Z

.field private mIsFirst:Z

.field private mIsGMT_sort:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastString:Ljava/lang/String;

.field private mList:Landroid/widget/ListView;

.field private mSelectCity_Country:Ljava/lang/String;

.field private mShowMapView:Landroid/widget/ImageButton;

.field private mToast:Landroid/widget/Toast;

.field private mWhere:Ljava/lang/String;

.field private mZoomLevel:I

.field private m_contentView:Landroid/view/ViewGroup;

.field private m_fadeAnimation:Landroid/view/animation/Animation;

.field private numCitiesInMenu:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 175
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    .line 282
    const-string v0, "clockpackage.add_city"

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    .line 310
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 179
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z

    .line 183
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_contentView:Landroid/view/ViewGroup;

    .line 188
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCity:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->itemList:Ljava/util/ArrayList;

    .line 336
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mContext:Landroid/content/Context;

    .line 598
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$4;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->runnable:Ljava/lang/Runnable;

    .line 1278
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->CW_CITY_MENU_SORT:I

    .line 1572
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 1633
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFailToastHandler:Landroid/os/Handler;

    .line 1940
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .parameter "x0"

    .prologue
    .line 172
    sput-object p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->saveDB()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->updateCityChoice()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findLocationByMNC()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mShowMapView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private changeView()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->BindList()V

    .line 415
    :goto_7
    return-void

    .line 411
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ChangeList()V

    goto :goto_7
.end method

.method private cleanupResouces()V
    .registers 2

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 2026
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_contentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 2028
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_contentView:Landroid/view/ViewGroup;

    .line 2029
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2030
    return-void
.end method

.method private createProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_e

    .line 1581
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 1590
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$11;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1616
    :cond_49
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 1629
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1630
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1631
    return-void
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 614
    return-void
.end method

.method private downAutoTextKeypad()V
    .registers 4

    .prologue
    .line 839
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 841
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 846
    return-void
.end method

.method private findLocationByMNC()V
    .registers 7

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1667
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1669
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1671
    if-eqz v0, :cond_13

    .line 1673
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->createProgressDialog()V

    .line 1675
    :cond_13
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    if-nez v0, :cond_22

    .line 1677
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    .line 1681
    :cond_22
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->updateLocationMNCAtActivity()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1683
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V

    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    .line 1689
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getCurrentCitiesID()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1696
    :cond_5c
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V

    .line 1720
    :cond_61
    :goto_61
    return-void

    .line 1700
    :cond_62
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isGPSAvailable()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1702
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->timezonefinder:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;

    const-string v4, "network"

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V

    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;

    const-string v5, "gps"

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->requestCurrentLocationExternalListener(Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;)Z

    goto :goto_61

    .line 1711
    :cond_8c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->showGPSDialog()V

    .line 1713
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z

    if-eqz v0, :cond_61

    .line 1714
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V

    goto :goto_61
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 1386
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v6

    .line 1394
    :goto_f
    return-object v6

    .line 1388
    :catch_10
    move-exception v7

    .line 1390
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private initAutoText()V
    .registers 3

    .prologue
    .line 733
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 745
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 752
    return-void
.end method

.method private initCity()V
    .registers 2

    .prologue
    .line 473
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 475
    :cond_8
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->updateCityChoice()V

    .line 481
    :cond_e
    return-void
.end method

.method private initCityList()V
    .registers 2

    .prologue
    .line 953
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 955
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByOffset()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityGmt:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 957
    return-void
.end method

.method private initList()V
    .registers 2

    .prologue
    .line 961
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 967
    return-void
.end method

.method private initLocationButton()V
    .registers 3

    .prologue
    .line 620
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    return-void
.end method

.method private initMapButton()V
    .registers 3

    .prologue
    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGotoMapButtonClicked:Z

    .line 703
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mShowMapView:Landroid/widget/ImageButton;

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mShowMapView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 592
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 596
    return-void
.end method

.method private init_OnCreate()V
    .registers 2

    .prologue
    .line 529
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFlame:Landroid/widget/FrameLayout;

    .line 531
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->init_mapData()V

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initIndexScrollView()V

    .line 535
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initAutoText()V

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initLocationButton()V

    .line 539
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initMapButton()V

    .line 543
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initCityList()V

    .line 545
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initList()V

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->control_IndexScrollView()V

    .line 549
    return-void
.end method

.method private init_mapData()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 584
    :cond_5
    :goto_5
    return-void

    .line 559
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 561
    .local v1, i:Landroid/content/Intent;
    const-string v2, "where"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    .line 563
    const-string v2, "index"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIndex:I

    .line 565
    const-string v2, "cityname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    .line 567
    const-string v2, "uniqueid"

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityUniqueID:I

    .line 569
    const-string v2, "zoomlevel"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mZoomLevel:I

    .line 572
    const-string v2, "NUMBER_OF_CITIES_IN_MENU"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->numCitiesInMenu:I

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 578
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v0, :cond_5

    .line 580
    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityUniqueID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    goto :goto_5
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 2012
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_11

    .line 2017
    :goto_4
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 2018
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2019
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13

    .line 2022
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_10
    return-void

    .line 2013
    :catch_11
    move-exception v2

    goto :goto_4

    .line 2020
    :catch_13
    move-exception v2

    goto :goto_10
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 1994
    if-eqz p1, :cond_1b

    .line 1996
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1998
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1999
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_b
    if-ge v3, v2, :cond_18

    .line 2000
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2001
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_17

    .line 1999
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2003
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_17
    move-exception v5

    .line 2006
    :cond_18
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->nullViewDrawable(Landroid/view/View;)V

    .line 2008
    :cond_1b
    return-void
.end method

.method private removeProgressDialog()V
    .registers 2

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1657
    :cond_11
    return-void
.end method

.method private saveDB()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1400
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v1

    .line 1404
    :try_start_7
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    const-string v3, "city"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1408
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const-string v5, "update"

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_56

    .line 1434
    :cond_39
    :goto_39
    return v0

    .line 1417
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1419
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const-string v4, "insert"

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_53} :catch_58

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1434
    :cond_56
    const/4 v0, 0x1

    goto :goto_39

    .line 1428
    :catch_58
    move-exception v1

    goto :goto_39
.end method

.method private setCityList(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1750
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1871
    :cond_8
    :goto_8
    return-void

    .line 1756
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1760
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1762
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_8

    .line 1768
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1770
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1772
    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1774
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1776
    const-string v3, "GT-I9100"

    .line 1778
    const-string v3, "800x480"

    const-string v4, "1280x800"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "800x480"

    const-string v4, "1280x720"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "GT-I9100"

    const-string v4, "GT-I9221"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "GT-I9100"

    const-string v4, "GT-I9220"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "GT-I9100"

    const-string v4, "GT-I9228"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1779
    :cond_70
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->itemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getNationalFlag()I

    move-result v0

    invoke-direct {v4, v2, v5, v6, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1781
    :cond_8b
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->itemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v0

    invoke-direct {v4, v2, v5, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 1785
    :cond_a3
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    .line 1787
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1793
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003c

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->adapter:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->adapter:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_8
.end method

.method private setPositionList()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1205
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFirst:Z

    .line 1207
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 1233
    :cond_11
    :goto_11
    return-void

    .line 1215
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1217
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_11

    .line 1219
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 1221
    .local v2, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1217
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1227
    :cond_32
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_11
.end method

.method private showGPSDialog()V
    .registers 4

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z

    if-nez v0, :cond_7

    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z

    .line 1473
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1475
    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1477
    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1514
    const v1, 0x1040013

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$9;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1548
    const v1, 0x1040009

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1570
    return-void
.end method

.method private updateCityChoice()V
    .registers 5

    .prologue
    .line 485
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cleanDBSelected()V

    .line 487
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 489
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_a

    .line 525
    :goto_9
    return-void

    .line 495
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_14

    .line 497
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 507
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_38

    .line 511
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 514
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_34

    .line 515
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 519
    :cond_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_17

    .line 523
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityCountry:Ljava/lang/String;
    :cond_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method


# virtual methods
.method public BindList()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1056
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-ne v0, v3, :cond_14

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->setupCityListByGMT()Ljava/util/ArrayList;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 1079
    :cond_13
    :goto_13
    return-void

    .line 1056
    :cond_14
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->setupCityListByName()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9

    .line 1065
    :cond_19
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003c

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1071
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFirst:Z

    if-eq v0, v3, :cond_13

    .line 1077
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setPositionList()V

    goto :goto_13
.end method

.method public ChangeList()V
    .registers 18

    .prologue
    .line 1083
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 1181
    :goto_6
    return-void

    .line 1089
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1091
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 1093
    .local v6, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v4, cityListForIndexing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_b9

    .line 1097
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-eqz v11, :cond_b3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityGmt:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 1099
    .local v3, cities:[Lcom/sec/android/app/clockpackage/worldclock/City;
    :goto_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1101
    .local v9, lowerCaseMatcher:Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_32
    if-ge v5, v7, :cond_cc

    aget-object v2, v1, v5

    .line 1126
    .local v2, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_72

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->matchLastString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_72

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->matchLastString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_72

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b0

    .line 1134
    :cond_72
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v15

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getNationalFlag()I

    move-result v16

    invoke-direct/range {v12 .. v16}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_b0
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1097
    .end local v1           #arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v2           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v3           #cities:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #lowerCaseMatcher:Ljava/lang/String;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    goto/16 :goto_27

    .line 1146
    :cond_b9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_116

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->setupCityListByGMT()Ljava/util/ArrayList;

    move-result-object v11

    :goto_c4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    .line 1149
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesOrderByName()Ljava/util/ArrayList;

    move-result-object v4

    .line 1153
    :cond_cc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_11b

    .line 1158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v10, sb:Ljava/lang/StringBuilder;
    const v11, 0x7f0b009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v11, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v12, 0x7f03003b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v13}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 1179
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :goto_109
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_6

    .line 1146
    :cond_116
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->setupCityListByName()Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_c4

    .line 1168
    :cond_11b
    new-instance v11, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v12, 0x7f03003c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v13}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 1170
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b009a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v4, v11}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1175
    .local v8, listIndexer:Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v11, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    goto :goto_109
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10
    .parameter "s"

    .prologue
    const v7, 0x7f0b0098

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 788
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_1a

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 797
    :goto_13
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v0, v4, :cond_2b

    .line 823
    :goto_19
    return-void

    .line 791
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 803
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-interface {p1, v5, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAutoText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5d

    .line 809
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    .line 821
    :goto_57
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 816
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 827
    return-void
.end method

.method public control_IndexScrollView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->clearAnimation()V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFlame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->clearAnimation()V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFlame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 929
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_2b

    .line 947
    :goto_2a
    return-void

    .line 935
    :cond_2b
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-nez v0, :cond_37

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFlame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 941
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFlame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2a
.end method

.method public getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "city"
    .parameter "type"

    .prologue
    .line 1440
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1442
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1452
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1454
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1456
    return-object v0
.end method

.method public initIndexScrollView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 854
    const v1, 0x7f03001d

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 856
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesOrderByName()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 861
    .local v0, listIndexer:Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 865
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$6;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 877
    const v1, 0x7f03001e

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 914
    return-void
.end method

.method public isDuplication(I)Z
    .registers 6
    .parameter "uniqueID"

    .prologue
    .line 1340
    const/4 v0, 0x0

    .line 1342
    .local v0, b:Z
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 1344
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_9

    move v1, v0

    .line 1376
    .end local v0           #b:Z
    .local v1, b:I
    :goto_8
    return v1

    .line 1350
    .end local v1           #b:I
    .restart local v0       #b:Z
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_14

    .line 1352
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 1354
    .restart local v1       #b:I
    goto :goto_8

    .line 1358
    .end local v1           #b:I
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1360
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1362
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne p1, v3, :cond_2a

    .line 1364
    const/4 v0, 0x1

    .line 1374
    :cond_25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 1376
    .restart local v1       #b:I
    goto :goto_8

    .line 1370
    .end local v1           #b:I
    :cond_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_17
.end method

.method matchLastString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "country"
    .parameter "matcher"

    .prologue
    .line 1185
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1187
    .local v5, splitCountry:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, lowerCaseMatcher:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v3, :cond_20

    aget-object v1, v0, v2

    .line 1191
    .local v1, c:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1193
    const/4 v6, 0x1

    .line 1199
    .end local v1           #c:Ljava/lang/String;
    :goto_1c
    return v6

    .line 1189
    .restart local v1       #c:Ljava/lang/String;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1199
    .end local v1           #c:Ljava/lang/String;
    :cond_20
    const/4 v6, 0x0

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->finish()V

    .line 467
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->control_IndexScrollView()V

    .line 401
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 354
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setContentView(I)V

    .line 359
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mHandler:Landroid/os/Handler;

    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initCity()V

    .line 363
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->init_OnCreate()V

    .line 365
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->changeView()V

    .line 367
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initReceiver()V

    .line 369
    iput-object p0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mContext:Landroid/content/Context;

    .line 371
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 447
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->cleanupResouces()V

    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 450
    return-void
.end method

.method public onGotoMap(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1244
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1245
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    const-string v1, "sTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1251
    const-string v1, "where"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mWhere:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const-string v1, "index"

    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1255
    const-string v1, "cityname"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    const-string v1, "uniqueid"

    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mCityUniqueID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1259
    const-string v1, "zoomlevel"

    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mZoomLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFadeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_fadeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1268
    const-string v1, "NUMBER_OF_CITIES_IN_MENU"

    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->numCitiesInMenu:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->startActivity(Landroid/content/Intent;)V

    .line 1272
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->finish()V

    .line 1274
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v7, 0x7f0b0097

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 992
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 994
    .local v2, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    .line 996
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    const v4, 0x7f0b009c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_21

    .line 1052
    :cond_20
    :goto_20
    return-void

    .line 1002
    :cond_21
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1004
    .local v1, divIndex:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_20

    .line 1010
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1012
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_20

    .line 1016
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->isDuplication(I)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1018
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->saveDB()Z

    move-result v3

    if-nez v3, :cond_56

    .line 1020
    const v3, 0x7f0b0099

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1025
    :cond_56
    sget v3, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setResult(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->finish()V

    goto :goto_20

    .line 1031
    :cond_5f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_7d

    .line 1033
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v7, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    .line 1048
    :goto_77
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 1043
    :cond_7d
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_77
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    .line 756
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x42

    if-ne p2, v0, :cond_10

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ChangeList()V

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->downAutoTextKeypad()V

    .line 765
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 454
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    move v1, v0

    .line 1331
    :goto_a
    return v1

    .line 1309
    :pswitch_b
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-nez v2, :cond_10

    move v0, v1

    :cond_10
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_21

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->control_IndexScrollView()V

    .line 1321
    :cond_21
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->changeView()V

    goto :goto_a

    .line 1305
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 421
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefLastActivityCity()V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 427
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->deleteReceiver()V

    .line 437
    :cond_18
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0b0093

    const/4 v2, 0x0

    .line 1286
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1290
    const/4 v0, 0x1

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1292
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-eqz v0, :cond_2a

    const v0, 0x7f020152

    :goto_13
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1294
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1299
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1292
    :cond_2a
    const v0, 0x7f020153

    goto :goto_13

    .line 1294
    :cond_2e
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_fadeAnimation:Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_fadeAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 383
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 385
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsGMT_sort:Z

    if-nez v0, :cond_a

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mAlpIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 982
    :goto_9
    return-void

    .line 978
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGmtIndex:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_9
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->downAutoTextKeypad()V

    .line 988
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 831
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mLastString:Ljava/lang/String;

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ChangeList()V

    .line 835
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .parameter "layoutResID"

    .prologue
    .line 1980
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1983
    .local v0, mainView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setContentView(Landroid/view/View;)V

    .line 1984
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1988
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1990
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->m_contentView:Landroid/view/ViewGroup;

    .line 1991
    return-void
.end method
