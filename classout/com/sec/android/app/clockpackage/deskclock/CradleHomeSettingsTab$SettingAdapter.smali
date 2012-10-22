.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleHomeSettingsTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Context;ILjava/util/List;)V
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
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    .line 1205
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1206
    iput p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->mResourceId:I

    .line 1207
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1080
    const/16 v20, 0x0

    .line 1083
    .local v20, todoView:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_ca

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 1086
    .local v21, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->mResourceId:I

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

    .line 1092
    .end local v21           #vi:Landroid/view/LayoutInflater;
    .restart local v20       #todoView:Landroid/widget/RelativeLayout;
    :goto_26
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 1094
    .local v12, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    if-eqz v12, :cond_1c9

    .line 1095
    const v22, 0x7f0e00dc

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1097
    .local v15, mainText:Landroid/widget/TextView;
    const v22, 0x7f0e00de

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1100
    .local v19, subText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    if-nez v22, :cond_67

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v23, v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1105
    :cond_67
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_d0

    .line 1106
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1107
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1113
    :goto_7d
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mSubtiteVisibled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1ca

    .line 1114
    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09003f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 1118
    .local v9, height:I
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v13, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1121
    .local v13, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x0

    .line 1122
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/widget/RelativeLayout$LayoutParams;

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
    :goto_bb
    if-ge v10, v14, :cond_e1

    aget v18, v4, v10

    .line 1123
    .local v18, rule:I
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count:I
    .restart local v7       #count:I
    move/from16 v0, v18

    invoke-virtual {v13, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1122
    add-int/lit8 v10, v10, 0x1

    move v8, v7

    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_bb

    .end local v4           #arr$:[I
    .end local v8           #count:I
    .end local v9           #height:I
    .end local v10           #i$:I
    .end local v12           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v13           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #len$:I
    .end local v15           #mainText:Landroid/widget/TextView;
    .end local v18           #rule:I
    .end local v19           #subText:Landroid/widget/TextView;
    :cond_ca
    move-object/from16 v20, p2

    .line 1089
    check-cast v20, Landroid/widget/RelativeLayout;

    goto/16 :goto_26

    .line 1109
    .restart local v12       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .restart local v15       #mainText:Landroid/widget/TextView;
    .restart local v19       #subText:Landroid/widget/TextView;
    :cond_d0
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1110
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_7d

    .line 1125
    .restart local v4       #arr$:[I
    .restart local v8       #count:I
    .restart local v9       #height:I
    .restart local v10       #i$:I
    .restart local v13       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #len$:I
    :cond_e1
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090040

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1130
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    .end local v4           #arr$:[I
    .end local v8           #count:I
    .end local v9           #height:I
    .end local v10           #i$:I
    .end local v13           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #len$:I
    :goto_100
    if-eqz v15, :cond_10b

    .line 1138
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    :cond_10b
    if-eqz v19, :cond_118

    .line 1142
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    :cond_118
    const v22, 0x7f0e00e0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    .line 1147
    .local v5, box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    const v22, 0x7f0e00df

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1149
    .local v11, imageView:Landroid/widget/ImageView;
    const v22, 0x7f0e00e1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1151
    .local v16, moreArrowView:Landroid/widget/ImageView;
    const v22, 0x7f0e00dd

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1155
    .local v6, checkboxarrowView:Landroid/widget/ImageView;
    if-eqz v11, :cond_162

    .line 1157
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getToggleButtonBackVisible()Z

    move-result v22

    if-nez v22, :cond_1eb

    .line 1158
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1159
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    :cond_162
    :goto_162
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getMoreArrowImageVisible()Z

    move-result v22

    if-eqz v22, :cond_202

    .line 1168
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1169
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    :goto_178
    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20d

    .line 1176
    const-string v22, "CradleHomeSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check box is true "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    .line 1178
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1179
    iget-boolean v0, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mStateChecked:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setChecked(Z)V

    .line 1180
    move/from16 v17, p1

    .line 1181
    .local v17, myPosition:I
    new-instance v22, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;I)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    .end local v5           #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .end local v6           #checkboxarrowView:Landroid/widget/ImageView;
    .end local v11           #imageView:Landroid/widget/ImageView;
    .end local v15           #mainText:Landroid/widget/TextView;
    .end local v16           #moreArrowView:Landroid/widget/ImageView;
    .end local v17           #myPosition:I
    .end local v19           #subText:Landroid/widget/TextView;
    :cond_1c9
    :goto_1c9
    return-object v20

    .line 1132
    .restart local v15       #mainText:Landroid/widget/TextView;
    .restart local v19       #subText:Landroid/widget/TextView;
    :cond_1ca
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_100

    .line 1161
    .restart local v5       #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .restart local v6       #checkboxarrowView:Landroid/widget/ImageView;
    .restart local v11       #imageView:Landroid/widget/ImageView;
    .restart local v16       #moreArrowView:Landroid/widget/ImageView;
    :cond_1eb
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1162
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1163
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_162

    .line 1171
    :cond_202
    const/16 v22, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_178

    .line 1196
    :cond_20d
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    goto :goto_1c9
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 1074
    .local v0, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->mEnabled:Z

    return v1
.end method
