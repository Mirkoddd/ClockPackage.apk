.class public Lcom/sec/android/app/clockpackage/worldclock/CityManager;
.super Ljava/lang/Object;
.source "CityManager.java"


# static fields
.field public static CITY_COUNT:I

.field public static cities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/clockpackage/worldclock/City;",
            ">;"
        }
    .end annotation
.end field

.field public static citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field public static citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field public static citiesID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 35
    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDBSelected()V
    .registers 5

    .prologue
    .line 256
    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-nez v4, :cond_5

    .line 268
    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .local v2, i$:I
    .local v3, len$:I
    :cond_4
    return-void

    .line 262
    .end local v0           #arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .restart local v0       #arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_9
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 264
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public static findCityByOffset(I)Ljava/lang/String;
    .registers 7
    .parameter "offseet"

    .prologue
    .line 368
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_31

    aget-object v1, v0, v2

    .line 370
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLocalRawOffset()I

    move-result v4

    if-ne v4, p0, :cond_2e

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :goto_2d
    return-object v4

    .line 368
    .restart local v1       #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 378
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_31
    const-string v4, ""

    goto :goto_2d
.end method

.method public static findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "id"
    .parameter "_offset"

    .prologue
    .line 485
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 487
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :goto_31
    return-object v4

    .line 485
    .restart local v1       #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 495
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_35
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCityByOffset(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31
.end method

.method public static findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 2
    .parameter "cityCountry"

    .prologue
    .line 569
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 570
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 573
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .parameter "cityUniqueID"

    .prologue
    const/4 v1, 0x0

    .line 577
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-eqz v2, :cond_14

    if-eqz p0, :cond_14

    .line 578
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, cityName:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 584
    .end local v0           #cityName:Ljava/lang/String;
    :goto_11
    return-object v0

    .restart local v0       #cityName:Ljava/lang/String;
    :cond_12
    move-object v0, v1

    .line 582
    goto :goto_11

    .end local v0           #cityName:Ljava/lang/String;
    :cond_14
    move-object v0, v1

    .line 584
    goto :goto_11
.end method

.method public static getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 11

    .prologue
    .line 276
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 278
    .local v8, ts:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 280
    .local v2, ht:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/clockpackage/worldclock/City;>;"
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_59

    aget-object v1, v0, v3

    .line 292
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 298
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_59
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 300
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v9

    new-array v1, v9, [Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 302
    .local v1, c:[Lcom/sec/android/app/clockpackage/worldclock/City;
    const/4 v6, 0x0

    .line 304
    .local v6, n:I
    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 306
    add-int/lit8 v7, v6, 0x1

    .end local v6           #n:I
    .local v7, n:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v9, v1, v6

    move v6, v7

    .end local v7           #n:I
    .restart local v6       #n:I
    goto :goto_64

    .line 310
    :cond_7a
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 312
    return-object v1
.end method

.method public static getCitiesByOffset()[Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 3

    .prologue
    .line 322
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sec/android/app/clockpackage/worldclock/City;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 324
    .local v0, c:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 358
    return-object v0
.end method

.method public static getCitiesOrderByName()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v2

    .line 615
    .local v2, city:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_1a

    aget-object v1, v0, v3

    .line 629
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 634
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_1a
    return-object v4
.end method

.method public static getFlagResourceID(I)I
    .registers 3
    .parameter

    .prologue
    const v0, 0x7f02009d

    const v1, 0x7f0200cf

    .line 649
    packed-switch p0, :pswitch_data_34e

    .line 1002
    :goto_9
    :pswitch_9
    return v0

    .line 653
    :pswitch_a
    const v0, 0x7f02009e

    goto :goto_9

    .line 655
    :pswitch_e
    const v0, 0x7f02009f

    goto :goto_9

    .line 657
    :pswitch_12
    const v0, 0x7f0200a1

    goto :goto_9

    .line 659
    :pswitch_16
    const v0, 0x7f0200a2

    goto :goto_9

    .line 661
    :pswitch_1a
    const v0, 0x7f0200a3

    goto :goto_9

    .line 663
    :pswitch_1e
    const v0, 0x7f0200a4

    goto :goto_9

    .line 665
    :pswitch_22
    const v0, 0x7f0200a6

    goto :goto_9

    .line 667
    :pswitch_26
    const v0, 0x7f0200a8

    goto :goto_9

    .line 669
    :pswitch_2a
    const v0, 0x7f0200ab

    goto :goto_9

    .line 671
    :pswitch_2e
    const v0, 0x7f0200ac

    goto :goto_9

    .line 673
    :pswitch_32
    const v0, 0x7f0200af

    goto :goto_9

    .line 675
    :pswitch_36
    const v0, 0x7f0200b1

    goto :goto_9

    .line 677
    :pswitch_3a
    const v0, 0x7f0200b3

    goto :goto_9

    .line 679
    :pswitch_3e
    const v0, 0x7f0200b5

    goto :goto_9

    .line 681
    :pswitch_42
    const v0, 0x7f0200b7

    goto :goto_9

    .line 683
    :pswitch_46
    const v0, 0x7f0200ba

    goto :goto_9

    .line 685
    :pswitch_4a
    const v0, 0x7f0200bb

    goto :goto_9

    .line 687
    :pswitch_4e
    const v0, 0x7f0200bc

    goto :goto_9

    .line 689
    :pswitch_52
    const v0, 0x7f0200c1

    goto :goto_9

    .line 691
    :pswitch_56
    const v0, 0x7f0200c2

    goto :goto_9

    .line 693
    :pswitch_5a
    const v0, 0x7f0200c6

    goto :goto_9

    .line 695
    :pswitch_5e
    const v0, 0x7f0200cb

    goto :goto_9

    .line 697
    :pswitch_62
    const v0, 0x7f0200ce

    goto :goto_9

    :pswitch_66
    move v0, v1

    .line 699
    goto :goto_9

    .line 701
    :pswitch_68
    const v0, 0x7f0200d3

    goto :goto_9

    .line 703
    :pswitch_6c
    const v0, 0x7f0200d4

    goto :goto_9

    .line 705
    :pswitch_70
    const v0, 0x7f0200d6

    goto :goto_9

    .line 707
    :pswitch_74
    const v0, 0x7f0200df

    goto :goto_9

    .line 709
    :pswitch_78
    const v0, 0x7f0200e1

    goto :goto_9

    .line 711
    :pswitch_7c
    const v0, 0x7f0200e2

    goto :goto_9

    .line 713
    :pswitch_80
    const v0, 0x7f0200e3

    goto :goto_9

    .line 715
    :pswitch_84
    const v0, 0x7f0200e5

    goto :goto_9

    .line 721
    :pswitch_88
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v1, "ARB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "HAJ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "DAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 723
    :cond_a6
    const v0, 0x7f02010f

    goto/16 :goto_9

    .line 725
    :cond_ab
    const v0, 0x7f0200e6

    goto/16 :goto_9

    .line 728
    :pswitch_b0
    const v0, 0x7f0200e7

    goto/16 :goto_9

    .line 730
    :pswitch_b5
    const v0, 0x7f0200e9

    goto/16 :goto_9

    .line 732
    :pswitch_ba
    const v0, 0x7f0200eb

    goto/16 :goto_9

    .line 734
    :pswitch_bf
    const v0, 0x7f0200ec

    goto/16 :goto_9

    .line 736
    :pswitch_c4
    const v0, 0x7f0200ed

    goto/16 :goto_9

    .line 738
    :pswitch_c9
    const v0, 0x7f0200f0

    goto/16 :goto_9

    .line 740
    :pswitch_ce
    const v0, 0x7f0200f5

    goto/16 :goto_9

    .line 742
    :pswitch_d3
    const v0, 0x7f0200f9

    goto/16 :goto_9

    .line 744
    :pswitch_d8
    const v0, 0x7f020100

    goto/16 :goto_9

    .line 746
    :pswitch_dd
    const v0, 0x7f020102

    goto/16 :goto_9

    .line 748
    :pswitch_e2
    const v0, 0x7f020104

    goto/16 :goto_9

    .line 750
    :pswitch_e7
    const v0, 0x7f020107

    goto/16 :goto_9

    .line 752
    :pswitch_ec
    const v0, 0x7f02010a

    goto/16 :goto_9

    .line 754
    :pswitch_f1
    const v0, 0x7f020111

    goto/16 :goto_9

    .line 756
    :pswitch_f6
    const v0, 0x7f020114

    goto/16 :goto_9

    .line 758
    :pswitch_fb
    const v0, 0x7f020115

    goto/16 :goto_9

    .line 760
    :pswitch_100
    const v0, 0x7f020116

    goto/16 :goto_9

    .line 762
    :pswitch_105
    const v0, 0x7f020117

    goto/16 :goto_9

    .line 766
    :pswitch_10a
    const v0, 0x7f02011a

    goto/16 :goto_9

    .line 768
    :pswitch_10f
    const v0, 0x7f02011b

    goto/16 :goto_9

    .line 770
    :pswitch_114
    const v0, 0x7f0200f3

    goto/16 :goto_9

    .line 772
    :pswitch_119
    const v0, 0x7f02011e

    goto/16 :goto_9

    .line 774
    :pswitch_11e
    const v0, 0x7f02011f

    goto/16 :goto_9

    .line 776
    :pswitch_123
    const v0, 0x7f020122

    goto/16 :goto_9

    .line 778
    :pswitch_128
    const v0, 0x7f020128

    goto/16 :goto_9

    .line 780
    :pswitch_12d
    const v0, 0x7f02011c

    goto/16 :goto_9

    .line 782
    :pswitch_132
    const v0, 0x7f02012c

    goto/16 :goto_9

    .line 784
    :pswitch_137
    const v0, 0x7f02012d

    goto/16 :goto_9

    .line 786
    :pswitch_13c
    const v0, 0x7f020130

    goto/16 :goto_9

    .line 788
    :pswitch_141
    const v0, 0x7f020133

    goto/16 :goto_9

    .line 790
    :pswitch_146
    const v0, 0x7f020136

    goto/16 :goto_9

    .line 792
    :pswitch_14b
    const v0, 0x7f020138

    goto/16 :goto_9

    .line 794
    :pswitch_150
    const v0, 0x7f020139

    goto/16 :goto_9

    .line 796
    :pswitch_155
    const v0, 0x7f02013d

    goto/16 :goto_9

    .line 798
    :pswitch_15a
    const v0, 0x7f02013e

    goto/16 :goto_9

    .line 800
    :pswitch_15f
    const v0, 0x7f02013c

    goto/16 :goto_9

    .line 802
    :pswitch_164
    const v0, 0x7f02013f

    goto/16 :goto_9

    .line 804
    :pswitch_169
    const v0, 0x7f020142

    goto/16 :goto_9

    .line 806
    :pswitch_16e
    const v0, 0x7f020143

    goto/16 :goto_9

    .line 808
    :pswitch_173
    const v0, 0x7f020144

    goto/16 :goto_9

    .line 810
    :pswitch_178
    const v0, 0x7f0200b2

    goto/16 :goto_9

    .line 812
    :pswitch_17d
    const v0, 0x7f020131

    goto/16 :goto_9

    .line 814
    :pswitch_182
    const v0, 0x7f0200c7

    goto/16 :goto_9

    .line 816
    :pswitch_187
    const v0, 0x7f0200be

    goto/16 :goto_9

    .line 818
    :pswitch_18c
    const v0, 0x7f0200d5

    goto/16 :goto_9

    .line 820
    :pswitch_191
    const v0, 0x7f0200cc

    goto/16 :goto_9

    .line 822
    :pswitch_196
    const v0, 0x7f0200ea

    goto/16 :goto_9

    .line 824
    :pswitch_19b
    const v0, 0x7f020108

    goto/16 :goto_9

    .line 826
    :pswitch_1a0
    const v0, 0x7f0200f8

    goto/16 :goto_9

    .line 828
    :pswitch_1a5
    const v0, 0x7f02013a

    goto/16 :goto_9

    .line 830
    :pswitch_1aa
    const v0, 0x7f0200ca

    goto/16 :goto_9

    .line 832
    :pswitch_1af
    const v0, 0x7f020113

    goto/16 :goto_9

    .line 834
    :pswitch_1b4
    const v0, 0x7f0200e4

    goto/16 :goto_9

    .line 836
    :pswitch_1b9
    const v0, 0x7f0200fb

    goto/16 :goto_9

    .line 838
    :pswitch_1be
    const v0, 0x7f0200b8

    goto/16 :goto_9

    :pswitch_1c3
    move v0, v1

    .line 840
    goto/16 :goto_9

    .line 842
    :pswitch_1c6
    const v0, 0x7f0200f1

    goto/16 :goto_9

    .line 844
    :pswitch_1cb
    const v0, 0x7f020125

    goto/16 :goto_9

    .line 846
    :pswitch_1d0
    const v0, 0x7f0200ae

    goto/16 :goto_9

    .line 848
    :pswitch_1d5
    const v0, 0x7f0200ef

    goto/16 :goto_9

    .line 850
    :pswitch_1da
    const v0, 0x7f0200db

    goto/16 :goto_9

    .line 852
    :pswitch_1df
    const v0, 0x7f0200a9

    goto/16 :goto_9

    .line 854
    :pswitch_1e4
    const v0, 0x7f0200ad

    goto/16 :goto_9

    :pswitch_1e9
    move v0, v1

    .line 856
    goto/16 :goto_9

    .line 858
    :pswitch_1ec
    const v0, 0x7f020101

    goto/16 :goto_9

    .line 860
    :pswitch_1f1
    const v0, 0x7f0200da

    goto/16 :goto_9

    .line 862
    :pswitch_1f6
    const v0, 0x7f0200c3

    goto/16 :goto_9

    .line 864
    :pswitch_1fb
    const v0, 0x7f020124

    goto/16 :goto_9

    .line 866
    :pswitch_200
    const v0, 0x7f020132

    goto/16 :goto_9

    .line 868
    :pswitch_205
    const v0, 0x7f020135

    goto/16 :goto_9

    .line 870
    :pswitch_20a
    const v0, 0x7f0200c4

    goto/16 :goto_9

    .line 872
    :pswitch_20f
    const v0, 0x7f020119

    goto/16 :goto_9

    .line 874
    :pswitch_214
    const v0, 0x7f0200b6

    goto/16 :goto_9

    .line 876
    :pswitch_219
    const v0, 0x7f020134

    goto/16 :goto_9

    .line 878
    :pswitch_21e
    const v0, 0x7f020123

    goto/16 :goto_9

    :pswitch_223
    move v0, v1

    .line 880
    goto/16 :goto_9

    .line 882
    :pswitch_226
    const v0, 0x7f020127

    goto/16 :goto_9

    .line 884
    :pswitch_22b
    const v0, 0x7f0200b0

    goto/16 :goto_9

    .line 886
    :pswitch_230
    const v0, 0x7f0200dc

    goto/16 :goto_9

    .line 888
    :pswitch_235
    const v0, 0x7f02012b

    goto/16 :goto_9

    .line 890
    :pswitch_23a
    const v0, 0x7f0200d9

    goto/16 :goto_9

    :pswitch_23f
    move v0, v1

    .line 892
    goto/16 :goto_9

    .line 894
    :pswitch_242
    const v0, 0x7f020148

    goto/16 :goto_9

    .line 896
    :pswitch_247
    const v0, 0x7f0200c0

    goto/16 :goto_9

    .line 898
    :pswitch_24c
    const v0, 0x7f02013b

    goto/16 :goto_9

    .line 900
    :pswitch_251
    const v0, 0x7f02012e

    goto/16 :goto_9

    .line 902
    :pswitch_256
    const v0, 0x7f0200e8

    goto/16 :goto_9

    .line 904
    :pswitch_25b
    const v0, 0x7f0200ee

    goto/16 :goto_9

    .line 906
    :pswitch_260
    const v0, 0x7f02010d

    goto/16 :goto_9

    .line 908
    :pswitch_265
    const v0, 0x7f0200a0

    goto/16 :goto_9

    .line 910
    :pswitch_26a
    const v0, 0x7f020147

    goto/16 :goto_9

    .line 912
    :pswitch_26f
    const v0, 0x7f0200f6

    goto/16 :goto_9

    .line 914
    :pswitch_274
    const v0, 0x7f0200c9

    goto/16 :goto_9

    .line 916
    :pswitch_279
    const v0, 0x7f0200fa

    goto/16 :goto_9

    .line 918
    :pswitch_27e
    const v0, 0x7f02010b

    goto/16 :goto_9

    .line 920
    :pswitch_283
    const v0, 0x7f0200a7

    goto/16 :goto_9

    .line 922
    :pswitch_288
    const v0, 0x7f020105

    goto/16 :goto_9

    .line 924
    :pswitch_28d
    const v0, 0x7f020120

    goto/16 :goto_9

    .line 926
    :pswitch_292
    const v0, 0x7f02012a

    goto/16 :goto_9

    .line 928
    :pswitch_297
    const v0, 0x7f0200f2

    goto/16 :goto_9

    .line 930
    :pswitch_29c
    const v0, 0x7f020141

    goto/16 :goto_9

    .line 932
    :pswitch_2a1
    const v0, 0x7f020110

    goto/16 :goto_9

    .line 934
    :pswitch_2a6
    const v0, 0x7f0200b9

    goto/16 :goto_9

    .line 936
    :pswitch_2ab
    const v0, 0x7f02010c

    goto/16 :goto_9

    .line 938
    :pswitch_2b0
    const v0, 0x7f0200fe

    goto/16 :goto_9

    .line 940
    :pswitch_2b5
    const v0, 0x7f020109

    goto/16 :goto_9

    .line 942
    :pswitch_2ba
    const v0, 0x7f020137

    goto/16 :goto_9

    .line 944
    :pswitch_2bf
    const v0, 0x7f0200d7

    goto/16 :goto_9

    .line 946
    :pswitch_2c4
    const v0, 0x7f0200b4

    goto/16 :goto_9

    .line 948
    :pswitch_2c9
    const v0, 0x7f020112

    goto/16 :goto_9

    .line 950
    :pswitch_2ce
    const v0, 0x7f02012f

    goto/16 :goto_9

    .line 952
    :pswitch_2d3
    const v0, 0x7f020103

    goto/16 :goto_9

    .line 954
    :pswitch_2d8
    const v0, 0x7f0200ff

    goto/16 :goto_9

    .line 956
    :pswitch_2dd
    const v0, 0x7f0200dd

    goto/16 :goto_9

    .line 958
    :pswitch_2e2
    const v0, 0x7f02010e

    goto/16 :goto_9

    .line 960
    :pswitch_2e7
    const v0, 0x7f020106

    goto/16 :goto_9

    .line 962
    :pswitch_2ec
    const v0, 0x7f0200e0

    goto/16 :goto_9

    .line 964
    :pswitch_2f1
    const v0, 0x7f02011d

    goto/16 :goto_9

    .line 966
    :pswitch_2f6
    const v0, 0x7f0200bd

    goto/16 :goto_9

    .line 968
    :pswitch_2fb
    const v0, 0x7f020118

    goto/16 :goto_9

    .line 970
    :pswitch_300
    const v0, 0x7f0200c8

    goto/16 :goto_9

    .line 972
    :pswitch_305
    const v0, 0x7f020146

    goto/16 :goto_9

    .line 974
    :pswitch_30a
    const v0, 0x7f0200c5

    goto/16 :goto_9

    .line 976
    :pswitch_30f
    const v0, 0x7f0200f7

    goto/16 :goto_9

    .line 978
    :pswitch_314
    const v0, 0x7f0200cd

    goto/16 :goto_9

    :pswitch_319
    move v0, v1

    .line 980
    goto/16 :goto_9

    .line 982
    :pswitch_31c
    const v0, 0x7f0200de

    goto/16 :goto_9

    .line 984
    :pswitch_321
    const v0, 0x7f0200f4

    goto/16 :goto_9

    .line 986
    :pswitch_326
    const v0, 0x7f0200fc

    goto/16 :goto_9

    .line 988
    :pswitch_32b
    const v0, 0x7f020126

    goto/16 :goto_9

    .line 990
    :pswitch_330
    const v0, 0x7f0200a5

    goto/16 :goto_9

    .line 992
    :pswitch_335
    const v0, 0x7f0200bf

    goto/16 :goto_9

    .line 994
    :pswitch_33a
    const v0, 0x7f020145

    goto/16 :goto_9

    .line 996
    :pswitch_33f
    const v0, 0x7f020140

    goto/16 :goto_9

    .line 998
    :pswitch_344
    const v0, 0x7f020129

    goto/16 :goto_9

    .line 1000
    :pswitch_349
    const v0, 0x7f020121

    goto/16 :goto_9

    .line 649
    :pswitch_data_34e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_68
        :pswitch_6c
        :pswitch_70
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_b0
        :pswitch_b5
        :pswitch_ba
        :pswitch_bf
        :pswitch_c4
        :pswitch_c9
        :pswitch_ce
        :pswitch_d3
        :pswitch_d8
        :pswitch_dd
        :pswitch_e2
        :pswitch_e7
        :pswitch_ec
        :pswitch_f1
        :pswitch_f6
        :pswitch_fb
        :pswitch_100
        :pswitch_105
        :pswitch_9
        :pswitch_10a
        :pswitch_10f
        :pswitch_114
        :pswitch_119
        :pswitch_11e
        :pswitch_123
        :pswitch_128
        :pswitch_12d
        :pswitch_132
        :pswitch_137
        :pswitch_13c
        :pswitch_141
        :pswitch_146
        :pswitch_14b
        :pswitch_150
        :pswitch_155
        :pswitch_15a
        :pswitch_15f
        :pswitch_164
        :pswitch_169
        :pswitch_16e
        :pswitch_173
        :pswitch_178
        :pswitch_17d
        :pswitch_182
        :pswitch_187
        :pswitch_18c
        :pswitch_191
        :pswitch_196
        :pswitch_19b
        :pswitch_1a0
        :pswitch_1a5
        :pswitch_1aa
        :pswitch_1af
        :pswitch_1b4
        :pswitch_1b9
        :pswitch_1be
        :pswitch_1c3
        :pswitch_1c6
        :pswitch_1cb
        :pswitch_1d0
        :pswitch_1d5
        :pswitch_1da
        :pswitch_1df
        :pswitch_1e4
        :pswitch_1e9
        :pswitch_1ec
        :pswitch_1f1
        :pswitch_1f6
        :pswitch_1fb
        :pswitch_200
        :pswitch_205
        :pswitch_20a
        :pswitch_20f
        :pswitch_214
        :pswitch_219
        :pswitch_21e
        :pswitch_223
        :pswitch_226
        :pswitch_22b
        :pswitch_230
        :pswitch_235
        :pswitch_23a
        :pswitch_23f
        :pswitch_242
        :pswitch_247
        :pswitch_24c
        :pswitch_251
        :pswitch_256
        :pswitch_25b
        :pswitch_260
        :pswitch_265
        :pswitch_26a
        :pswitch_26f
        :pswitch_274
        :pswitch_279
        :pswitch_27e
        :pswitch_283
        :pswitch_288
        :pswitch_28d
        :pswitch_292
        :pswitch_297
        :pswitch_29c
        :pswitch_2a1
        :pswitch_2a6
        :pswitch_2ab
        :pswitch_2b0
        :pswitch_2b5
        :pswitch_2ba
        :pswitch_2bf
        :pswitch_2c4
        :pswitch_2c9
        :pswitch_2ce
        :pswitch_2d3
        :pswitch_2d8
        :pswitch_2dd
        :pswitch_2e2
        :pswitch_2e7
        :pswitch_2ec
        :pswitch_2f1
        :pswitch_2f6
        :pswitch_2fb
        :pswitch_300
        :pswitch_305
        :pswitch_30a
        :pswitch_30f
        :pswitch_314
        :pswitch_319
        :pswitch_31c
        :pswitch_321
        :pswitch_326
        :pswitch_32b
        :pswitch_330
        :pswitch_335
        :pswitch_33a
        :pswitch_33f
        :pswitch_344
        :pswitch_349
    .end packed-switch
.end method

.method public static initCity(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->loadCities(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->loadCitiesID(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public static loadCities(Landroid/content/Context;)V
    .registers 24
    .parameter "context"

    .prologue
    .line 70
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    .line 72
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 78
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 82
    const/4 v13, 0x0

    .local v13, cityname_pinyin:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 84
    .local v15, countries_pinyin:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, cityname:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 88
    .local v17, maptables:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, countries:[Ljava/lang/String;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, Salescode:Ljava/lang/String;
    const-string v1, "ARB"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "HAJ"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "DAM"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 102
    :cond_54
    const/16 v1, 0x21

    new-instance v2, Ljava/lang/String;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v14, v1

    .line 104
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 106
    .local v19, timeZone:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 108
    .local v18, textAlign:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 110
    .local v22, zoomlevel:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 112
    .local v20, x_latitude:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, y_longitude:[Ljava/lang/String;
    const/4 v10, -0x1

    .line 119
    .local v10, nationalFlag:I
    const/4 v0, 0x0

    .line 121
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v1, v12

    sput v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    .line 123
    sget v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    new-array v1, v1, [Lcom/sec/android/app/clockpackage/worldclock/City;

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 125
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a2
    sget v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    if-ge v7, v1, :cond_142

    .line 127
    aget-object v1, v22, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 129
    .local v5, zoomlv:I
    aget-object v1, v18, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 131
    .local v6, textal:I
    aget-object v1, v20, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 133
    .local v8, latitude:F
    aget-object v1, v21, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 135
    .local v9, longitude:F
    aget-object v1, v17, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 141
    .local v16, mapindex:I
    const-string v1, "800x480"

    const-string v2, "1280x800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    const-string v1, "800x480"

    const-string v2, "1280x720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    const-string v1, "GT-I9100"

    const-string v2, "GT-I9221"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    const-string v1, "GT-I9100"

    const-string v2, "GT-I9220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    const-string v1, "GT-I9100"

    const-string v2, "GT-I9228"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 142
    :cond_10a
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getFlagResourceID(I)I

    move-result v10

    .line 144
    :cond_10e
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    aget-object v1, v12, v7

    aget-object v2, v14, v16

    aget-object v3, v19, v7

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/clockpackage/worldclock/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFFI)V

    .line 152
    .restart local v0       #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v12, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v14, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v0, v1, v7

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a2

    .line 159
    .end local v5           #zoomlv:I
    .end local v6           #textal:I
    .end local v8           #latitude:F
    .end local v9           #longitude:F
    .end local v16           #mapindex:I
    :cond_142
    return-void
.end method

.method public static loadCitiesID(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 192
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-eqz v6, :cond_c

    .line 194
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 196
    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    .line 200
    :cond_c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, cityname:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, maptables:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, countries:[Ljava/lang/String;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, Salescode:Ljava/lang/String;
    const-string v6, "ARB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "HAJ"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "DAM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 213
    :cond_52
    const/16 v6, 0x21

    new-instance v7, Ljava/lang/String;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 218
    :cond_5d
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5e
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    array-length v6, v6

    if-ge v3, v6, :cond_94

    .line 220
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 225
    .local v4, mapindex:I
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 230
    .end local v4           #mapindex:I
    :cond_94
    return-void
.end method

.method public static removeCity()V
    .registers 0

    .prologue
    .line 57
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->unloadCities()V

    .line 59
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->unloadCitiesID()V

    .line 61
    return-void
.end method

.method public static setupCityListByGMT()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;

    invoke-direct {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;-><init>()V

    .line 411
    .local v2, com:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/clockpackage/worldclock/City;>;"
    sget-object v7, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    invoke-static {v7, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 415
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v5, :cond_91

    aget-object v1, v0, v3

    .line 417
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v7, "800x480"

    const-string v8, "1280x800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string v7, "800x480"

    const-string v8, "1280x720"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9221"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9220"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9228"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 430
    :cond_61
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v10

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getNationalFlag()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 432
    :cond_7c
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 436
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_91
    return-object v4
.end method

.method public static setupCityListByName()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v2

    .line 449
    .local v2, city:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_86

    aget-object v1, v0, v3

    .line 455
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v7, "800x480"

    const-string v8, "1280x800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    const-string v7, "800x480"

    const-string v8, "1280x720"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9221"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9220"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9228"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 464
    :cond_5a
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v10

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getNationalFlag()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 466
    :cond_75
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 475
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_86
    return-object v4
.end method

.method public static unloadCities()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 167
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 184
    .local v0, idxCityRawOffset:I
    :goto_5
    return-void

    .line 173
    .end local v0           #idxCityRawOffset:I
    :cond_6
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 177
    const/4 v0, 0x0

    .restart local v0       #idxCityRawOffset:I
    :goto_e
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 179
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 182
    :cond_1a
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    goto :goto_5
.end method

.method public static unloadCitiesID()V
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 248
    :goto_4
    return-void

    .line 244
    :cond_5
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    goto :goto_4
.end method
