.class public Lcom/sec/android/app/clockpackage/worldclock/WCMain;
.super Landroid/app/Activity;
.source "WCMain.java"


# static fields
.field public static RESULT_ITEM_INSERTED:I

.field static filter:Landroid/content/IntentFilter;

.field static parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;


# instance fields
.field private final CW_MAIN_MENU_CREATE:I

.field private final CW_MAIN_MENU_DELETE:I

.field private final CW_MAIN_MENU_REORDER:I

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

.field private mCityCountrySel:Ljava/lang/String;

.field private mDBCnt:I

.field private mDBCursor:Landroid/database/Cursor;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBroadcastReceiverRegistered:Z

.field private mIsDST:I

.field private mIsItemInserted:Z

.field private mItemID:I

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

.field private mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

.field private mListPos:I

.field private mNoItemLayout:Landroid/view/View;

.field private mOrientation:I

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private m_fadeAnimation:Landroid/view/animation/Animation;

.field m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

.field private numCitiesInMenu:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/16 v0, 0x65

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    .line 104
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    .line 105
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 257
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 765
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_CREATE:I

    .line 767
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_DELETE:I

    .line 770
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_REORDER:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBDST(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mListPos:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsDST:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItemID:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->delDB()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    return-void
.end method

.method private bindList()V
    .registers 4

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initDBCursor()V

    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V

    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->makeListitem()V

    .line 383
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->delDBCursor()V

    .line 385
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003a

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    return-void
.end method

.method private bindList_ConfigurationChanged()V
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 397
    :goto_4
    return-void

    .line 393
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V

    .line 395
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003a

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method private changeActivity2Create()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 481
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_18

    .line 482
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    :goto_17
    return-void

    .line 487
    :cond_18
    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastActivity()Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 490
    const-string v4, "AddLastActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "CityList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 491
    :cond_3a
    const-class v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 505
    :cond_3f
    :goto_3f
    const-string v0, "where"

    const-string v4, "add"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v0

    if-ne v0, v7, :cond_cc

    .line 507
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string v4, "cityname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 513
    const-string v4, "uniqueid"

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_86
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    :cond_89
    :goto_89
    const-string v0, "zoomlevel"

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastZoomLevel()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v0, "NUMBER_OF_CITIES_IN_MENU"

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_17

    .line 494
    :cond_9e
    const-class v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 495
    const-string v0, "sTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/ClockPackage;

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    .line 499
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3f

    .line 500
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3f

    :cond_ca
    move v0, v1

    .line 513
    goto :goto_86

    .line 516
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_89

    .line 518
    const-string v4, "cityname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 521
    const-string v4, "uniqueid"

    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_ef
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_89
.end method

.method private changeActivity2Delete()V
    .registers 3

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    return-void
.end method

.method private changeActivity2ReOrder()V
    .registers 3

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method private controlListHead()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 416
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    const v7, 0x7f0e0142

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 417
    .local v2, fv:Landroid/view/View;
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_15

    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v6, :cond_69

    .line 418
    :cond_15
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :goto_1a
    const v6, 0x7f0e013f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 427
    .local v4, mNoItemLayout_image:Landroid/widget/LinearLayout;
    const v6, 0x7f0e0140

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, NoItemImage_view:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v6, 0x7f0e0141

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, NoItemText_view:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v6, 0x7f0e013d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 444
    .local v3, mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v6, :cond_6d

    .line 445
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setVisibility(I)V

    .line 453
    :goto_59
    const v6, 0x7f0e013e

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 454
    .local v5, mNoItemLayout_txtCreate:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$7;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    return-void

    .line 420
    .end local v0           #NoItemImage_view:Landroid/view/View;
    .end local v1           #NoItemText_view:Landroid/view/View;
    .end local v3           #mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    .end local v4           #mNoItemLayout_image:Landroid/widget/LinearLayout;
    .end local v5           #mNoItemLayout_txtCreate:Landroid/view/View;
    :cond_69
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 449
    .restart local v0       #NoItemImage_view:Landroid/view/View;
    .restart local v1       #NoItemText_view:Landroid/view/View;
    .restart local v3       #mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    .restart local v4       #mNoItemLayout_image:Landroid/widget/LinearLayout;
    :cond_6d
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setVisibility(I)V

    goto :goto_59
.end method

.method private delDB()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItemID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, whereClause:Ljava/lang/String;
    :try_start_1e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e .. :try_end_28} :catch_2a

    .line 579
    const/4 v2, 0x1

    :goto_29
    return v2

    .line 576
    :catch_2a
    move-exception v0

    .line 577
    .local v0, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_29
.end method

.method private delDBCursor()V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 560
    :cond_d
    :goto_d
    return-void

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 271
    :cond_c
    return-void
.end method

.method private getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 7

    .prologue
    .line 652
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 669
    .local v3, tz:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 670
    const-string v4, "Europe/London"

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 672
    :cond_1a
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, cityCountry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_61

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, cityname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, country:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2d

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x45

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .end local v1           #cityname:[Ljava/lang/String;
    .end local v2           #country:[Ljava/lang/String;
    :cond_61
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v4

    return-object v4
.end method

.method private getContentValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 640
    .local v0, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v1, v:Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 647
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 648
    return-object v1
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "cityName"
    .parameter "cityCountry"

    .prologue
    .line 632
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-object v0
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 565
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 569
    :goto_f
    return-object v6

    .line 566
    :catch_10
    move-exception v7

    .line 567
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private initDBCursor()V
    .registers 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    .line 553
    :cond_12
    return-void
.end method

.method private initDefzone()V
    .registers 4

    .prologue
    .line 240
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDefault()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 246
    :goto_10
    return-void

    .line 244
    :cond_11
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDefault()V

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setDBFactory()V

    goto :goto_10
.end method

.method private initList()V
    .registers 3

    .prologue
    .line 318
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->requestFocus()Z

    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->makeListHead()V

    .line 376
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    .line 251
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 255
    return-void
.end method

.method private makeListHead()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 400
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030039

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    const v2, 0x7f0e0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, headlayout:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addHeaderView(Landroid/view/View;)V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setChoiceMode(I)V

    .line 413
    return-void
.end method

.method private makeListitem()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 465
    iput v7, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    .line 468
    :goto_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_48

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 474
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    goto :goto_f

    .line 477
    :cond_48
    return-void
.end method

.method private setDBFactory()V
    .registers 4

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 629
    return-void
.end method

.method private updateCityChoice()V
    .registers 5

    .prologue
    .line 288
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cleanDBSelected()V

    .line 289
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 290
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_a

    .line 313
    :goto_9
    return-void

    .line 294
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1a

    .line 298
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 304
    :cond_1a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 306
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 308
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_3a

    .line 309
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 310
    :cond_3a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1d

    .line 312
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityCountry:Ljava/lang/String;
    :cond_3e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method

.method private updateDBDST(I)Z
    .registers 10
    .parameter "setdst"

    .prologue
    const/4 v4, 0x0

    .line 583
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mListPos:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 584
    .local v0, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v0, :cond_4c

    .line 585
    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setDST(I)V

    .line 586
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v2, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, whereClause:Ljava/lang/String;
    :try_start_38
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_46} :catch_4a

    move-result v5

    if-gez v5, :cond_4c

    .line 598
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/String;
    :goto_49
    return v4

    .line 594
    .restart local v2       #values:Landroid/content/ContentValues;
    .restart local v3       #whereClause:Ljava/lang/String;
    :catch_4a
    move-exception v1

    .line 595
    .local v1, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_49

    .line 598
    .end local v1           #se:Landroid/database/sqlite/SQLiteFullException;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x1

    goto :goto_49
.end method

.method private updateDBLocale()V
    .registers 6

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, system_locale:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 278
    .local v1, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDBLocale()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, db_locale:Ljava/lang/String;
    if-eqz v0, :cond_23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 280
    :cond_23
    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDBLocale(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBCityCountry()V

    .line 285
    :cond_29
    :goto_29
    return-void

    .line 282
    :cond_2a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    goto :goto_29
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V

    .line 171
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBLocale()V

    .line 173
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    .line 176
    sget v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    if-ne p2, v0, :cond_1c

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 178
    :cond_1c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 184
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 186
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList_ConfigurationChanged()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initDefzone()V

    .line 119
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 694
    move-object v0, p0

    .line 696
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_7e

    .line 761
    :goto_6
    const/4 v4, 0x0

    :goto_7
    return-object v4

    .line 698
    :pswitch_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, typeItems:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    if-nez v4, :cond_33

    .line 700
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 701
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 730
    .end local v3           #typeItems:[Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 731
    .restart local v3       #typeItems:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 732
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 733
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    goto :goto_6

    .line 704
    :cond_33
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 705
    .local v2, dlsSet:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 706
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$8;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$9;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_7

    .line 735
    .end local v2           #dlsSet:Landroid/app/AlertDialog$Builder;
    :cond_52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    .local v1, dlsDST:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 737
    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsDST:I

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_7

    .line 696
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-eqz v0, :cond_c

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->destroy()V

    .line 217
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 225
    :cond_17
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->ReleaseInstance()V

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->deleteReceiver()V

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 232
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
    .registers 3
    .parameter "item"

    .prologue
    .line 816
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 830
    :pswitch_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 832
    :goto_b
    return v0

    .line 818
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create()V

    .line 832
    :goto_f
    const/4 v0, 0x1

    goto :goto_b

    .line 821
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Delete()V

    goto :goto_f

    .line 827
    :pswitch_15
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2ReOrder()V

    goto :goto_f

    .line 816
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
        :pswitch_7
        :pswitch_15
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 210
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const v1, 0x7f020156

    const v5, 0x7f020154

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 773
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 774
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v0, :cond_1f

    .line 776
    const v0, 0x7f0b0091

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 779
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 812
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 782
    :cond_1f
    const v0, 0x7f0b0091

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 785
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 786
    const v0, 0x7f0b008d

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 789
    const v1, 0x7f020157

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 793
    const/4 v0, 0x4

    const v1, 0x7f0b0090

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 794
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 796
    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-ne v1, v3, :cond_60

    .line 797
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 798
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 799
    const v1, 0x7f020155

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 804
    :goto_52
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1a

    .line 805
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1a

    .line 801
    :cond_60
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_52
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    const v2, 0x7f030038

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_9} :catch_72

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBLocale()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initReceiver()V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 139
    .local v1, orientation:I
    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    if-eq v2, v1, :cond_2b

    .line 140
    iput v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList_ConfigurationChanged()V

    .line 146
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-nez v2, :cond_36

    .line 147
    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-direct {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 150
    :cond_36
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    const-string v3, "com.sec.android.app.clockpackage"

    const/16 v4, 0x14

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->Start(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/ClockPackage;

    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    .line 158
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    if-eqz v2, :cond_64

    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_64

    .line 159
    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :cond_64
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userStartAnimationEffectForAddLastItem()V

    .line 164
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 166
    .end local v1           #orientation:I
    :cond_71
    :goto_71
    return-void

    .line 127
    :catch_72
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->finish()V

    goto :goto_71
.end method

.method public updateDBCityCountry()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 602
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 603
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_8

    .line 624
    :goto_7
    return-void

    .line 606
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 607
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 613
    :cond_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 614
    :goto_15
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_67

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, whereClause:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, cityname:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 618
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_63

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    :cond_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_15

    .line 623
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityname:Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method
