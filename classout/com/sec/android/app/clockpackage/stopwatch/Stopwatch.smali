.class public Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;
.super Landroid/app/Activity;
.source "Stopwatch.java"


# static fields
.field static elapsedMillis:J

.field static elapsedMillisBefore:J

.field static elapsedMillisDiff:J

.field static hour:I

.field static hourDiff:I

.field private static lapCount:I

.field private static listItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/stopwatch/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static millis:I

.field static millisDiff:I

.field static minute:I

.field static minuteDiff:I

.field private static number:[Landroid/graphics/drawable/Drawable;

.field private static numberMini:[Landroid/graphics/drawable/Drawable;

.field private static numberViews:[Landroid/widget/ImageView;

.field private static pause:Z

.field static second:I

.field static secondDiff:I

.field private static state:I

.field private static timer:Landroid/os/CountDownTimer;


# instance fields
.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/clockpackage/stopwatch/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field buttonClickListener:Landroid/view/View$OnClickListener;

.field private buttonTouchListener:Landroid/view/View$OnTouchListener;

.field private isTouchOperation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisBefore:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z

    .line 92
    new-instance v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;-><init>(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;-><init>(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z

    return p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->pause:Z

    return v0
.end method

.method private changedBeforeBtn(Z)V
    .registers 4
    .parameter "st"

    .prologue
    .line 530
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_10

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    return-void

    .line 530
    :cond_10
    const/4 v1, 0x4

    goto :goto_c
.end method

.method private changedStartedBtn(Z)V
    .registers 6
    .parameter "st"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 538
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2c

    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2e

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 545
    return-void

    :cond_2c
    move v1, v3

    .line 538
    goto :goto_e

    :cond_2e
    move v2, v3

    .line 540
    goto :goto_1c
.end method

.method private changedStopBtn(Z)V
    .registers 6
    .parameter "st"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 551
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2c

    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2e

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 558
    return-void

    :cond_2c
    move v1, v3

    .line 551
    goto :goto_e

    :cond_2e
    move v2, v3

    .line 553
    goto :goto_1c
.end method

.method private changedStoragefullBtn(Z)V
    .registers 6
    .parameter "st"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 562
    const v0, 0x7f0e00fe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2c

    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_2e

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    return-void

    :cond_2c
    move v1, v3

    .line 562
    goto :goto_e

    :cond_2e
    move v2, v3

    .line 564
    goto :goto_1c
.end method

.method private initList()V
    .registers 5

    .prologue
    .line 276
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->listItems:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->listItems:Ljava/util/ArrayList;

    .line 279
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 280
    new-instance v1, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;

    const v2, 0x7f03002a

    sget-object v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->listItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 283
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 285
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 287
    return-void
.end method

.method private initTimeView()V
    .registers 4

    .prologue
    .line 293
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 294
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 295
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 296
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 297
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0e00f5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 298
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 299
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 300
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 301
    return-void
.end method

.method private loadDrawables()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 582
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14f

    .line 583
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    .line 584
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 585
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 586
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 587
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 588
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 589
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 590
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 591
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 592
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 593
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 595
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    .line 596
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 598
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 600
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 602
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 604
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 606
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 608
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 610
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 612
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 614
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 617
    :cond_14f
    return-void
.end method

.method private setTimer(J)V
    .registers 9
    .parameter "time"

    .prologue
    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_38

    .line 390
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsedMillis       = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_38
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_44

    .line 396
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 397
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    .line 400
    :cond_44
    new-instance v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$3;

    const-wide/16 v4, 0x2b

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$3;-><init>(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;JJ)V

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    .line 413
    return-void
.end method


# virtual methods
.method public addLap(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const v10, 0xea60

    const/16 v13, 0x3e7

    const/4 v12, 0x1

    const-wide/16 v4, 0xa

    const/4 v11, 0x0

    .line 475
    const-string v0, "Stopwatch"

    const-string v1, "addLap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v6, sb:Ljava/lang/StringBuilder;
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    sget-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    div-long/2addr v0, v4

    sget-wide v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisBefore:J

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisDiff:J

    .line 483
    sget-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisDiff:J

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hourDiff:I

    .line 484
    sget-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisDiff:J

    sget v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hourDiff:I

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v9, v0

    .line 485
    .local v9, tmp:I
    div-int v0, v9, v10

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minuteDiff:I

    .line 486
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minuteDiff:I

    mul-int/2addr v0, v10

    sub-int/2addr v9, v0

    .line 487
    div-int/lit16 v0, v9, 0x3e8

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->secondDiff:I

    .line 488
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->secondDiff:I

    mul-int/lit16 v0, v0, 0x3e8

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millisDiff:I

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v7, sb1:Ljava/lang/StringBuilder;
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hourDiff:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hourDiff:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minuteDiff:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minuteDiff:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->secondDiff:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->secondDiff:I

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsedMillisBefore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisBefore:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsedMillis       = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    sput-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisBefore:J

    .line 503
    sget-object v10, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->listItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;

    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millis:I

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millisDiff:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 511
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    if-lt v0, v13, :cond_150

    .line 512
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 513
    invoke-direct {p0, v11}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 514
    invoke-direct {p0, v11}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStartedBtn(Z)V

    .line 515
    invoke-direct {p0, v12}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStoragefullBtn(Z)V

    .line 517
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, str:Ljava/lang/String;
    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 521
    .end local v8           #str:Ljava/lang/String;
    :cond_150
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->updateTimeView()V

    .line 524
    return-void
.end method

.method public addListerner()V
    .registers 9

    .prologue
    .line 188
    const v7, 0x7f0e00f9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 189
    .local v5, start:Landroid/widget/Button;
    const v7, 0x7f0e00fa

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 190
    .local v6, stop:Landroid/widget/Button;
    const v7, 0x7f0e00fb

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 191
    .local v1, lap:Landroid/widget/Button;
    const v7, 0x7f0e00fc

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 192
    .local v4, restart:Landroid/widget/Button;
    const v7, 0x7f0e00fd

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 193
    .local v2, reset:Landroid/widget/Button;
    const v7, 0x7f0e00fe

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 194
    .local v3, resetfull:Landroid/widget/Button;
    const v7, 0x7f0e00ff

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    .local v0, labfull:Landroid/widget/Button;
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0e00f0

    const v2, 0x7f030029

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 224
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_2e

    .line 225
    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 226
    .local v1, par:Landroid/os/Parcelable;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setContentView(I)V

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initTimeView()V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initList()V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setViewState()V

    .line 231
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->addListerner()V

    .line 242
    .end local v1           #par:Landroid/os/Parcelable;
    :goto_2d
    return-void

    .line 236
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setContentView(I)V

    .line 237
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initTimeView()V

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initList()V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setViewState()V

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->addListerner()V

    goto :goto_2d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->loadDrawables()V

    .line 170
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    if-nez v0, :cond_10

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    .line 173
    :cond_10
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 575
    const/16 v0, 0x52

    if-ne v0, p1, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 576
    const/4 v0, 0x1

    .line 578
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    invoke-static {}, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->release()V

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->pause:Z

    .line 249
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->pause:Z

    .line 179
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setContentView(I)V

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initList()V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->initTimeView()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setViewState()V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->addListerner()V

    .line 184
    return-void
.end method

.method public reset(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 450
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    .line 451
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 452
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1c

    .line 453
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 455
    :cond_1c
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    .line 457
    sput v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    .line 458
    sput v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    .line 459
    sput v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    .line 460
    sput v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    .line 461
    sput v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millis:I

    .line 462
    sput-wide v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    .line 463
    sput-wide v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillisBefore:J

    .line 465
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 468
    return-void
.end method

.method public restart(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 441
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    .line 442
    const-wide/32 v0, 0x157529f6

    sget-wide v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setTimer(J)V

    .line 443
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 444
    return-void
.end method

.method public setViewState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    packed-switch v0, :pswitch_data_a2

    .line 376
    :cond_21
    :goto_21
    sget v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->lapCount:I

    const/16 v1, 0x3e7

    if-lt v0, v1, :cond_30

    .line 377
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 378
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStartedBtn(Z)V

    .line 379
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStoragefullBtn(Z)V

    .line 382
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->updateTimeView()V

    .line 383
    return-void

    .line 339
    :pswitch_34
    sget-boolean v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->pause:Z

    if-nez v0, :cond_3b

    .line 340
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->acquire(Landroid/content/Context;)V

    .line 341
    :cond_3b
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 342
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedBeforeBtn(Z)V

    .line 343
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStartedBtn(Z)V

    .line 345
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 346
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_21

    .line 351
    :pswitch_5b
    invoke-static {}, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->release()V

    .line 352
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedBeforeBtn(Z)V

    .line 353
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStartedBtn(Z)V

    .line 354
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 356
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 357
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_21

    .line 362
    :pswitch_7e
    invoke-static {}, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->release()V

    .line 363
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 364
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStoragefullBtn(Z)V

    .line 365
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedBeforeBtn(Z)V

    .line 367
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 368
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_21

    .line 337
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_34
        :pswitch_5b
        :pswitch_7e
    .end packed-switch
.end method

.method public start(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 419
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    .line 420
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->pause:Z

    .line 421
    const-wide/32 v0, 0x157529f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setTimer(J)V

    .line 422
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 423
    return-void
.end method

.method public stop(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 429
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->state:I

    .line 431
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 432
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 434
    :cond_c
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->timer:Landroid/os/CountDownTimer;

    .line 435
    return-void
.end method

.method updateTimeView()V
    .registers 9

    .prologue
    const v7, 0xea60

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 305
    sget-wide v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    const-wide/32 v3, 0x157529f6

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1b

    .line 306
    invoke-direct {p0, v5}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedBeforeBtn(Z)V

    .line 307
    invoke-direct {p0, v5}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStartedBtn(Z)V

    .line 308
    invoke-direct {p0, v6}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->changedStopBtn(Z)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->reset(Landroid/view/View;)V

    .line 312
    :cond_1b
    sget-wide v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    .line 313
    sget-wide v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 314
    .local v0, tmp:I
    div-int v1, v0, v7

    sput v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    .line 315
    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    .line 316
    div-int/lit16 v1, v0, 0x3e8

    sput v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    .line 317
    sget v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    mul-int/lit16 v1, v1, 0x3e8

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0xa

    sput v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millis:I

    .line 319
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->hour:I

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->minute:I

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->number:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->second:I

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millis:I

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberViews:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->numberMini:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->millis:I

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void
.end method
