.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V
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
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 322
    if-eqz v0, :cond_8c

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$102(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 327
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastActivity()Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 330
    const-string v3, "AddLastActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "CityList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 332
    :cond_35
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const-class v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 339
    :goto_3c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_8c

    .line 341
    const-string v3, "where"

    const-string v4, "city"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v3, "index"

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v0, "cityname"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v3, "uniqueid"

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6f
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v0, "zoomlevel"

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    const-string v0, "NUMBER_OF_CITIES_IN_MENU"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    :cond_8c
    if-nez p3, :cond_93

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$300(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    .line 357
    :cond_93
    return-void

    .line 335
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const-class v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 336
    const-string v1, "sTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3c

    .line 344
    :cond_a5
    const/4 v0, -0x1

    goto :goto_6f
.end method
