.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;
.super Landroid/app/Activity;
.source "CradleHomeSettingsTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private mTempFile:Ljava/io/File;

.field private mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    .line 192
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1067
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1217
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    .line 1218
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_25

    .line 1219
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1220
    const-string v4, "CradleHomeSettings"

    const-string v5, "wallpaper file ok??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1226
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1227
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1229
    .local v1, height:I
    if-le v3, v1, :cond_78

    move v2, v3

    .line 1230
    .local v2, w:I
    :goto_40
    if-le v3, v1, :cond_7a

    move v0, v1

    .line 1231
    .local v0, h:I
    :goto_43
    const-string v4, "outputX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1232
    const-string v4, "outputY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1233
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1234
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1235
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1236
    const-string v4, "noFaceDetection"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1237
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1238
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    return-void

    .end local v0           #h:I
    .end local v2           #w:I
    :cond_78
    move v2, v1

    .line 1229
    goto :goto_40

    .restart local v2       #w:I
    :cond_7a
    move v0, v3

    .line 1230
    goto :goto_43
.end method

.method private isDockSettingEnable()Z
    .registers 3

    .prologue
    .line 391
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

    .line 392
    :cond_14
    const/4 v0, 0x0

    .line 393
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
    .line 1028
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

    .line 1029
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1030
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1031
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/16 v1, 0xa

    if-ne p1, v1, :cond_50

    .line 1032
    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1033
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1042
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 1043
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 1065
    return-void

    .line 1034
    :cond_50
    if-nez p1, :cond_5b

    .line 1035
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1036
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3f

    .line 1037
    :cond_5b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    .line 1038
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1039
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3f
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

    .line 213
    const/4 v1, 0x6

    if-ne p1, v1, :cond_30

    .line 214
    if-ne p2, v2, :cond_2c

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v2, 0x7f0b00d1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    return-void

    .line 222
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setResult(I)V

    goto :goto_28

    .line 225
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_28

    .line 226
    if-ne p2, v2, :cond_59

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28

    .line 236
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_59
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setResult(I)V

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setContentView(I)V

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    .line 81
    const v3, 0x7f0e00b5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    if-nez v3, :cond_25

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    .line 87
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    if-nez v3, :cond_35

    .line 88
    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    const v4, 0x7f030023

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    .line 92
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_67

    .line 174
    const-string v3, "CradleHomeSettings"

    const-string v4, "no wallpaper file??"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_5d
    const-string v3, "wallpaper"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 178
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_67} :catch_77
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_7c

    .line 186
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_67
    :goto_67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void

    .line 179
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_77
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_67

    .line 181
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_7c
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v8, 0x7f0b00b2

    const/4 v7, 0x0

    .line 602
    const/4 v0, -0x1

    .line 604
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_94

    .line 942
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_c
    return-object v5

    .line 607
    :pswitch_d
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v4, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00c0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 610
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_default_dock_mode"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 613
    .local v2, currentDockMode:I
    const v5, 0x7f070001

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 744
    .end local v2           #currentDockMode:I
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_38
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 747
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 749
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_current_clock"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 750
    .local v1, currentClock:I
    move v0, v1

    .line 753
    const v5, 0x7f070002

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 834
    .end local v1           #currentClock:I
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_64
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00cd

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 839
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_wallpaper_type"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 841
    .local v3, currentwallpapertype:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_7b

    .line 842
    const/4 v3, 0x2

    .line 845
    :cond_7b
    move v0, v3

    .line 848
    const/high16 v5, 0x7f07

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 931
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$8;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 939
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 604
    :pswitch_data_94
    .packed-switch 0x2
        :pswitch_64
        :pswitch_38
        :pswitch_8
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 208
    return-void
.end method

.method protected onResume()V
    .registers 24

    .prologue
    .line 246
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->clear()V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_wallpaper_type"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 250
    .local v22, wallpaperType:I
    const/4 v1, 0x0

    .line 251
    .local v1, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    packed-switch v22, :pswitch_data_18c

    .line 281
    :goto_19
    if-eqz v1, :cond_1f

    .line 282
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 284
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_current_clock"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 286
    .local v16, currentView:I
    const/4 v5, 0x0

    .line 287
    .local v5, subTitle:Ljava/lang/String;
    packed-switch v16, :pswitch_data_198

    .line 302
    :goto_2e
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 304
    .local v2, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_time_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 306
    .local v18, isDisplayClock:Z
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, selectCity:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 310
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 312
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 314
    .local v6, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 316
    .local v19, isDisplayWeather:Z
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 317
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 318
    if-nez v9, :cond_93

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 327
    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_statusbar"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 329
    .local v20, isHideStatusBar:Z
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    .line 330
    .local v21, statusBar:Ljava/lang/String;
    if-eqz v20, :cond_a4

    .line 358
    :cond_a4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cralde_dock_mode_setting"

    const-string v7, "Always"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 361
    .local v17, dockSetting:Ljava/lang/String;
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 363
    .local v10, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->isDockSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 386
    :cond_e5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 388
    return-void

    .line 253
    .end local v2           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v5           #subTitle:Ljava/lang/String;
    .end local v6           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v9           #selectCity:Ljava/lang/String;
    .end local v10           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v16           #currentView:I
    .end local v17           #dockSetting:Ljava/lang/String;
    .end local v18           #isDisplayClock:Z
    .end local v19           #isDisplayWeather:Z
    .end local v20           #isHideStatusBar:Z
    .end local v21           #statusBar:Ljava/lang/String;
    :pswitch_ed
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00ce

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 256
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 263
    :pswitch_10e
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00cf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 267
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 269
    :pswitch_12f
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00d1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 272
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 274
    :pswitch_150
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00d0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 277
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 289
    .restart local v5       #subTitle:Ljava/lang/String;
    .restart local v16       #currentView:I
    :pswitch_171
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    goto/16 :goto_2e

    .line 296
    :pswitch_17e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    goto/16 :goto_2e

    .line 251
    nop

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_10e
        :pswitch_12f
        :pswitch_150
    .end packed-switch

    .line 287
    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_171
        :pswitch_17e
    .end packed-switch
.end method

.method public selectAccuWeather()V
    .registers 5

    .prologue
    .line 583
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v2, "SETTING_MODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->startActivity(Landroid/content/Intent;)V

    .line 597
    return-void
.end method

.method public selectDisplayClock()V
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->showDialog(I)V

    .line 544
    return-void
.end method

.method public selectDockSetting()V
    .registers 4

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 553
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->startActivity(Landroid/content/Intent;)V

    .line 556
    return-void
.end method
