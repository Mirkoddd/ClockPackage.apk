.class public Lcom/sec/android/app/clockpackage/deskclock/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field public allDay:Z

.field public alldayOrg:Z

.field public calendarId:I

.field public color:I

.field public contactDataId:I

.field public contactRawId:I

.field public description:Ljava/lang/CharSequence;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public eventType:I

.field public facebook_photo_url:Ljava/lang/CharSequence;

.field public facebook_scheudle_id:Ljava/lang/CharSequence;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public latitude:I

.field public location:Ljava/lang/CharSequence;

.field public longitude:I

.field private mColumn:I

.field private mGroupId:I

.field private mMaxColumns:I

.field public organizer:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 336
    if-eqz p1, :cond_11

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, aStr:Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_14

    .line 342
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, bStr:Ljava/lang/String;
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 339
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_11
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_6

    .line 344
    :cond_14
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_c
.end method

.method static computePositions(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const/4 v0, 0x0

    .line 539
    if-nez p0, :cond_4

    .line 546
    :goto_3
    return-void

    .line 542
    :cond_4
    sput v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 544
    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    .line 545
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    goto :goto_3
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .registers 13
    .parameter "context"
    .parameter
    .parameter "c"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    if-nez p2, :cond_3

    .line 523
    :cond_2
    :goto_2
    return-void

    .line 444
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 446
    .local v0, count:I
    if-eqz v0, :cond_2

    .line 450
    :cond_9
    :goto_9
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 451
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/Event;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/deskclock/Event;-><init>()V

    .line 453
    .local v1, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    const/4 v6, 0x4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->id:J

    .line 454
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    .line 455
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    .line 456
    const/4 v6, 0x2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x1

    :goto_31
    iput-boolean v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    .line 457
    const/4 v6, 0x2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_79

    const/4 v6, 0x1

    :goto_3b
    iput-boolean v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    .line 475
    const/4 v6, 0x5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 476
    .local v4, eStart:J
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 478
    .local v2, eEnd:J
    iput-wide v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    .line 479
    const/16 v6, 0xa

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    .line 480
    const/16 v6, 0x8

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    .line 482
    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    .line 483
    const/16 v6, 0xb

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    .line 484
    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    .line 486
    iget v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-gt v6, p4, :cond_9

    iget v6, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-lt v6, p3, :cond_9

    .line 519
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 456
    .end local v2           #eEnd:J
    .end local v4           #eStart:J
    :cond_77
    const/4 v6, 0x0

    goto :goto_31

    .line 457
    :cond_79
    const/4 v6, 0x0

    goto :goto_3b

    .line 522
    .end local v1           #e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_7b
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/deskclock/Event;->computePositions(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private static doComputePositions2(Ljava/util/ArrayList;Z)V
    .registers 23
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v9, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const-wide/16 v5, 0x0

    .line 554
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 555
    .local v14, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_bc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 557
    .local v8, event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-boolean v0, v8, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 560
    invoke-virtual {v8}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getStartMillis()J

    move-result-wide v15

    .line 575
    .local v15, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 577
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_51

    .line 578
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 579
    .local v2, active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-boolean v0, v8, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    move/from16 v17, v0

    if-nez v17, :cond_72

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getStartMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x1b7740

    add-long v17, v17, v19

    cmp-long v17, v17, v15

    if-gtz v17, :cond_72

    .line 581
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 600
    .end local v2           #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_98

    .line 601
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 602
    .local v7, ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setMaxColumns(I)V

    .line 603
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setGroupId(I)V

    goto :goto_5b

    .line 584
    .end local v7           #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v2       #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_72
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getEndMillis()J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_2f

    .line 593
    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    .line 594
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    .line 605
    .end local v2           #active:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_8c
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 606
    const/4 v14, 0x0

    .line 607
    const-wide/16 v5, 0x0

    .line 608
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 613
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_98
    invoke-static {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 614
    .local v4, col:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_a4

    .line 615
    const/16 v4, 0x3f

    .line 616
    :cond_a4
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    .line 617
    invoke-virtual {v8, v4}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setColumn(I)V

    .line 618
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 621
    .local v13, len:I
    if-ge v14, v13, :cond_11

    .line 622
    move v14, v13

    goto/16 :goto_11

    .line 624
    .end local v4           #col:I
    .end local v8           #event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    .end local v13           #len:I
    .end local v15           #start:J
    :cond_bc
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_c0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 625
    .restart local v7       #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    invoke-virtual {v7, v14}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setMaxColumns(I)V

    .line 626
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;->setGroupId(I)V

    goto :goto_c0

    .line 628
    .end local v7           #ev:Lcom/sec/android/app/clockpackage/deskclock/Event;
    :cond_d7
    sget v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupCount:I

    .line 629
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 705
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 706
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 709
    .end local v0           #ii:I
    :goto_f
    return v0

    .line 705
    .restart local v0       #ii:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    move v0, v1

    .line 709
    goto :goto_f
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .registers 27
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .parameter "ignoreRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    const/4 v10, 0x0

    .line 362
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 364
    :try_start_4
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 366
    .local v16, local:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 367
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    .line 368
    .local v18, startDay:I
    add-int v14, v18, p4

    .line 370
    .local v14, endDay:I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 371
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 391
    .local v12, end:J
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 393
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_7a

    move-result v15

    .line 396
    .local v15, hideDeclined:Z
    const/4 v6, 0x0

    .line 397
    .local v6, where:Ljava/lang/String;
    if-eqz v15, :cond_3d

    .line 407
    :cond_3d
    :try_start_3d
    sget-object v3, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 408
    .local v9, builder:Landroid/net/Uri$Builder;
    const-wide/32 v3, 0x5265c00

    sub-long v3, p2, v3

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 409
    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v12

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/clockpackage/deskclock/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_61} :catch_71

    move-result-object v10

    .line 417
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :goto_62
    if-nez v10, :cond_81

    .line 418
    :try_start_64
    const-string v3, "Cal"

    const-string v4, "loadEvents() returned null cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_7a

    .line 430
    if-eqz v10, :cond_70

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_70
    :goto_70
    return-void

    .line 412
    :catch_71
    move-exception v11

    .line 414
    .local v11, e:Ljava/lang/Exception;
    :try_start_72
    const-string v3, "Cal"

    const-string v4, "Query Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7a

    goto :goto_62

    .line 430
    .end local v6           #where:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #end:J
    .end local v14           #endDay:I
    .end local v15           #hideDeclined:Z
    .end local v16           #local:Landroid/text/format/Time;
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    .end local v18           #startDay:I
    :catchall_7a
    move-exception v3

    if-eqz v10, :cond_80

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v3

    .line 424
    .restart local v6       #where:Ljava/lang/String;
    .restart local v12       #end:J
    .restart local v14       #endDay:I
    .restart local v15       #hideDeclined:Z
    .restart local v16       #local:Landroid/text/format/Time;
    .restart local v17       #prefs:Landroid/content/SharedPreferences;
    .restart local v18       #startDay:I
    :cond_81
    if-nez p7, :cond_91

    :try_start_83
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_7a

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_91

    .line 430
    if-eqz v10, :cond_70

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 428
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2, v14}, Lcom/sec/android/app/clockpackage/deskclock/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_7a

    .line 430
    if-eqz v10, :cond_70

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_70
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/Event;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/deskclock/Event;-><init>()V

    .line 173
    .local v0, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    .line 174
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->color:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->color:I

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    .line 176
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    .line 177
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->alldayOrg:Z

    .line 178
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    .line 179
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    .line 180
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    .line 181
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    .line 182
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    .line 183
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    .line 184
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->hasAlarm:Z

    .line 185
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->isRepeating:Z

    .line 186
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->selfAttendeeStatus:I

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    .line 188
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->description:Ljava/lang/CharSequence;

    .line 191
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->latitude:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->latitude:I

    .line 192
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->longitude:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->longitude:I

    .line 193
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->eventType:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->eventType:I

    .line 194
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactDataId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactDataId:I

    .line 195
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactRawId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->contactRawId:I

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 198
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->calendarId:I

    iput v1, v0, Lcom/sec/android/app/clockpackage/deskclock/Event;->calendarId:I

    .line 199
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 267
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 270
    .local v1, e:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-ge v3, v4, :cond_c

    .line 320
    :cond_b
    :goto_b
    return v0

    .line 272
    :cond_c
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    if-le v3, v4, :cond_14

    move v0, v2

    .line 273
    goto :goto_b

    .line 274
    :cond_14
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    if-lt v3, v4, :cond_b

    .line 276
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->startTime:I

    if-le v3, v4, :cond_22

    move v0, v2

    .line 277
    goto :goto_b

    .line 281
    :cond_22
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-ge v3, v4, :cond_2a

    move v0, v2

    .line 282
    goto :goto_b

    .line 283
    :cond_2a
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    if-gt v3, v4, :cond_b

    .line 285
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    if-ge v3, v4, :cond_38

    move v0, v2

    .line 286
    goto :goto_b

    .line 287
    :cond_38
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    iget v4, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->endTime:I

    if-gt v3, v4, :cond_b

    .line 291
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_b

    .line 293
    :cond_46
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-nez v3, :cond_50

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->allDay:Z

    if-eqz v3, :cond_50

    move v0, v2

    .line 294
    goto :goto_b

    .line 296
    :cond_50
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_b

    .line 298
    :cond_58
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-nez v3, :cond_62

    iget-boolean v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->guestsCanModify:Z

    if-eqz v3, :cond_62

    move v0, v2

    .line 299
    goto :goto_b

    .line 303
    :cond_62
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 304
    .local v0, cmp:I
    if-nez v0, :cond_b

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 312
    if-nez v0, :cond_b

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/app/clockpackage/deskclock/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 317
    if-nez v0, :cond_b

    .line 320
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 849
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 873
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->endMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 865
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->startMillis:J

    return-wide v0
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 845
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mColumn:I

    .line 846
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 837
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mGroupId:I

    .line 838
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 853
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Event;->mMaxColumns:I

    .line 854
    return-void
.end method
