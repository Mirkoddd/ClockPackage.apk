.class public Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ENG:Z = false

.field private static final MAXZOOMLEVEL:I = 0x4

.field private static final mBuildboardMinHeight:I = 0x0

.field private static final mBuildboardMinWidth:I = 0x0

.field private static mCity:Ljava/lang/String; = null

.field private static mCountry:Ljava/lang/String; = null

.field static final mMaxCities:I = 0x135

.field private static mSelectedTextSize:I = 0x0

.field private static mTextSize:I = 0x0

.field private static mZoomSt:I = 0x0

.field static final mfEventTimezoneSet:I = 0x1

.field static final mfEventZoomChange:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanceledRequestHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityChangedSelectionHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

.field private mCitySpotBmp:Landroid/graphics/Bitmap;

.field private mCitySpotBmpUp:Landroid/graphics/Bitmap;

.field private mCitySpotSelBmp:Landroid/graphics/Bitmap;

.field private mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

.field private mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

.field private mCityStopTzSelBmp:Landroid/graphics/Bitmap;

.field protected mDpID:Ljava/lang/String;

.field private mIsAsyncHandling:Z

.field private mLastEventBeforeRefreshContent:I

.field private mLastSelTz:Ljava/lang/String;

.field private mLatAngle:I

.field private final mLock:Ljava/lang/Object;

.field private mMainActivity:Landroid/app/Activity;

.field private mPriorityRequestCount:[I

.field private mRequestHandler:Landroid/os/Handler;

.field private mRequestHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:I

.field private mResponseHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

.field private mSelTextColor:I

.field private mSelTz:Ljava/lang/String;

.field private mTextColor:I

.field private mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

.field private mTzTextColor:I

.field private mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

.field private mZoomLevel:I

.field private mapCountryToFlag:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mfDefaultImage:Ljava/lang/String;

.field protected mfDefaultImageReflection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->$assertionsDisabled:Z

    .line 31
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_24

    :goto_15
    sput-boolean v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->DEBUG_ENG:Z

    .line 39
    sput v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    .line 57
    const/16 v0, 0x10

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextSize:I

    .line 58
    const/16 v0, 0x1c

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelectedTextSize:I

    return-void

    :cond_22
    move v0, v2

    .line 29
    goto :goto_b

    :cond_24
    move v1, v2

    .line 31
    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x135

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "Ui3dDP"

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->TAG:Ljava/lang/String;

    .line 40
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 41
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 69
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    .line 71
    new-array v1, v5, [Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    .line 73
    new-instance v1, Ljava/lang/String;

    const-string v2, "dp_cities"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 77
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    .line 78
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    .line 79
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    .line 80
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    .line 82
    iput-boolean v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    .line 83
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 84
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    .line 90
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6c
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 94
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    aput v3, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 97
    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    if-ge v0, v5, :cond_8a

    .line 98
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-direct {v2, p0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 100
    :cond_8a
    return-void
.end method

.method private CloseHandlerThread()V
    .registers 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 126
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 129
    :cond_13
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected static GetDefaultImageBuffer(Ljava/lang/String;[BIII)V
    .registers 22
    .parameter "filename"
    .parameter "destBuf"
    .parameter "width"
    .parameter "height"
    .parameter "destImageFormat"

    .prologue
    .line 531
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 533
    .local v4, bmpNew:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_b1

    .line 534
    move-object v3, v4

    .line 536
    .local v3, bitmapSrc:Landroid/graphics/Bitmap;
    invoke-static/range {p4 .. p4}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 537
    .local v5, cfg:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    if-eq v14, v5, :cond_19

    .line 538
    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 539
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 542
    :cond_19
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 543
    .local v7, h:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 545
    .local v13, w:I
    const/4 v2, 0x0

    .line 546
    .local v2, bitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p3

    if-ne v7, v0, :cond_2a

    move/from16 v0, p2

    if-eq v13, v0, :cond_a7

    .line 547
    :cond_2a
    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 551
    :goto_33
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 552
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 553
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    .line 555
    .local v12, rowSize:I
    const-string v14, "DPM:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The default image width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", the image Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    mul-int v14, v12, v7

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 558
    .local v9, imageBytesBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 559
    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 561
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 562
    .local v6, curPos:I
    const-string v14, "DPM:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current Position = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 566
    add-int/lit8 v14, v7, -0x1

    mul-int v11, v14, v12

    .line 567
    .local v11, posSrc:I
    const/4 v10, 0x0

    .line 569
    .local v10, posDest:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_97
    if-ge v8, v7, :cond_a9

    .line 570
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v11, v0, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    sub-int/2addr v11, v12

    .line 572
    add-int/2addr v10, v12

    .line 569
    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    .line 549
    .end local v6           #curPos:I
    .end local v8           #i:I
    .end local v9           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #posDest:I
    .end local v11           #posSrc:I
    .end local v12           #rowSize:I
    :cond_a7
    move-object v2, v3

    goto :goto_33

    .line 575
    .restart local v6       #curPos:I
    .restart local v8       #i:I
    .restart local v9       #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .restart local v10       #posDest:I
    .restart local v11       #posSrc:I
    .restart local v12       #rowSize:I
    :cond_a9
    if-eq v2, v3, :cond_ae

    .line 576
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    :cond_ae
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 579
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapSrc:Landroid/graphics/Bitmap;
    .end local v5           #cfg:Landroid/graphics/Bitmap$Config;
    .end local v6           #curPos:I
    .end local v7           #h:I
    .end local v8           #i:I
    .end local v9           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #posDest:I
    .end local v11           #posSrc:I
    .end local v12           #rowSize:I
    .end local v13           #w:I
    :cond_b1
    return-void
.end method

.method private GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    .registers 16
    .parameter "request"

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 420
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetCount()I

    move-result v6

    if-ge v0, v6, :cond_14

    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    if-gez v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 421
    :cond_14
    iput-boolean v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    .line 485
    :cond_16
    :goto_16
    return-object p1

    .line 425
    :cond_17
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    if-nez v0, :cond_44

    .line 426
    const-string v0, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "======= ERROR : field index ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") NOT exists in MAP to string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-boolean v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    goto :goto_16

    .line 432
    :cond_44
    const/4 v4, 0x0

    .line 434
    .local v4, bInSelTz:Z
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    .line 435
    .local v2, country:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    .line 437
    .local v1, city:Ljava/lang/String;
    const/4 v3, 0x0

    .line 439
    .local v3, bCitySelected:Z
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-boolean v3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 441
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 443
    .local v11, gmt:Ljava/lang/String;
    if-nez v11, :cond_d9

    .line 444
    const-string v0, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Warning : GMT For Field Index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Not Found in mGMT[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_88
    :goto_88
    const/4 v10, 0x1

    .line 450
    .local v10, bArrowDown:Z
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8f

    .line 451
    const/4 v10, 0x0

    .line 454
    :cond_8f
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    sub-int v9, v0, v6

    .line 457
    .local v9, x_ArrowOffset:I
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    if-lez v0, :cond_9e

    .line 458
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v9, v0

    .line 460
    :cond_9e
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    if-le v9, v0, :cond_a4

    .line 461
    iget v9, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 463
    :cond_a4
    if-gez v9, :cond_a7

    .line 464
    const/4 v9, 0x0

    .line 467
    :cond_a7
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeGetBufferForImage(III)[B

    move-result-object v5

    .line 469
    .local v5, imageBuf:[B
    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CreateBitmapFromText(Ljava/lang/String;Ljava/lang/String;ZZ[BIILandroid/graphics/Bitmap$Config;IZ)Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;

    move-result-object v12

    .line 476
    .local v12, result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    iget v0, v12, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    iput v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 477
    iget v0, v12, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    iput v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 478
    iput-boolean v13, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    .line 480
    if-eqz v5, :cond_16

    .line 481
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-virtual {p0, v0, v6, v7, v8}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeCopyBufferWithImage(IIII)V

    goto/16 :goto_16

    .line 445
    .end local v5           #imageBuf:[B
    .end local v9           #x_ArrowOffset:I
    .end local v10           #bArrowDown:Z
    .end local v12           #result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    :cond_d9
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v13, :cond_88

    .line 446
    const/4 v4, 0x1

    goto :goto_88
.end method

.method protected static GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z
    .registers 36
    .parameter "bmp"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 841
    if-nez p0, :cond_5

    .line 842
    const/16 v27, 0x0

    .line 916
    :goto_4
    return v27

    .line 844
    :cond_5
    sub-int v24, p2, p5

    .line 845
    .local v24, wantedWidth:I
    sub-int v23, p3, p6

    .line 847
    .local v23, wantedHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 848
    .local v25, widthReal:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 850
    .local v8, heightReal:I
    move/from16 v22, v24

    .line 851
    .local v22, wMin:I
    move/from16 v7, v23

    .line 852
    .local v7, hMin:I
    const/16 v16, 0x0

    .line 853
    .local v16, offsetW:I
    const/4 v13, 0x0

    .line 854
    .local v13, offsetH:I
    const/4 v15, 0x0

    .line 855
    .local v15, offsetNewW:I
    const/4 v14, 0x0

    .line 856
    .local v14, offsetNewH:I
    const/16 v26, 0x0

    .local v26, widthResult:I
    const/4 v9, 0x0

    .line 858
    .local v9, heightResult:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    div-float v5, v27, v28

    .line 859
    .local v5, aspectR:F
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    move/from16 v0, v23

    if-eq v8, v0, :cond_66

    .line 860
    :cond_31
    move/from16 v26, v24

    .line 861
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v27, v5

    move/from16 v0, v27

    float-to-int v9, v0

    .line 863
    move/from16 v0, v23

    if-ge v9, v0, :cond_4d

    .line 864
    move/from16 v9, v23

    .line 865
    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v5

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 868
    :cond_4d
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 869
    .local v21, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 870
    move-object/from16 p0, v21

    .line 871
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 872
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 875
    .end local v21           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_66
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_dd

    .line 876
    move/from16 v22, v25

    .line 877
    const/16 v16, 0x0

    .line 878
    sub-int v27, v24, v25

    div-int/lit8 v27, v27, 0x2

    add-int v15, v27, p5

    .line 885
    :goto_76
    move/from16 v0, v23

    if-le v0, v8, :cond_e6

    .line 886
    move v7, v8

    .line 887
    const/4 v13, 0x0

    .line 888
    sub-int v27, v23, v8

    div-int/lit8 v27, v27, 0x2

    add-int v14, v27, p6

    .line 895
    :goto_82
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v20

    .line 896
    .local v20, rowBytes:I
    div-int v12, v20, v25

    .line 897
    .local v12, numBytesInPixel:I
    add-int v27, v24, p5

    mul-int v11, v27, v12

    .line 899
    .local v11, newRowBytes:I
    mul-int v27, v20, v8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 901
    .local v17, pixels:[B
    mul-int v27, v20, v8

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 902
    .local v6, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 903
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 904
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 905
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 906
    add-int v27, v13, v7

    add-int/lit8 v27, v27, -0x1

    mul-int v27, v27, v25

    add-int v27, v27, v16

    mul-int v19, v27, v12

    .line 907
    .local v19, posSrc:I
    mul-int v27, p2, v14

    add-int v27, v27, v15

    mul-int v18, v27, v12

    .line 908
    .local v18, posDest:I
    mul-int v22, v22, v12

    .line 910
    move v10, v13

    .local v10, i:I
    :goto_c7
    if-ge v10, v7, :cond_ef

    .line 911
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    sub-int v19, v19, v20

    .line 913
    add-int v18, v18, v11

    .line 910
    add-int/lit8 v10, v10, 0x1

    goto :goto_c7

    .line 880
    .end local v6           #bb:Ljava/nio/ByteBuffer;
    .end local v10           #i:I
    .end local v11           #newRowBytes:I
    .end local v12           #numBytesInPixel:I
    .end local v17           #pixels:[B
    .end local v18           #posDest:I
    .end local v19           #posSrc:I
    .end local v20           #rowBytes:I
    :cond_dd
    move/from16 v22, v24

    .line 881
    sub-int v27, v25, v24

    div-int/lit8 v16, v27, 0x2

    .line 882
    move/from16 v15, p5

    goto :goto_76

    .line 890
    :cond_e6
    move/from16 v7, v23

    .line 891
    sub-int v27, v8, v23

    div-int/lit8 v13, v27, 0x2

    .line 892
    move/from16 v14, p6

    goto :goto_82

    .line 915
    .restart local v6       #bb:Ljava/nio/ByteBuffer;
    .restart local v10       #i:I
    .restart local v11       #newRowBytes:I
    .restart local v12       #numBytesInPixel:I
    .restart local v17       #pixels:[B
    .restart local v18       #posDest:I
    .restart local v19       #posSrc:I
    .restart local v20       #rowBytes:I
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 916
    const/16 v27, 0x1

    goto/16 :goto_4
.end method

.method protected static GetImageBuffer(Ljava/lang/String;[BIIIII)Z
    .registers 16
    .parameter "filename"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v1, 0x0

    .line 922
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 924
    .local v7, bmpNew:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_23

    .line 925
    move-object v0, v7

    .line 927
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {p4}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 928
    .local v8, cfg:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eq v2, v8, :cond_19

    .line 929
    invoke-virtual {v7, v8, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_19
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 933
    invoke-static/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->_GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z

    move-result v1

    .line 937
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #cfg:Landroid/graphics/Bitmap$Config;
    :cond_23
    return v1
.end method

.method private IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z
    .registers 11
    .parameter "request"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 371
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-boolean v6, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    if-nez v6, :cond_e

    .line 410
    :cond_d
    :goto_d
    return v4

    .line 376
    :cond_e
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v4, :cond_d

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, bInSelTz:Z
    const/4 v1, 0x0

    .line 383
    .local v1, bInLastSelTz:Z
    const/4 v0, 0x0

    .line 385
    .local v0, bCitySelected:Z
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-boolean v0, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 388
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-eq v6, v8, :cond_2f

    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-nez v6, :cond_37

    .line 390
    :cond_2f
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-ne v6, v8, :cond_37

    if-nez v0, :cond_37

    move v4, v5

    .line 391
    goto :goto_d

    .line 395
    :cond_37
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-object v3, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 397
    .local v3, gmt:Ljava/lang/String;
    if-nez v3, :cond_6d

    .line 398
    const-string v6, "Ui3dDP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Warning : GMT For Field Index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Not Found in mGMT[]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_61
    :goto_61
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-ne v6, v4, :cond_d

    if-nez v2, :cond_69

    if-eqz v1, :cond_6b

    :cond_69
    if-ne v0, v4, :cond_d

    :cond_6b
    move v4, v5

    .line 407
    goto :goto_d

    .line 399
    :cond_6d
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_77

    .line 400
    const/4 v2, 0x1

    goto :goto_61

    .line 401
    :cond_77
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_61

    .line 402
    const/4 v1, 0x1

    goto :goto_61
.end method

.method protected static _GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z
    .registers 23
    .parameter "_bmp"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 786
    if-nez p0, :cond_4

    .line 787
    const/4 v14, 0x0

    .line 836
    :goto_3
    return v14

    .line 790
    :cond_4
    const/4 v2, 0x0

    .line 791
    .local v2, bReleaseBitmap:Z
    move-object/from16 v4, p0

    .line 793
    .local v4, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v14, v15, :cond_18

    .line 794
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 795
    .local v5, bmpNew:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 796
    move-object v4, v5

    .line 799
    .end local v5           #bmpNew:Landroid/graphics/Bitmap;
    :cond_18
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 800
    .local v13, widthReal:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 802
    .local v6, heightReal:I
    move/from16 v0, p2

    if-ne v13, v0, :cond_28

    move/from16 v0, p3

    if-eq v6, v0, :cond_3b

    .line 803
    :cond_28
    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 806
    .local v12, scaledBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_36

    .line 807
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 810
    :cond_36
    if-nez v12, :cond_3a

    .line 811
    const/4 v14, 0x0

    goto :goto_3

    .line 814
    :cond_3a
    move-object v4, v12

    .line 817
    .end local v12           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_3b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    .line 818
    .local v11, rowBytes:I
    mul-int v14, v11, p3

    new-array v8, v14, [B

    .line 819
    .local v8, pixels:[B
    mul-int v14, v11, p3

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 820
    .local v3, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 821
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 822
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 823
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 825
    mul-int v14, v11, p3

    sub-int v10, v14, v11

    .line 826
    .local v10, posSrc:I
    const/4 v9, 0x0

    .line 828
    .local v9, posDest:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_60
    move/from16 v0, p3

    if-ge v7, v0, :cond_6e

    .line 829
    move-object/from16 v0, p1

    invoke-static {v8, v10, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    sub-int/2addr v10, v11

    .line 831
    add-int/2addr v9, v11

    .line 828
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 834
    :cond_6e
    if-eqz v2, :cond_73

    .line 835
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 836
    :cond_73
    const/4 v14, 0x1

    goto :goto_3
.end method

.method static synthetic access$1100(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CloseHandlerThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    return-object v0
.end method


# virtual methods
.method public AddCity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "city"
    .parameter "country"
    .parameter "gmt"

    .prologue
    .line 955
    const/16 v0, 0x135

    if-ge p1, v0, :cond_30

    .line 956
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_7
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    .line 960
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 961
    :cond_29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p4, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 962
    :cond_2f
    monitor-exit v1

    .line 964
    :cond_30
    return-void

    .line 962
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public AddCountryFlag(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "ContryName"
    .parameter "countryFlag"

    .prologue
    .line 984
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    monitor-exit v1

    .line 987
    return-void

    .line 986
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public AttachActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "act"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 105
    return-void
.end method

.method public CancelRequest(I)Z
    .registers 7
    .parameter "requestId"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_3
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 190
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-nez v0, :cond_1d

    .line 191
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_1a
    monitor-exit v2

    .line 197
    const/4 v1, 0x1

    return v1

    .line 193
    :cond_1d
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    iget-object v3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v3}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v3

    aget v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v3

    goto :goto_1a

    .line 195
    .end local v0           #response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public Create()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeCreate(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public CreateBitmapFromText(Ljava/lang/String;Ljava/lang/String;ZZ[BIILandroid/graphics/Bitmap$Config;IZ)Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    .registers 39
    .parameter "text"
    .parameter "country"
    .parameter "bSelected"
    .parameter "bInSelectedTz"
    .parameter "dstBuf"
    .parameter "dstBufWidth"
    .parameter "dstBufHeight"
    .parameter "format"
    .parameter "x_Arrowoffset"
    .parameter "bArrowDown"

    .prologue
    .line 584
    new-instance v18, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    .line 585
    .local v18, result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 592
    .local v12, color:I
    if-eqz p3, :cond_164

    .line 593
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    .line 600
    :cond_17
    :goto_17
    if-eqz p10, :cond_16c

    .line 601
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmp:Landroid/graphics/Bitmap;

    .line 602
    .local v9, citySpotBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmp:Landroid/graphics/Bitmap;

    .line 603
    .local v10, citySpotSelBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityStopTzSelBmp:Landroid/graphics/Bitmap;

    .line 611
    .local v11, cityStopTzSelBmp:Landroid/graphics/Bitmap;
    :goto_25
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 616
    .local v19, textPaint:Landroid/graphics/Paint;
    sget v24, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 617
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 618
    sget-object v24, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 619
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 621
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 622
    const/high16 v24, 0x4000

    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    const/high16 v27, -0x100

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 625
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_87

    .line 626
    sget v24, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelectedTextSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 630
    :cond_87
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 631
    .local v22, textRect:Landroid/graphics/Rect;
    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 635
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 636
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 638
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    if-gez v24, :cond_c3

    .line 639
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 642
    :cond_c3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    if-gez v24, :cond_d3

    .line 643
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 648
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    .line 649
    .local v13, countryFlag:Landroid/graphics/Bitmap;
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_185

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_185

    if-eqz v10, :cond_185

    if-eqz v13, :cond_185

    .line 651
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 652
    .local v5, FlagImageHeight:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 654
    .local v6, FlagImageWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    add-int/lit8 v23, v24, 0x2

    .line 656
    .local v23, txtHeight:I
    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 657
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v6, :cond_17a

    .line 658
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    add-int/lit8 v25, v6, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 668
    .end local v5           #FlagImageHeight:I
    .end local v6           #FlagImageWidth:I
    .end local v23           #txtHeight:I
    :cond_137
    :goto_137
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x3

    add-int/lit8 v24, v24, 0x4

    and-int/lit8 v24, v24, -0x4

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 669
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x3

    and-int/lit8 v24, v24, -0x4

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 672
    if-nez p5, :cond_19c

    .line 673
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->isSucceeded:Z

    .line 781
    :goto_163
    return-object v18

    .line 595
    .end local v9           #citySpotBmp:Landroid/graphics/Bitmap;
    .end local v10           #citySpotSelBmp:Landroid/graphics/Bitmap;
    .end local v11           #cityStopTzSelBmp:Landroid/graphics/Bitmap;
    .end local v13           #countryFlag:Landroid/graphics/Bitmap;
    .end local v19           #textPaint:Landroid/graphics/Paint;
    .end local v22           #textRect:Landroid/graphics/Rect;
    :cond_164
    if-eqz p4, :cond_17

    .line 596
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    goto/16 :goto_17

    .line 605
    :cond_16c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmpUp:Landroid/graphics/Bitmap;

    .line 606
    .restart local v9       #citySpotBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

    .line 607
    .restart local v10       #citySpotSelBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

    .restart local v11       #cityStopTzSelBmp:Landroid/graphics/Bitmap;
    goto/16 :goto_25

    .line 660
    .restart local v5       #FlagImageHeight:I
    .restart local v6       #FlagImageWidth:I
    .restart local v13       #countryFlag:Landroid/graphics/Bitmap;
    .restart local v19       #textPaint:Landroid/graphics/Paint;
    .restart local v22       #textRect:Landroid/graphics/Rect;
    .restart local v23       #txtHeight:I
    :cond_17a
    mul-int/lit8 v24, v6, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    goto :goto_137

    .line 663
    .end local v5           #FlagImageHeight:I
    .end local v6           #FlagImageWidth:I
    .end local v23           #txtHeight:I
    :cond_185
    if-eqz v10, :cond_137

    .line 664
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int/lit8 v25, v25, 0x6

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    goto :goto_137

    .line 678
    :cond_19c
    invoke-static/range {p6 .. p8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 679
    .local v16, img:Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 682
    const/16 v17, 0x0

    .line 683
    .local v17, nTriangleImageWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_26b

    .line 684
    if-eqz v9, :cond_267

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 692
    :goto_1bb
    div-int/lit8 v24, v17, 0x2

    sub-int p9, p9, v24

    .line 695
    if-gez p9, :cond_1c3

    .line 696
    const/16 p9, 0x0

    .line 699
    :cond_1c3
    add-int v24, p9, v17

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1d9

    .line 700
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    sub-int p9, v24, v17

    .line 703
    :cond_1d9
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 706
    .local v8, c:Landroid/graphics/Canvas;
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e5

    if-eqz v10, :cond_2e5

    .line 707
    const/16 v21, 0x0

    .line 708
    .local v21, textPosY:I
    const/4 v7, 0x0

    .line 711
    .local v7, arrowPosY:I
    if-eqz v13, :cond_2a6

    .line 712
    if-eqz p10, :cond_28b

    .line 713
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v21

    .line 714
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x1

    .line 720
    :goto_209
    const/16 v20, 0x0

    .line 721
    .local v20, textPosX:I
    const/4 v14, 0x0

    .line 723
    .local v14, flagPosX:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    div-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    move/from16 v0, p9

    move/from16 v1, v24

    if-lt v0, v1, :cond_298

    .line 724
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    add-int/lit8 v20, v24, 0x2

    .line 729
    :goto_220
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 732
    int-to-float v0, v14

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 733
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 777
    .end local v14           #flagPosX:I
    .end local v20           #textPosX:I
    :cond_254
    :goto_254
    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 778
    .local v15, imageBytesBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 780
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->isSucceeded:Z

    goto/16 :goto_163

    .line 684
    .end local v7           #arrowPosY:I
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v15           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v21           #textPosY:I
    :cond_267
    const/16 v17, 0x0

    goto/16 :goto_1bb

    .line 685
    :cond_26b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_280

    .line 686
    if-eqz v10, :cond_27d

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    :goto_27b
    goto/16 :goto_1bb

    :cond_27d
    const/16 v17, 0x0

    goto :goto_27b

    .line 688
    :cond_280
    if-eqz v11, :cond_288

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    :goto_286
    goto/16 :goto_1bb

    :cond_288
    const/16 v17, 0x0

    goto :goto_286

    .line 716
    .restart local v7       #arrowPosY:I
    .restart local v8       #c:Landroid/graphics/Canvas;
    .restart local v21       #textPosY:I
    :cond_28b
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 717
    const/4 v7, 0x0

    goto/16 :goto_209

    .line 726
    .restart local v14       #flagPosX:I
    .restart local v20       #textPosX:I
    :cond_298
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    sub-int v14, v24, v25

    goto/16 :goto_220

    .line 740
    .end local v14           #flagPosX:I
    .end local v20           #textPosX:I
    :cond_2a6
    if-eqz p10, :cond_2d9

    .line 741
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v21, v24, 0x2

    .line 742
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x4

    .line 748
    :goto_2b4
    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 749
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 744
    :cond_2d9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 745
    const/4 v7, 0x0

    goto :goto_2b4

    .line 755
    .end local v7           #arrowPosY:I
    .end local v21           #textPosY:I
    :cond_2e5
    if-nez p10, :cond_2e9

    if-nez v9, :cond_326

    .line 757
    :cond_2e9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v21, v24, 0x2

    .line 758
    .restart local v21       #textPosY:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x4

    .line 765
    .restart local v7       #arrowPosY:I
    :goto_2f5
    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_332

    if-eqz v9, :cond_332

    .line 769
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 760
    .end local v7           #arrowPosY:I
    .end local v21           #textPosY:I
    :cond_326
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 761
    .restart local v21       #textPosY:I
    const/4 v7, 0x0

    .restart local v7       #arrowPosY:I
    goto :goto_2f5

    .line 770
    :cond_332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_351

    if-eqz v10, :cond_351

    .line 771
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 772
    :cond_351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_254

    if-eqz v11, :cond_254

    .line 773
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254
.end method

.method protected DropResponse(I)V
    .registers 4
    .parameter "requestId"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    return-void
.end method

.method public GetCount()I
    .registers 2

    .prologue
    .line 518
    const/16 v0, 0x135

    return v0
.end method

.method public GetDefaultImage(IIII[B)V
    .registers 9
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageBuf"

    .prologue
    .line 304
    const-string v0, "<DataProvider>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======Enter GetDefaultImage () width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public GetFieldIndex(Ljava/lang/String;)I
    .registers 6
    .parameter "ff"

    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, fieldIndex:I
    const/16 v1, 0x135

    if-ge v0, v1, :cond_3a

    .line 175
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    .line 176
    const-string v1, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warnning :GetFieldIndex(): fieldIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "- already exists!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2e
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    .line 184
    :goto_39
    return v0

    .line 181
    :cond_3a
    const-string v1, "Ui3dDP"

    const-string v2, "Warnning :GetFieldIndex(): fieldIndex - outof range!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public GetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    return-object v0
.end method

.method public GetImage(IIIIIIIIII)Z
    .registers 15
    .parameter "row"
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "cityX2d"
    .parameter "cityY2d"
    .parameter "cityLableX2d"
    .parameter "cityLableY2d"
    .parameter "alignY"

    .prologue
    .line 490
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_3
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;-><init>()V

    .line 492
    .local v0, request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    iput p1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->row:I

    .line 493
    iput p2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    .line 494
    iput p3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 495
    iput p4, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 496
    iput p5, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    .line 497
    iput p6, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    .line 498
    iput p7, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityY2d:I

    .line 499
    iput p8, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    .line 500
    iput p9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableY2d:I

    .line 501
    iput p10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    .line 503
    invoke-direct {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 504
    invoke-direct {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    if-eqz p3, :cond_44

    if-eqz p4, :cond_44

    .line 508
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p2

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 509
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_44
    iget-boolean v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    monitor-exit v2

    return v1

    .line 514
    .end local v0           #request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public GetImageAsync(IIIIIIIIII)I
    .registers 20
    .parameter "row"
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "cityX2d"
    .parameter "cityY2d"
    .parameter "cityLableX2d"
    .parameter "cityLableY2d"
    .parameter "alignY"

    .prologue
    .line 311
    new-instance v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    invoke-direct {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;-><init>()V

    .line 312
    .local v4, request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    iput p1, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->row:I

    .line 313
    iput p2, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    .line 314
    iput p3, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 315
    iput p4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 316
    iput p5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    .line 317
    iput p6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    .line 318
    move/from16 v0, p7

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityY2d:I

    .line 319
    move/from16 v0, p8

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    .line 320
    move/from16 v0, p9

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableY2d:I

    .line 321
    move/from16 v0, p10

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    .line 323
    invoke-direct {p0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 324
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 325
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    iput v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    .line 327
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v5, v5, v6

    iget-boolean v1, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 328
    .local v1, bCitySelected:Z
    if-eqz v1, :cond_67

    .line 329
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedCity:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    .line 339
    :goto_3f
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 340
    :try_start_42
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    iget-object v7, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v7

    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 341
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_82

    .line 347
    new-instance v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    .line 348
    .local v3, handler:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    iput-object v4, v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 350
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 355
    .end local v1           #bCitySelected:Z
    .end local v3           #handler:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    :goto_66
    return v5

    .line 331
    .restart local v1       #bCitySelected:Z
    :cond_67
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v5, v5, v6

    iget-object v2, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 332
    .local v2, gmt:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7d

    .line 333
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedTZ:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    goto :goto_3f

    .line 335
    :cond_7d
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eUnselected:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    goto :goto_3f

    .line 341
    .end local v2           #gmt:Ljava/lang/String;
    :catchall_82
    move-exception v5

    :try_start_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v5

    .line 355
    .end local v1           #bCitySelected:Z
    :cond_85
    const/4 v5, 0x0

    goto :goto_66
.end method

.method protected GetImageField(ILjava/lang/String;)I
    .registers 3
    .parameter "row"
    .parameter "field"

    .prologue
    .line 526
    return p1
.end method

.method protected GetResponseHeight(I)I
    .registers 5
    .parameter "requestId"

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 1069
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-eqz v0, :cond_11

    .line 1070
    iget v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 1073
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method protected GetResponseWidth(I)I
    .registers 5
    .parameter "requestId"

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 1059
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-eqz v0, :cond_11

    .line 1060
    iget v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 1063
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public GetTimeZoneByFieldIndex(I)F
    .registers 11
    .parameter "fieldIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 243
    const-string v5, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=========== GetTimeZoneByFieldIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v5, 0x135

    if-le p1, v5, :cond_27

    .line 246
    const-string v5, "Ui3dDP"

    const-string v6, "Warnning :GetTimeZoneByFieldIndex(): fieldIndex - outof range!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 269
    :cond_26
    :goto_26
    return v1

    .line 249
    :cond_27
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v5, v5, p1

    iget-object v2, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 251
    .local v2, tz:Ljava/lang/String;
    if-eqz v2, :cond_37

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 252
    :cond_37
    const-string v4, "Ui3dDP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======= ERROR : field index ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") NOT exists in mGMT[]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/high16 v1, -0x3d38

    goto :goto_26

    .line 256
    :cond_58
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, tzStr:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 259
    .local v1, fTz:F
    array-length v5, v3

    if-le v5, v8, :cond_26

    .line 260
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x4270

    div-float v0, v5, v6

    .line 262
    .local v0, fMinutes:F
    cmpl-float v4, v1, v4

    if-lez v4, :cond_80

    .line 263
    add-float/2addr v1, v0

    goto :goto_26

    .line 265
    :cond_80
    sub-float/2addr v1, v0

    goto :goto_26
.end method

.method public IsCityExists(I)Z
    .registers 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 941
    const/16 v1, 0x135

    if-lt p1, v1, :cond_6

    .line 948
    :cond_5
    :goto_5
    return v0

    .line 944
    :cond_6
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 948
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public OnCityTouched(I)V
    .registers 6
    .parameter "fieldIndex"

    .prologue
    .line 215
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnCityTouched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 220
    :cond_31
    const-string v0, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= ERROR : field index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") NOT exists in mDisplayCity[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit v1

    .line 239
    :goto_50
    return-void

    .line 225
    :cond_51
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    .line 228
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->DEBUG_ENG:Z

    if-eqz v0, :cond_8b

    .line 229
    const-string v0, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== OnCityTouched city = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Contry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_8b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    if-eqz v0, :cond_99

    .line 232
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;

    invoke-direct {v2, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    :cond_99
    monitor-exit v1

    goto :goto_50

    :catchall_9b
    move-exception v0

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_1b .. :try_end_9d} :catchall_9b

    throw v0
.end method

.method public OnRotateChanged(I)V
    .registers 5
    .parameter "angle"

    .prologue
    .line 201
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnRotateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    .line 205
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    if-eqz v0, :cond_28

    .line 206
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    :cond_28
    return-void
.end method

.method public OnTzSelected(Ljava/lang/String;)V
    .registers 5
    .parameter "timezone"

    .prologue
    .line 273
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnTzSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method public OnZoomChanged(I)V
    .registers 5
    .parameter "zoom_level"

    .prologue
    .line 284
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnZoomChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    if-ne v0, p1, :cond_1d

    .line 301
    :cond_1c
    :goto_1c
    return-void

    .line 289
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetZoomLevel(I)V

    .line 291
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 292
    sput p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    .line 294
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    if-eqz v0, :cond_1c

    .line 295
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public ProceedAsyncRequest(I)Z
    .registers 6
    .parameter "requestId"

    .prologue
    .line 359
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 361
    .local v0, getImageHandler:Ljava/lang/Runnable;
    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    .line 362
    .local v1, res:Z
    :goto_13
    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v2, :cond_28

    .line 363
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 367
    :cond_28
    return v1

    .line 361
    .end local v1           #res:Z
    :cond_29
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public RefreshAllDPContent()V
    .registers 6

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    .local v0, arr$:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 1021
    .local v1, c:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 1020
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1023
    .end local v1           #c:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeRefreshDPContent()V

    .line 1024
    return-void
.end method

.method public RefreshSelected()V
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeRefreshDPContent()V

    .line 1017
    :cond_b
    return-void
.end method

.method public RegisterRotationListener(Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    .line 134
    return-void
.end method

.method public RegisterTouchCityListener(Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    .line 138
    return-void
.end method

.method public RegisterZoomChangedListener(Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    .line 142
    return-void
.end method

.method public Release()V
    .registers 3

    .prologue
    .line 160
    const-string v0, "Ui3dDP"

    const-string v1, " Release Data Provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetAsyncHandling(Z)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CloseHandlerThread()V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeDestroy()V

    .line 166
    return-void
.end method

.method public ResetTextColor(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1029
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 1030
    monitor-exit v1

    .line 1031
    return-void

    .line 1030
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public SendResponses()V
    .registers 9

    .prologue
    .line 1034
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1035
    :try_start_3
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-nez v4, :cond_95

    .line 1036
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1037
    .local v1, refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1038
    .local v3, responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1039
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1040
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1041
    .local v2, reqid:I
    const-string v4, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendResponses(): request id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sent."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v4, v6, v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 1043
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1044
    invoke-virtual {p0, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeSendResponse(I)V

    goto :goto_16

    .line 1053
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2           #reqid:I
    .end local v3           #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_74
    move-exception v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v4

    .line 1046
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1       #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3       #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_77
    :try_start_77
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_90

    .line 1047
    const-string v4, "Ui3dDP"

    const-string v6, "SendResponses(): mResponseHash is not empty"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_90

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1051
    :cond_90
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1053
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3           #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_77 .. :try_end_96} :catchall_74

    .line 1054
    return-void
.end method

.method public SetAsyncHandling(Z)V
    .registers 6
    .parameter "isAsync"

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    if-nez v1, :cond_25

    if-eqz p1, :cond_25

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Ui3dGetImageAsync"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v0, pictThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 118
    .end local v0           #pictThread:Landroid/os/HandlerThread;
    :cond_1d
    :goto_1d
    iput-boolean p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    .line 120
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    invoke-virtual {p0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeSetAsyncHandling(Z)V

    .line 121
    return-void

    .line 114
    :cond_25
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    if-eqz v1, :cond_1d

    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    .line 115
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d
.end method

.method public SetBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "citySpotBmp"
    .parameter "citySelBmp"
    .parameter "cityTzSelBmp"
    .parameter "citySpotBmpUp"
    .parameter "citySelBmpUp"
    .parameter "cityTzSelBmpUp"
    .parameter "flagBg"

    .prologue
    .line 146
    iput-object p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityStopTzSelBmp:Landroid/graphics/Bitmap;

    .line 147
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmp:Landroid/graphics/Bitmap;

    .line 148
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmp:Landroid/graphics/Bitmap;

    .line 150
    iput-object p6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

    .line 151
    iput-object p4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmpUp:Landroid/graphics/Bitmap;

    .line 152
    iput-object p5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method public SetSelected(IZ)V
    .registers 8
    .parameter "id"
    .parameter "bSelected"

    .prologue
    .line 992
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    array-length v2, v2

    if-lt p1, v2, :cond_6

    .line 1010
    :cond_5
    :goto_5
    return-void

    .line 996
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 998
    .local v1, field:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-boolean v0, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 999
    .local v0, bPreviouslySel:Z
    if-eq v0, p2, :cond_5

    .line 1000
    iget-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1001
    :try_start_19
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iput-boolean p2, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 1002
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_36

    .line 1006
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    if-eqz v2, :cond_5

    .line 1007
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1002
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public SetTextColor(III)V
    .registers 6
    .parameter "color"
    .parameter "selColor"
    .parameter "tzSelColor"

    .prologue
    .line 968
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_3
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 970
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    .line 971
    iput p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    .line 972
    monitor-exit v1

    .line 973
    return-void

    .line 972
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public SetZoomLevel(I)V
    .registers 4
    .parameter "level"

    .prologue
    .line 977
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 978
    :try_start_3
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 980
    monitor-exit v1

    .line 981
    return-void

    .line 980
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected native nativeCopyBufferWithImage(IIII)V
.end method

.method protected native nativeCreate(Ljava/lang/String;)V
.end method

.method protected native nativeDestroy()V
.end method

.method protected native nativeGetBufferForImage(III)[B
.end method

.method protected native nativeRefreshDPContent()V
.end method

.method protected native nativeSendResponse(I)V
.end method

.method protected native nativeSetAsyncHandling(Z)V
.end method
