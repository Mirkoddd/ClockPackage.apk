.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;
.super Landroid/content/BroadcastReceiver;
.source "CradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 2
    .parameter

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1916
    .local v1, action:Ljava/lang/String;
    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1917
    const-string v12, "time-zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1918
    .local v11, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    new-instance v13, Landroid/text/format/Time;

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mTime:Landroid/text/format/Time;
    invoke-static {v12, v13}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$002(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 1919
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 1922
    .end local v11           #tz:Ljava/lang/String;
    :cond_2f
    const-string v12, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 1923
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mDate:Ljava/util/Date;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 1925
    .local v9, time:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12, v9, v10}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setDataText(J)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 1931
    .end local v9           #time:J
    :cond_51
    const-string v12, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_61

    .line 1932
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onTimeChanged()V

    .line 2098
    :cond_60
    :goto_60
    return-void

    .line 1933
    :cond_61
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    .line 1934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    const-string v13, "status"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "level"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->handleBatteryUpdate(II)V
    invoke-static {v12, v13, v14}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;II)V

    goto :goto_60

    .line 1937
    :cond_83
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 1938
    const-string v12, "CradleMain"

    const-string v13, "UI_mode_manager_ACTION_EXITY_DESK_MODE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->isInCallState()Z
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 1941
    const-string v12, "CradleMain"

    const-string v13, "call check"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mLaunchedFromDock:Z

    .line 1945
    :cond_aa
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    goto :goto_60

    .line 1958
    :cond_b2
    const-string v12, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bf

    .line 1959
    const-string v12, "android.intent.extra.DOCK_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1962
    .local v8, state:I
    const-string v12, "CradleMain"

    const-string v13, "Dock state - ACTION DOCK EVENT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/4 v12, 0x1

    if-ne v8, v12, :cond_165

    .line 1973
    const-string v12, "CradleMain"

    const-string v13, "Dock state - EXTRA_DOCK_STATE_DESK"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->whereSound()Z
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Z

    move-result v4

    .line 1989
    .local v4, isSpeaker:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cradle_launch"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1991
    .local v2, docking:I
    packed-switch v2, :pswitch_data_256

    .line 2007
    :cond_ee
    :goto_ee
    :pswitch_ee
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2009
    .local v5, sendIntent:Landroid/content/Intent;
    const-string v12, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    if-eqz v4, :cond_163

    .line 2015
    const/4 v7, 0x0

    .line 2019
    .local v7, speakerState:I
    :goto_fb
    const-string v12, "state"

    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    iget-object v12, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2023
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v12, "cradle_connected"

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2024
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2026
    const-string v12, "CradleMain"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send speaker broadcast state =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_60

    .line 1994
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sendIntent:Landroid/content/Intent;
    .end local v7           #speakerState:I
    :pswitch_144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    goto/16 :goto_60

    .line 1999
    :pswitch_14d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mIsStartFromTab:Ljava/lang/Boolean;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_ee

    .line 2000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->finish()V

    goto :goto_ee

    .line 2017
    .restart local v5       #sendIntent:Landroid/content/Intent;
    :cond_163
    const/4 v7, 0x1

    .restart local v7       #speakerState:I
    goto :goto_fb

    .line 2031
    .end local v2           #docking:I
    .end local v4           #isSpeaker:Z
    .end local v5           #sendIntent:Landroid/content/Intent;
    .end local v7           #speakerState:I
    :cond_165
    if-nez v8, :cond_60

    .line 2033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->ScreenOn()V

    .line 2035
    const-string v12, "CradleMain"

    const-string v13, "Dock state - EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2039
    .local v6, sintent:Landroid/content/Intent;
    const-string v12, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2041
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2042
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    iget-object v12, v12, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2045
    .restart local v3       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v12, "cradle_connected"

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2046
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mSpeakerButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mGoExitButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/widget/Button;

    move-result-object v12

    const v13, 0x7f020047

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60

    .line 2059
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sintent:Landroid/content/Intent;
    .end local v8           #state:I
    :cond_1bf
    const-string v12, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e9

    .line 2060
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12c0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2062
    const-string v12, "CradleMain"

    const-string v13, "Receice ACTION_WEATHER_SETTING_CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 2065
    :cond_1e9
    const-string v12, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_213

    .line 2066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12c1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2068
    const-string v12, "CradleMain"

    const-string v13, "Receice ACTION_WEATHER_DATA_UPDATED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 2071
    :cond_213
    const-string v12, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23d

    .line 2072
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->mWeatherHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12c1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2074
    const-string v12, "CradleMain"

    const-string v13, "Receice ACTION_WEATHER_DATE_SYNC"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 2077
    :cond_23d
    const-string v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 2078
    const-string v12, "CradleMain"

    const-string v13, "intent : ACTION_LACALE_CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->setupViews()V
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$900(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    goto/16 :goto_60

    .line 1991
    nop

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_144
        :pswitch_ee
        :pswitch_14d
    .end packed-switch
.end method
