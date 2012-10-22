.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShortCutAdpater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 92
    const-string v0, "shortcutdb"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method

.method private execMultipleSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 154
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 155
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 156
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    .end local v3           #s:Ljava/lang/String;
    :cond_17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "db"

    .prologue
    .line 98
    const-string v7, "create table SHORTCUTTABLE (_id integer primary key autoincrement, packagename text not null, shortcut_created_date integer not null, shortcut_afford text);"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, sql:[Ljava/lang/String;
    const-string v7, "insert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.clockpackage\',\'1\',\'com.sec.android.app.clockpackage.alarm.Alarm\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.music\',\'2\',\'com.sec.android.app.music.MusicBrowserTabActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.cooliris.media\',\'3\',\'com.cooliris.media.Gallery\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.readershub\',\'4\',\'com.sec.android.app.readershub.ReadersHub\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.android.browser\',\'5\',\'com.android.browser.BrowserActivity\');"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, sql2:[Ljava/lang/String;
    const-string v7, "insert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.clockpackage\',\'1\',\'com.sec.android.app.clockpackage.alarm.Alarm\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.music\',\'2\',\'com.sec.android.app.music.MusicBrowserTabActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.cooliris.media\',\'3\',\'com.cooliris.media.Gallery\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.google.android.voicesearch\',\'4\',\'com.google.android.voicesearch.RecognitionActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.android.browser\',\'5\',\'com.android.browser.BrowserActivity\');"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, sql4:[Ljava/lang/String;
    const-string v7, "insert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.clockpackage\',\'1\',\'com.sec.android.app.clockpackage.alarm.Alarm\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.music\',\'2\',\'com.sec.android.app.music.MusicBrowserTabActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.cooliris.media\',\'3\',\'com.cooliris.media.Gallery\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.readershub\',\'4\',\'com.sec.android.app.readershub.ReadersHub\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.widgetapp.diotek.smemo\',\'5\',\'com.sec.android.widgetapp.q1_penmemo.MemoListActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.android.browser\',\'6\',\'com.android.browser.BrowserActivity\');"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, sql5:[Ljava/lang/String;
    const-string v7, "insert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.clockpackage\',\'1\',\'com.sec.android.app.clockpackage.alarm.Alarm\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.music\',\'2\',\'com.sec.android.app.music.MusicBrowserTabActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.cooliris.media\',\'3\',\'com.cooliris.media.Gallery\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.google.android.voicesearch\',\'4\',\'com.google.android.voicesearch.RecognitionActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.android.browser\',\'5\',\'com.android.browser.BrowserActivity\');"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, sql6:[Ljava/lang/String;
    const-string v7, "insert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.clockpackage\',\'1\',\'com.sec.android.app.clockpackage.alarm.Alarm\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.sec.android.app.music\',\'2\',\'com.sec.android.app.music.MusicBrowserTabActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.cooliris.media\',\'3\',\'com.cooliris.media.Gallery\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.google.android.voicesearch\',\'4\',\'com.google.android.voicesearch.RecognitionActivity\');\ninsert into SHORTCUTTABLE(packagename,shortcut_created_date,shortcut_afford) values(\'com.android.browser\',\'5\',\'com.android.browser.BrowserActivity\');"

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, sql7:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 106
    :try_start_33
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->execMultipleSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 109
    const-string v7, "GT-I9100"

    const-string v8, "GT-N7000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9220"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9228"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    const-string v7, "GT-I9100"

    const-string v8, "GT-N7000B"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 120
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->execMultipleSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 122
    :goto_61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_64
    .catchall {:try_start_33 .. :try_end_64} :catchall_77
    .catch Landroid/database/SQLException; {:try_start_33 .. :try_end_64} :catch_6c

    .line 128
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    return-void

    .line 114
    :cond_68
    :try_start_68
    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->execMultipleSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_77
    .catch Landroid/database/SQLException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_61

    .line 124
    :catch_6c
    move-exception v0

    .line 125
    .local v0, e:Landroid/database/SQLException;
    :try_start_6d
    const-string v7, "error creating"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    throw v0
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_77

    .line 128
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_77
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 135
    const-string v2, "ShortCutAdpater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will destroy all old data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v2, "DROP TABLE IF EXISTS SHORTCUTTABLE;"

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, sql:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 140
    :try_start_33
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->execMultipleSQL(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_4b
    .catch Landroid/database/SQLException; {:try_start_33 .. :try_end_39} :catch_40

    .line 147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    return-void

    .line 143
    :catch_40
    move-exception v0

    .line 144
    .local v0, e:Landroid/database/SQLException;
    :try_start_41
    const-string v2, "error delete"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    throw v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_4b

    .line 147
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_4b
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
