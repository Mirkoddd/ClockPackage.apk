.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingItem"
.end annotation


# instance fields
.field public mDivideImageVisibled:Z

.field public mEnabled:Z

.field private mMainTitle:Ljava/lang/String;

.field public mMoreArrowImageVisibled:Z

.field public mStateChecked:Z

.field private mSubTitle:Ljava/lang/String;

.field public mSubtiteVisibled:Z

.field public mToggleButtonBackVisibled:Z

.field private mType:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    const/4 v1, 0x0

    .line 1182
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 1184
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 1185
    iput p4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    .line 1186
    iput-boolean p5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    .line 1187
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    .line 1189
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    .line 1190
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mDivideImageVisibled:Z

    .line 1191
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 1193
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreArrowImageVisible()Z
    .registers 2

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButtonBackVisible()Z
    .registers 2

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "isChecked"

    .prologue
    .line 1208
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1209
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 1211
    :cond_7
    return-void
.end method

.method public setDivideImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1219
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mDivideImageVisibled:Z

    .line 1220
    return-void
.end method

.method public setMoreArrowImageVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1223
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mMoreArrowImageVisibled:Z

    .line 1224
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "subString"

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 1197
    return-void
.end method

.method public setSubTitleVisibled(Z)V
    .registers 2
    .parameter "subtitleVisibled"

    .prologue
    .line 1204
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    .line 1205
    return-void
.end method

.method public setToggleButtonBackVisbile(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 1214
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mToggleButtonBackVisibled:Z

    .line 1215
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setDivideImageVisible(Z)V

    .line 1216
    return-void
.end method
