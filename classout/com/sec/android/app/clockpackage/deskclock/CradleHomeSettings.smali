.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
.super Landroid/app/Activity;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

.field private mBrightnessChange:Z

.field private mBrightnessValue:F

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeekbarValue:I

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private mTempFile:Ljava/io/File;

.field private mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    .line 43
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSeekbarValue:I

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    .line 195
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1291
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSeekbarValue:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1444
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 1445
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_25

    .line 1446
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1447
    const-string v4, "CradleHomeSettings"

    const-string v5, "wallpaper file ok??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1453
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1454
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1456
    .local v1, height:I
    if-le v3, v1, :cond_78

    move v0, v3

    .line 1457
    .local v0, h:I
    :goto_40
    if-le v3, v1, :cond_7a

    move v2, v1

    .line 1458
    .local v2, w:I
    :goto_43
    const-string v4, "outputX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v4, "outputY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1461
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1462
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1463
    const-string v4, "noFaceDetection"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1464
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1465
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    return-void

    .end local v0           #h:I
    .end local v2           #w:I
    :cond_78
    move v0, v1

    .line 1456
    goto :goto_40

    .restart local v0       #h:I
    :cond_7a
    move v2, v3

    .line 1457
    goto :goto_43
.end method

.method private isDockSettingEnable()Z
    .registers 3

    .prologue
    .line 410
    const-string v0, "GT-I9100"

    const-string v1, "GT-I9210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "GT-I9100"

    const-string v1, "SGH-I727"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 411
    :cond_14
    const/4 v0, 0x0

    .line 412
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private onBtnCheckChanged(IZ)V
    .registers 7
    .parameter "position"
    .parameter "check"

    .prologue
    .line 1252
    const-string v1, "CradleHomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtnCheckChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1255
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_4e

    .line 1256
    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1266
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 1267
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 1289
    return-void

    .line 1258
    :cond_4e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5a

    .line 1259
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3d

    .line 1261
    :cond_5a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3d

    .line 1262
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 216
    const/4 v1, 0x6

    if-ne p1, v1, :cond_30

    .line 217
    if-ne p2, v2, :cond_2c

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v2, 0x7f0b00d1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    return-void

    .line 225
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setResult(I)V

    goto :goto_28

    .line 228
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_28

    .line 229
    if-ne p2, v2, :cond_59

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28

    .line 239
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_59
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setResult(I)V

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v4, 0x7f030018

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setContentView(I)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_brightness_value"

    const/high16 v6, 0x42b4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 74
    .local v3, value:F
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 85
    const v4, 0x7f0e00b5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    .line 87
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v4, :cond_33

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 91
    :cond_33
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    if-nez v4, :cond_43

    .line 92
    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    const v5, 0x7f030023

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    .line 96
    :cond_43
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 100
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    const/high16 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 103
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_90

    .line 177
    const-string v4, "CradleHomeSettings"

    const-string v5, "no wallpaper file??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_86
    const-string v4, "wallpaper"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 181
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_90} :catch_a0
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_90} :catch_a5

    .line 189
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_90
    :goto_90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void

    .line 182
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_a0
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_90

    .line 184
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_a5
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 15
    .parameter "id"

    .prologue
    .line 647
    const/4 v0, -0x1

    .line 650
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_12c

    .line 1166
    :pswitch_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v10

    :goto_8
    return-object v10

    .line 654
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03000f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 656
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0e006b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 660
    .local v7, seekBar:Landroid/widget/SeekBar;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v8, twalertdialog2:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00f3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 663
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 667
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_current_brightness_value"

    const/high16 v12, 0x42b4

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 670
    .local v1, currentBrightness:F
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cralde_current_seekbar_value"

    const/16 v12, -0xa

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 674
    .local v4, currentSeekBarValue:I
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    .line 677
    iget v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 680
    .local v6, progressValue:I
    const/16 v10, -0xa

    if-ne v4, v10, :cond_92

    .line 681
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 686
    :goto_5e
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 723
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;

    invoke-direct {v11, p0, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    const v10, 0x7f0b00b2

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$6;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 825
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 683
    :cond_92
    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_5e

    .line 828
    .end local v1           #currentBrightness:F
    .end local v4           #currentSeekBarValue:I
    .end local v6           #progressValue:I
    .end local v7           #seekBar:Landroid/widget/SeekBar;
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    .end local v9           #view:Landroid/view/View;
    :pswitch_96
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 829
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00c0

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 831
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_default_dock_mode"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 834
    .local v3, currentDockMode:I
    const v10, 0x7f070001

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 870
    const v10, 0x7f0b00b2

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$9;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$9;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 958
    .end local v3           #currentDockMode:I
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_c6
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 961
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00bb

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 963
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_current_clock"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 965
    .local v2, currentClock:I
    move v0, v2

    .line 968
    const v10, 0x7f070002

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v0, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1013
    const v10, 0x7f0b00b2

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$11;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$11;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1021
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 1049
    .end local v2           #currentClock:I
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_f7
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1052
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00cd

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1054
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_wallpaper_type"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1056
    .local v5, currentwallpapertype:I
    const/4 v10, 0x3

    if-ne v5, v10, :cond_10f

    .line 1057
    const/4 v5, 0x2

    .line 1060
    :cond_10f
    move v0, v5

    .line 1063
    const/high16 v10, 0x7f07

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$12;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$12;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v0, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1152
    const v10, 0x7f0b00b2

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$13;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$13;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1160
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 650
    nop

    :pswitch_data_12c
    .packed-switch 0x2
        :pswitch_f7
        :pswitch_c6
        :pswitch_4
        :pswitch_4
        :pswitch_96
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .registers 38

    .prologue
    .line 248
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 250
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    if-eqz v4, :cond_1c

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_brightness_value"

    const/high16 v8, 0x42b4

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v35

    .line 254
    .local v35, value:F
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 259
    .end local v35           #value:F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->clear()V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_wallpaper_type"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 267
    .local v36, wallpaperType:I
    const/4 v2, 0x0

    .line 268
    .local v2, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    packed-switch v36, :pswitch_data_22c

    .line 295
    :goto_32
    if-eqz v2, :cond_38

    .line 296
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 298
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_clock"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 300
    .local v30, currentView:I
    const/4 v6, 0x0

    .line 301
    .local v6, subTitle:Ljava/lang/String;
    packed-switch v30, :pswitch_data_238

    .line 316
    :goto_47
    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 318
    .local v3, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_time_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 320
    .local v31, isDisplayClock:Z
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 321
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_city"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, selectCity:Ljava/lang/String;
    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 327
    .local v7, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 329
    .local v32, isDisplayWeather:Z
    move/from16 v0, v32

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 330
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 331
    if-nez v10, :cond_a8

    .line 332
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 339
    :cond_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_statusbar"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 341
    .local v33, isHideStatusBar:Z
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, statusBar:Ljava/lang/String;
    if-eqz v33, :cond_b9

    .line 347
    :cond_b9
    const-string v14, ""

    .line 349
    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 351
    .local v11, item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 352
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 354
    const/16 v29, 0x0

    .line 355
    .local v29, color:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_icon_color"

    move/from16 v0, v29

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 356
    .local v34, sendColor:I
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, colorize_icon:Ljava/lang/String;
    new-instance v15, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 359
    .local v15, item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cralde_dock_mode_setting"

    const-string v8, "Always"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 370
    .local v22, dockSetting:Ljava/lang/String;
    new-instance v19, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 372
    .local v19, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 374
    const-string v26, ""

    .line 375
    .local v26, brightness:Ljava/lang/String;
    new-instance v23, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v28}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 377
    .local v23, item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 378
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->isDockSettingEnable()Z

    move-result v4

    if-eqz v4, :cond_185

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 405
    :cond_185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 407
    return-void

    .line 270
    .end local v3           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v6           #subTitle:Ljava/lang/String;
    .end local v7           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v10           #selectCity:Ljava/lang/String;
    .end local v11           #item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v14           #statusBar:Ljava/lang/String;
    .end local v15           #item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v18           #colorize_icon:Ljava/lang/String;
    .end local v19           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v22           #dockSetting:Ljava/lang/String;
    .end local v23           #item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v26           #brightness:Ljava/lang/String;
    .end local v29           #color:I
    .end local v30           #currentView:I
    .end local v31           #isDisplayClock:Z
    .end local v32           #isDisplayWeather:Z
    .end local v33           #isHideStatusBar:Z
    .end local v34           #sendColor:I
    :pswitch_18d
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00ce

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 273
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 277
    :pswitch_1ae
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00cf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 281
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 283
    :pswitch_1cf
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00d1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 286
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 288
    :pswitch_1f0
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 291
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 303
    .restart local v6       #subTitle:Ljava/lang/String;
    .restart local v30       #currentView:I
    :pswitch_211
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    goto/16 :goto_47

    .line 310
    :pswitch_21e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    goto/16 :goto_47

    .line 268
    nop

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_1ae
        :pswitch_1cf
        :pswitch_1f0
    .end packed-switch

    .line 301
    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_211
        :pswitch_21e
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "paramView"
    .parameter "paramMotionEvent"

    .prologue
    .line 1529
    const/4 v0, 0x0

    return v0
.end method

.method public selectAccuWeather()V
    .registers 5

    .prologue
    .line 627
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v2, "SETTING_MODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 641
    return-void
.end method

.method public selectDisplayClock()V
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 577
    return-void
.end method

.method public selectDockSetting()V
    .registers 4

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 589
    return-void
.end method

.method public selectHideStatusBar(Landroid/widget/AdapterView;I)V
    .registers 8
    .parameter "parent"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    iget-boolean v0, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 613
    .local v0, isChecked:Z
    const-string v1, ""

    .line 614
    .local v1, statusBar:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 619
    :cond_10
    if-nez v0, :cond_38

    move v2, v3

    :goto_13
    invoke-direct {p0, p2, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    .line 620
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    if-nez v0, :cond_3a

    :goto_20
    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 621
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 623
    return-void

    :cond_38
    move v2, v4

    .line 619
    goto :goto_13

    :cond_3a
    move v3, v4

    .line 620
    goto :goto_20
.end method

.method public selectWallpaperDialog()V
    .registers 2

    .prologue
    .line 572
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 573
    return-void
.end method

.method public selsectBrightness()V
    .registers 2

    .prologue
    .line 599
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 605
    return-void
.end method

.method protected setBrightness(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1502
    const-string v1, "brightness value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1504
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1505
    const/high16 v1, 0x437f

    div-float v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1507
    return-void
.end method
