.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1431
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    .line 1432
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1433
    iput p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->mResourceId:I

    .line 1434
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1305
    const/16 v20, 0x0

    .line 1308
    .local v20, todoView:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_dc

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 1311
    .local v21, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->mResourceId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .end local v20           #todoView:Landroid/widget/RelativeLayout;
    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1317
    .end local v21           #vi:Landroid/view/LayoutInflater;
    .restart local v20       #todoView:Landroid/widget/RelativeLayout;
    :goto_26
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1318
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1320
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1322
    .local v12, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    if-eqz v12, :cond_1dc

    .line 1323
    const v22, 0x7f0e00dc

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1325
    .local v15, mainText:Landroid/widget/TextView;
    const v22, 0x7f0e00de

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1328
    .local v19, subText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    if-nez v22, :cond_79

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v23, v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$602(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1333
    :cond_79
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_e2

    .line 1334
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1335
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1341
    :goto_8f
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1dd

    .line 1342
    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09003f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 1346
    .local v9, height:I
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v13, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1349
    .local v13, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x0

    .line 1350
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .local v4, arr$:[I
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v8, v7

    .end local v7           #count:I
    .local v8, count:I
    :goto_cd
    if-ge v10, v14, :cond_f3

    aget v18, v4, v10

    .line 1351
    .local v18, rule:I
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count:I
    .restart local v7       #count:I
    move/from16 v0, v18

    invoke-virtual {v13, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1350
    add-int/lit8 v10, v10, 0x1

    move v8, v7

    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_cd

    .end local v4           #arr$:[I
    .end local v8           #count:I
    .end local v9           #height:I
    .end local v10           #i$:I
    .end local v12           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v13           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #len$:I
    .end local v15           #mainText:Landroid/widget/TextView;
    .end local v18           #rule:I
    .end local v19           #subText:Landroid/widget/TextView;
    :cond_dc
    move-object/from16 v20, p2

    .line 1314
    check-cast v20, Landroid/widget/RelativeLayout;

    goto/16 :goto_26

    .line 1337
    .restart local v12       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .restart local v15       #mainText:Landroid/widget/TextView;
    .restart local v19       #subText:Landroid/widget/TextView;
    :cond_e2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1338
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8f

    .line 1353
    .restart local v4       #arr$:[I
    .restart local v8       #count:I
    .restart local v9       #height:I
    .restart local v10       #i$:I
    .restart local v13       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #len$:I
    :cond_f3
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090040

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1358
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    .end local v4           #arr$:[I
    .end local v8           #count:I
    .end local v9           #height:I
    .end local v10           #i$:I
    .end local v13           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #len$:I
    :cond_112
    :goto_112
    invoke-virtual {v15}, Landroid/widget/TextView;->invalidate()V

    .line 1368
    if-eqz v15, :cond_120

    .line 1369
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    :cond_120
    if-eqz v19, :cond_12d

    .line 1373
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    :cond_12d
    const v22, 0x7f0e00e0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    .line 1378
    .local v5, box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    const v22, 0x7f0e00df

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1380
    .local v11, imageView:Landroid/widget/ImageView;
    const v22, 0x7f0e00e1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1382
    .local v16, moreArrowView:Landroid/widget/ImageView;
    const v22, 0x7f0e00dd

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1385
    .local v6, checkboxarrowView:Landroid/widget/ImageView;
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getToggleButtonBackVisible()Z

    move-result v22

    if-nez v22, :cond_20b

    .line 1386
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1387
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1394
    :goto_175
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMoreArrowImageVisible()Z

    move-result v22

    if-eqz v22, :cond_222

    .line 1395
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1396
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1401
    :goto_18b
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_22d

    .line 1403
    const-string v22, "CradleHomeSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check box is true "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    .line 1405
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1406
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setChecked(Z)V

    .line 1407
    move/from16 v17, p1

    .line 1408
    .local v17, myPosition:I
    new-instance v22, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;I)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    .end local v5           #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .end local v6           #checkboxarrowView:Landroid/widget/ImageView;
    .end local v11           #imageView:Landroid/widget/ImageView;
    .end local v15           #mainText:Landroid/widget/TextView;
    .end local v16           #moreArrowView:Landroid/widget/ImageView;
    .end local v17           #myPosition:I
    .end local v19           #subText:Landroid/widget/TextView;
    :cond_1dc
    :goto_1dc
    return-object v20

    .line 1360
    .restart local v15       #mainText:Landroid/widget/TextView;
    .restart local v19       #subText:Landroid/widget/TextView;
    :cond_1dd
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_112

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_112

    .line 1389
    .restart local v5       #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .restart local v6       #checkboxarrowView:Landroid/widget/ImageView;
    .restart local v11       #imageView:Landroid/widget/ImageView;
    .restart local v16       #moreArrowView:Landroid/widget/ImageView;
    :cond_20b
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1390
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1391
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_175

    .line 1398
    :cond_222
    const/16 v22, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_18b

    .line 1423
    :cond_22d
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    goto :goto_1dc
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1297
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1298
    .local v0, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    return v1
.end method
