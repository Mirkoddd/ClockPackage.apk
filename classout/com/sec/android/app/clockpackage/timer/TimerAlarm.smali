.class public Lcom/sec/android/app/clockpackage/timer/TimerAlarm;
.super Landroid/app/Activity;
.source "TimerAlarm.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;
    }
.end annotation


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field mHandler:Landroid/os/Handler;

.field mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

.field private mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_contentView:Landroid/view/ViewGroup;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->m_contentView:Landroid/view/ViewGroup;

    .line 78
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private initViews()V
    .registers 12

    .prologue
    const v10, 0x7f020255

    const v9, 0x7f02016a

    const v8, 0x7f020003

    const/4 v7, 0x0

    .line 209
    const-string v2, "TIMER"

    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 211
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, ".timer.input.time"

    const-string v3, "00:00:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, inputTime:Ljava/lang/String;
    const v2, 0x7f0e0124

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v2, 0x7f0e0008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f02014d

    const v4, 0x7f02016b

    const v5, 0x7f020002

    const v6, 0x7f020016

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setLeftTabResources(IIII)V

    .line 216
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v2, v7, v9, v8, v10}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    .line 220
    const-string v2, "GT-I9100"

    const-string v3, "SGH-I927-TEMP-BLOCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f020163

    invoke-virtual {v2, v7, v9, v8, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    .line 233
    :goto_57
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setLeftHintText(I)V

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setOnTriggerListener(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;)V

    .line 244
    return-void

    .line 226
    :cond_6a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v2, v7, v9, v8, v10}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    goto :goto_57
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_14

    move v0, v1

    .line 295
    .local v0, up:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 294
    .end local v0           #up:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 299
    .restart local v0       #up:Z
    :pswitch_16
    if-eqz v0, :cond_13

    .line 300
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    goto :goto_13

    .line 295
    :pswitch_data_1c
    .packed-switch 0x18
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method finishTimer(Z)V
    .registers 7
    .parameter "isStopService"

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->release()V

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_11

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    .line 255
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1f

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 257
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 259
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    if-eqz v1, :cond_2a

    .line 261
    :try_start_23
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_28} :catch_3a

    .line 265
    :goto_28
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    .line 267
    :cond_2a
    if-eqz p1, :cond_36

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-string v2, ".timer.playsound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->stopService(Landroid/content/Intent;)Z

    .line 269
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finish()V

    .line 270
    return-void

    .line 262
    :catch_3a
    move-exception v0

    .line 263
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "TimerAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 278
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->setContentView(I)V

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->initViews()V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, isCallStateOffHook:Z
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x80080

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/timer/PowerController;->acquire(Landroid/content/Context;)V

    .line 92
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    :cond_2d
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 101
    const-string v3, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string v3, ".timer.playsound"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, playTimer:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->activityManager:Landroid/app/ActivityManager;

    .line 109
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 284
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 281
    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 178
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 180
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_11

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 187
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    if-eqz v1, :cond_1a

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->inactiveHandle()V

    .line 192
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->reenableKeyguard()V

    .line 198
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 163
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_12

    .line 165
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 168
    :cond_12
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->setContentView(I)V

    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->initViews()V

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/PowerController;->disableKeyguard(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .parameter "layoutResID"

    .prologue
    .line 313
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 316
    .local v0, mainView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->setContentView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 324
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->m_contentView:Landroid/view/ViewGroup;

    .line 325
    return-void
.end method
