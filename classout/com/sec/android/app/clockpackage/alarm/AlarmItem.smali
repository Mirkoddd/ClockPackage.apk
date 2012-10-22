.class public final Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
.super Ljava/lang/Object;
.source "AlarmItem.java"


# instance fields
.field public activate:I

.field public alarmAlertTime:J

.field public alarmName:Ljava/lang/String;

.field public alarmSoundTone:I

.field public alarmSoundType:I

.field public alarmTime:I

.field public alarmVolume:I

.field public createTime:J

.field public dailyBriefing:Z

.field public id:I

.field public notificationType:I

.field public repeatType:I

.field public snoozeActivate:Z

.field public snoozeDoneCount:I

.field public snoozeDuration:I

.field public snoozeRepeat:I

.field public soundUri:Ljava/lang/String;

.field public subdueActivate:Z

.field public subdueDuration:I

.field public subdueTone:I

.field public subdueUri:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 22
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 23
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 24
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 25
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 26
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 27
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 29
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 31
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 34
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 36
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 37
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 42
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    return-void
.end method

.method private calculateAlertTime()V
    .registers 23

    .prologue
    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 342
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 344
    .local v6, currentMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_ebe

    .line 1201
    :goto_11
    :pswitch_11
    return-void

    .line 347
    :pswitch_12
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 348
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto :goto_11

    .line 353
    :pswitch_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_780

    .line 355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5e6

    .line 357
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_1a2

    .line 361
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 362
    .local v10, newAlarmTime:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .local v9, i:I
    :goto_45
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_c5

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 364
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 365
    cmp-long v18, v10, v6

    if-lez v18, :cond_c2

    .line 367
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 368
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_ac

    .line 372
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_9c
    :goto_9c
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v18, "AlarmItem"

    const-string v19, "found some next snooze valid. set new snooze 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 374
    :cond_ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9c

    .line 375
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 362
    :cond_c2
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 385
    :cond_c5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 387
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 391
    .local v12, nextSmartAlert:J
    :goto_fd
    cmp-long v18, v6, v12

    if-lez v18, :cond_135

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 394
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_fd

    .line 397
    :cond_135
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_158

    .line 401
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 407
    :cond_158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_176

    .line 408
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_16d
    :goto_16d
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 410
    :cond_176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18c

    .line 411
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    .line 413
    :cond_18c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16d

    .line 414
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    .line 425
    .end local v9           #i:I
    .end local v10           #newAlarmTime:J
    .end local v12           #nextSmartAlert:J
    :cond_1a2
    const-wide/16 v16, 0x0

    .line 426
    .local v16, subdueMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-nez v18, :cond_1c8

    .line 427
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 430
    :cond_1c8
    cmp-long v18, v16, v6

    if-lez v18, :cond_215

    .line 432
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 433
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ff

    .line 437
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1ef
    :goto_1ef
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v18, "AlarmItem"

    const-string v19, "set new smart alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 439
    :cond_1ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ef

    .line 440
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ef

    .line 448
    :cond_215
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_4a5

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_39a

    .line 451
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 452
    .restart local v10       #newAlarmTime:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_23d
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-gt v9, v0, :cond_2bd

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 454
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 455
    cmp-long v18, v10, v6

    if-lez v18, :cond_2ba

    .line 458
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 459
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a4

    .line 463
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_294
    :goto_294
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v18, "AlarmItem"

    const-string v19, "found some next snooze valid. set new snooze 2"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 465
    :cond_2a4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_294

    .line 466
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 452
    :cond_2ba
    add-int/lit8 v9, v9, 0x1

    goto :goto_23d

    .line 476
    :cond_2bd
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 492
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 493
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 496
    .restart local v12       #nextSmartAlert:J
    :goto_2f5
    cmp-long v18, v6, v12

    if-lez v18, :cond_32d

    .line 497
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 499
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_2f5

    .line 502
    :cond_32d
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_350

    .line 506
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 512
    :cond_350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_36e

    .line 513
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_365
    :goto_365
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 515
    :cond_36e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_384

    .line 516
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_365

    .line 518
    :cond_384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_365

    .line 519
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_365

    .line 531
    .end local v9           #i:I
    .end local v10           #newAlarmTime:J
    .end local v12           #nextSmartAlert:J
    :cond_39a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_3ca

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_432

    .line 536
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 537
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 557
    :cond_3ca
    :goto_3ca
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 558
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 559
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 561
    .restart local v12       #nextSmartAlert:J
    :goto_3fa
    cmp-long v18, v6, v12

    if-lez v18, :cond_438

    .line 562
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 563
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 564
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_3fa

    .line 539
    .end local v12           #nextSmartAlert:J
    :cond_432
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    goto :goto_3ca

    .line 567
    .restart local v12       #nextSmartAlert:J
    :cond_438
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_45b

    .line 571
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 577
    :cond_45b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_479

    .line 578
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_470
    :goto_470
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 580
    :cond_479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_48f

    .line 581
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_470

    .line 583
    :cond_48f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_470

    .line 584
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_470

    .line 597
    .end local v12           #nextSmartAlert:J
    :cond_4a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_592

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_507

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_502

    .line 601
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 602
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 603
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 605
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v18, "AlarmItem"

    const-string v19, "snooze done. inactive alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 614
    :cond_502
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 636
    :cond_507
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 637
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 639
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 641
    .restart local v12       #nextSmartAlert:J
    :goto_53f
    cmp-long v18, v6, v12

    if-lez v18, :cond_577

    .line 642
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 643
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 644
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_53f

    .line 647
    :cond_577
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 650
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v18, "AlarmItem"

    const-string v19, "snooze done. set next smart alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 659
    .end local v12           #nextSmartAlert:J
    :cond_592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-lez v18, :cond_5c7

    .line 660
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 665
    :goto_5a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5d0

    .line 666
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_5b7
    :goto_5b7
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v18, "AlarmItem"

    const-string v19, "set new alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 662
    :cond_5c7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_5a2

    .line 668
    :cond_5d0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5b7

    .line 669
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b7

    .line 681
    .end local v16           #subdueMillis:J
    :cond_5e6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 682
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 686
    .restart local v16       #subdueMillis:J
    cmp-long v18, v16, v6

    if-lez v18, :cond_657

    .line 688
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 689
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_641

    .line 693
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_631
    :goto_631
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v18, "AlarmItem"

    const-string v19, "set new smart alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 695
    :cond_641
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_631

    .line 696
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_631

    .line 704
    :cond_657
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_6a3

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_69e

    .line 706
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 707
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 708
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 711
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v18, "AlarmItem"

    const-string v19, "snooze end up. set new smart alarm at next day. (2)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 720
    :cond_69e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 723
    :cond_6a3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 736
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 737
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 738
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 740
    .restart local v12       #nextSmartAlert:J
    :goto_6db
    cmp-long v18, v6, v12

    if-lez v18, :cond_713

    .line 741
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 742
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 743
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_6db

    .line 746
    :cond_713
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_736

    .line 750
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 756
    :cond_736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_754

    .line 757
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_74b
    :goto_74b
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 759
    :cond_754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_76a

    .line 760
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74b

    .line 762
    :cond_76a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_74b

    .line 763
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74b

    .line 776
    .end local v12           #nextSmartAlert:J
    .end local v16           #subdueMillis:J
    :cond_780
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_ba7

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8a4

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_80c

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_807

    .line 781
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 782
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 783
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7f1

    .line 787
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_7e1
    :goto_7e1
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v18, "AlarmItem"

    const-string v19, "all snooze had finished. clear alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 789
    :cond_7f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7e1

    .line 790
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e1

    .line 799
    :cond_807
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 802
    :cond_80c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 803
    .local v8, dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 809
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 811
    :goto_82e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_850

    .line 812
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 815
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_82e

    .line 819
    :cond_850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_88e

    .line 820
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_865
    :goto_865
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 822
    :cond_88e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_865

    .line 823
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_865

    .line 834
    .end local v8           #dayOffset:I
    :cond_8a4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a30

    .line 835
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_8fa

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-lez v18, :cond_8e3

    .line 837
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 840
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v18, "AlarmItem"

    const-string v19, "active alarm changed as snooze"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 850
    :cond_8e3
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v18, "AlarmItem"

    const-string v19, "active alarm set"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 859
    :cond_8fa
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_8fe
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_946

    .line 860
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 861
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 862
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_96f

    .line 866
    :cond_946
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_972

    .line 867
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 870
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v18, "AlarmItem"

    const-string v19, "found next snooze."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 859
    :cond_96f
    add-int/lit8 v9, v9, 0x1

    goto :goto_8fe

    .line 878
    :cond_972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_9bc

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9b7

    .line 880
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 881
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 882
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 885
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v18, "AlarmItem"

    const-string v19, "alarm fired but no snooze can be alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 894
    :cond_9b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 898
    :cond_9bc
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 899
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 905
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 908
    .restart local v8       #dayOffset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 910
    :goto_9de
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_a00

    .line 911
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_9de

    .line 919
    :cond_a00
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "change to active. new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 930
    .end local v8           #dayOffset:I
    .end local v9           #i:I
    :cond_a30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b6c

    .line 931
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-gez v18, :cond_a94

    .line 932
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_a4c
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_a94

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 934
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 935
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_aef

    .line 940
    .end local v9           #i:I
    :cond_a94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b6c

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_af8

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_af3

    .line 943
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 944
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 945
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 948
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v18, "AlarmItem"

    const-string v19, "snooze end. change as inactive alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 932
    .restart local v9       #i:I
    :cond_aef
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a4c

    .line 957
    .end local v9           #i:I
    :cond_af3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 962
    :cond_af8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 965
    .restart local v8       #dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 967
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 969
    :goto_b1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_b3c

    .line 970
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 974
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_b1a

    .line 978
    :cond_b3c
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "change to active. new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 991
    .end local v8           #dayOffset:I
    :cond_b6c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b91

    .line 992
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_b81
    :goto_b81
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v18, "AlarmItem"

    const-string v19, "set next snooze."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 994
    :cond_b91
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b81

    .line 995
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b81

    .line 1005
    :cond_ba7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_c93

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_bfb

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_bf6

    .line 1008
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1009
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1010
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1013
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v18, "AlarmItem"

    const-string v19, "alarm set as tomorrow."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1021
    :cond_bf6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 1024
    :cond_bfb
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1026
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 1027
    .restart local v8       #dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1029
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1031
    :goto_c1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_c3f

    .line 1032
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1035
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_c1d

    .line 1039
    :cond_c3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c7d

    .line 1040
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_c54
    :goto_c54
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "new alarm set as normal alarm on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1042
    :cond_c7d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c54

    .line 1043
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c54

    .line 1055
    .end local v8           #dayOffset:I
    :cond_c93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_cb8

    .line 1056
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_ca8
    :goto_ca8
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v18, "AlarmItem"

    const-string v19, "valid alarm as one shot alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1058
    :cond_cb8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_ca8

    .line 1059
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca8

    .line 1072
    :pswitch_cce
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_cef

    .line 1075
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v18, "AlarmItem"

    const-string v19, "just let smart alarm alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1082
    :cond_cef
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v3, v18, v20

    .line 1084
    .local v3, activeAlertTime:J
    cmp-long v18, v3, v6

    if-lez v18, :cond_d32

    .line 1086
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1087
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1090
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v18, "AlarmItem"

    const-string v19, "smart alarm has gone but we got active."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1098
    :cond_d32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e70

    .line 1100
    move-wide v14, v3

    .line 1101
    .local v14, snoozeTimeMillis:J
    :cond_d3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_d74

    .line 1102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1103
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 1104
    cmp-long v18, v14, v6

    if-lez v18, :cond_d3b

    .line 1108
    :cond_d74
    cmp-long v18, v14, v6

    if-gez v18, :cond_e4d

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_dc2

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_dbd

    .line 1112
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1113
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1114
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1117
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v18, "AlarmItem"

    const-string v19, "all snooze also useless. inactive this alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1126
    :cond_dbd
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 1133
    :cond_dc2
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1134
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1135
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 1137
    .restart local v12       #nextSmartAlert:J
    :goto_df2
    cmp-long v18, v6, v12

    if-lez v18, :cond_e2a

    .line 1138
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1139
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1140
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_df2

    .line 1143
    :cond_e2a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1145
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1148
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v18, "AlarmItem"

    const-string v19, "find other day to alert smart alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1157
    .end local v12           #nextSmartAlert:J
    :cond_e4d
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1158
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1161
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v18, "AlarmItem"

    const-string v19, "found snooze to alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1170
    .end local v14           #snoozeTimeMillis:J
    :cond_e70
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1171
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1172
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1175
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v18, "AlarmItem"

    const-string v19, "go inactive."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1188
    .end local v3           #activeAlertTime:J
    :pswitch_e9f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1191
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE_NEXT -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-string v18, "AlarmItem"

    const-string v19, "we are going to active cause get next alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 344
    :pswitch_data_ebe
    .packed-switch 0x0
        :pswitch_12
        :pswitch_23
        :pswitch_23
        :pswitch_cce
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e9f
    .end packed-switch
.end method

.method public static final createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 7
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1206
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1208
    .local v0, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 1209
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1210
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1211
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1212
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1213
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1214
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 1215
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_ae

    move v1, v2

    :goto_3e
    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1217
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1218
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1219
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1220
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_b0

    move v1, v2

    :goto_61
    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1222
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_b2

    :goto_6b
    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1224
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1225
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1226
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1227
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1228
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1229
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 1230
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1231
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1233
    return-object v0

    :cond_ae
    move v1, v3

    .line 1215
    goto :goto_3e

    :cond_b0
    move v1, v3

    .line 1220
    goto :goto_61

    :cond_b2
    move v2, v3

    .line 1222
    goto :goto_6b
.end method

.method private getNextAlertTime(Ljava/util/Calendar;)J
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_25

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_25
    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 145
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_51

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_51
    const/16 v0, 0xb

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v0, 0xc

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 151
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 153
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_91

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_91
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public calculateFirstAlertTime()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const v11, 0xea60

    .line 162
    const-string v7, "AlarmItem"

    const-string v8, "calculateFirstAlertTime"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 166
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 169
    .local v3, currentMillis:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    .local v1, c1:Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_54

    .line 172
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar(currentMill)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ system="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 177
    .local v2, cr:Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    const/4 v7, 0x6

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 182
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 184
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_aa

    .line 185
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ currentMill="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ subdueDuration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_aa
    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_18c

    .line 189
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v9, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v9, v9, v10

    mul-int/2addr v9, v11

    int-to-long v9, v9

    sub-long v5, v7, v9

    .line 191
    .local v5, subdueTime:J
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_ef

    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 Alarm.ALARM_SUBDUE / currentMillis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ subdueT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_ef
    cmp-long v7, v5, v3

    if-gez v7, :cond_fc

    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_fc

    .line 194
    iput v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 232
    .end local v5           #subdueTime:J
    :cond_fb
    :goto_fb
    return-void

    .line 195
    .restart local v5       #subdueTime:J
    :cond_fc
    cmp-long v7, v3, v5

    if-gez v7, :cond_103

    .line 196
    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_fb

    .line 197
    :cond_103
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_fb

    .line 202
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 204
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 205
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v9, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v9, v9, v10

    mul-int/2addr v9, v11

    int-to-long v9, v9

    sub-long v5, v7, v9

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 208
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_15c

    .line 209
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2 Alarm.ALARM_SUBDUE / currentMill="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ subdueT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_15c
    cmp-long v7, v5, v3

    if-gez v7, :cond_169

    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_169

    .line 212
    iput v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_fb

    .line 213
    :cond_169
    cmp-long v7, v3, v5

    if-gez v7, :cond_170

    .line 214
    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_fb

    .line 215
    :cond_170
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_fb

    .line 220
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 221
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v9, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v9, v9, v10

    mul-int/2addr v9, v11

    int-to-long v9, v9

    sub-long v5, v7, v9

    .line 222
    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto/16 :goto_fb

    .line 226
    .end local v5           #subdueTime:J
    :cond_18c
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_fb

    .line 227
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto/16 :goto_fb
.end method

.method public calculateNextAlertTime()V
    .registers 6

    .prologue
    const v4, 0xea60

    .line 288
    const-string v0, "AlarmItem"

    const-string v1, "calculateNextAlertTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    packed-switch v0, :pswitch_data_3e

    .line 310
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateAlertTime()V

    .line 311
    return-void

    .line 293
    :pswitch_13
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_f

    .line 294
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 295
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    aget v2, v2, v3

    mul-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_f

    .line 301
    :pswitch_2b
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 302
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v2, v2, v3

    mul-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_f

    .line 290
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_2b
    .end packed-switch
.end method

.method public calculateNextSmartAlertTime()V
    .registers 11

    .prologue
    const v9, 0xea60

    const/4 v7, 0x1

    .line 235
    const-string v5, "AlarmItem"

    const-string v6, "calculateNextSmartAlertTime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 241
    .local v1, currentMillis:J
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v7, :cond_25

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v5

    if-ne v5, v7, :cond_72

    .line 243
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 248
    :cond_25
    :goto_25
    const-string v5, "AlarmItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "active : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 250
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 251
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v7, v7, v8

    mul-int/2addr v7, v9

    int-to-long v7, v7

    sub-long v3, v5, v7

    .line 253
    .local v3, nextSmartAlert:J
    :goto_56
    cmp-long v5, v1, v3

    if-lez v5, :cond_76

    .line 254
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 256
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v7, v7, v8

    mul-int/2addr v7, v9

    int-to-long v7, v7

    sub-long v3, v5, v7

    goto :goto_56

    .line 245
    .end local v3           #nextSmartAlert:J
    :cond_72
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    goto :goto_25

    .line 259
    .restart local v3       #nextSmartAlert:J
    :cond_76
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 275
    return-void
.end method

.method public calculateOriginalAlertTime()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 280
    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 281
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 282
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 284
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 285
    return-void
.end method

.method public clearRepeatDay(Ljava/util/Calendar;)V
    .registers 8
    .parameter "c"

    .prologue
    .line 1352
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1353
    .local v1, offset:I
    const/4 v2, 0x1

    .line 1354
    .local v2, operator:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    rsub-int/lit8 v3, v1, 0x7

    if-gt v0, v3, :cond_10

    .line 1355
    shl-int/lit8 v2, v2, 0x4

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1358
    :cond_10
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repeat type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n~operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1363
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repeat type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return-void
.end method

.method public getAlertDayCount()I
    .registers 7

    .prologue
    .line 1337
    const/4 v1, 0x0

    .line 1338
    .local v1, nCount:I
    const/4 v2, 0x1

    .line 1339
    .local v2, operator:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/4 v3, 0x7

    if-ge v0, v3, :cond_12

    .line 1340
    shl-int/lit8 v2, v2, 0x4

    .line 1341
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/2addr v3, v2

    if-lez v3, :cond_f

    .line 1342
    add-int/lit8 v1, v1, 0x1

    .line 1339
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1346
    :cond_12
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return v1
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v1, value:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 109
    .local v0, alarmType:I
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_e

    .line 110
    or-int/lit16 v0, v0, 0x100

    .line 111
    :cond_e
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v2, :cond_14

    .line 112
    or-int/lit8 v0, v0, 0x10

    .line 113
    :cond_14
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_1a

    .line 114
    or-int/lit8 v0, v0, 0x1

    .line 116
    :cond_1a
    const-string v2, "active"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "createtime"

    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v2, "alerttime"

    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v2, "alarmtime"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v2, "repeattype"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v2, "notitype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v5, "snzactive"

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_f2

    move v2, v3

    :goto_61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v2, "snzduration"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v2, "snzrepeat"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v2, "snzcount"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v2, "dailybrief"

    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string v2, "sbdactive"

    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v5, :cond_f5

    :goto_9a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v2, "sbdduration"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v2, "sbdtone"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v2, "alarmsound"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v2, "alarmtone"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v2, "volume"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v2, "sbduri"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v2, "alarmuri"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "name"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v1

    :cond_f2
    move v2, v4

    .line 122
    goto/16 :goto_61

    :cond_f5
    move v3, v4

    .line 127
    goto :goto_9a
.end method

.method public getNextAlertDayOffset(Ljava/util/Calendar;)I
    .registers 9
    .parameter "c"

    .prologue
    const/4 v6, 0x7

    .line 1320
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1321
    .local v0, day:I
    const/high16 v1, 0x1000

    .line 1322
    .local v1, dayOffset:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_8
    if-gt v2, v6, :cond_1f

    .line 1323
    add-int v3, v0, v2

    .line 1324
    .local v3, nextDay:I
    if-le v3, v6, :cond_10

    .line 1325
    add-int/lit8 v3, v3, -0x7

    .line 1327
    :cond_10
    mul-int/lit8 v5, v3, 0x4

    shr-int v4, v1, v5

    .line 1328
    .local v4, operator:I
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v4

    if-lez v5, :cond_1c

    .line 1333
    .end local v2           #i:I
    .end local v3           #nextDay:I
    .end local v4           #operator:I
    :goto_1b
    return v2

    .line 1322
    .restart local v2       #i:I
    .restart local v3       #nextDay:I
    .restart local v4       #operator:I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1333
    .end local v3           #nextDay:I
    .end local v4           #operator:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public readFromIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, alarmData:[B
    if-eqz v0, :cond_9b

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 78
    .local v1, in:Landroid/os/Parcel;
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 79
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9c

    move v2, v3

    :goto_46
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9e

    move v2, v3

    :goto_61
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_a0

    :goto_69
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 103
    .end local v1           #in:Landroid/os/Parcel;
    :cond_9b
    return-void

    .restart local v1       #in:Landroid/os/Parcel;
    :cond_9c
    move v2, v4

    .line 88
    goto :goto_46

    :cond_9e
    move v2, v4

    .line 92
    goto :goto_61

    :cond_a0
    move v3, v4

    .line 93
    goto :goto_69
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1240
    .local v0, c:Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1242
    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1244
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v2, "activate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1247
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v2, "createTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1250
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v2, :cond_4e

    .line 1252
    const-string v2, "AlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1254
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_4e
    const-string v2, "AlertT___ (at cal) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    const-string v2, "alarmT___ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v2, "repeatType : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    const-string v2, "notificationType : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    const-string v2, "snoozeActivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1273
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    const-string v2, "snoozeDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1276
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string v2, "snoozeRepeat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string v2, "snoozeDoneCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const-string v2, "dailyBriefing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1285
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v2, "subdueActivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1288
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string v2, "subdueDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1291
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const-string v2, "subdueTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1294
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v2, "alarmSoundType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1297
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v2, "alarmSoundTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const-string v2, "alarmVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1303
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    const-string v2, "subdueUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1306
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v2, :cond_182

    .line 1308
    const-string v2, "soundUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const-string v2, "alarmName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    :cond_182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter "dest"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_74

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v0, :cond_76

    move v0, v1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v0, :cond_78

    :goto_48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void

    :cond_74
    move v0, v2

    .line 58
    goto :goto_2a

    :cond_76
    move v0, v2

    .line 62
    goto :goto_41

    :cond_78
    move v1, v2

    .line 63
    goto :goto_48
.end method
