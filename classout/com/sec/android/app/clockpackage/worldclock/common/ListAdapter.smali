.class public Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFirstStartAnimationForDeleteCheckBox:Z

.field private mLayoutID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mIsFirstStartAnimationForDeleteCheckBox:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private isDaylightTime(Ljava/lang/String;)Z
    .registers 5
    .parameter "tzID"

    .prologue
    .line 275
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 276
    .local v1, tmpz:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 278
    .local v0, now:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    if-nez p2, :cond_32

    .line 64
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v13, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v3, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;

    .end local v3           #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    move-object/from16 v0, p2

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;Landroid/view/View;)V

    .line 66
    .restart local v3       #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_18
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 73
    .local v6, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v6, :cond_31

    .line 78
    const/4 v5, 0x0

    .line 81
    .local v5, isDST:Z
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getTopLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    sparse-switch v12, :sswitch_data_3c8

    .line 270
    .end local v5           #isDST:Z
    :cond_31
    :goto_31
    return-object p2

    .line 68
    .end local v6           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    check-cast v3, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;

    .restart local v3       #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    goto :goto_18

    .line 86
    .restart local v5       #isDST:Z
    .restart local v6       #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :sswitch_39
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_127

    .line 87
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v5

    .line 88
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 95
    .local v11, tz:Ljava/util/TimeZone;
    :goto_50
    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 97
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 98
    .local v8, time:Landroid/text/format/Time;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->year:I

    .line 99
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->month:I

    .line 100
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->monthDay:I

    .line 101
    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->hour:I

    .line 102
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->minute:I

    .line 103
    const/4 v12, 0x0

    iput v12, v8, Landroid/text/format/Time;->second:I

    .line 105
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setToNow(Landroid/text/format/Time;)V

    .line 106
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_154

    .line 109
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v13

    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v12, :cond_145

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0095

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_ba
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_bd
    new-instance v9, Ljava/util/Date;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x76c

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-direct {v9, v12, v13, v14}, Ljava/util/Date;-><init>(III)V

    .line 125
    .local v9, timeZoneDate:Ljava/util/Date;
    const-string v12, "GT-I9100"

    const-string v13, "SGH-I927"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 126
    const-string v12, "E d MMM, yyyy"

    invoke-static {v12, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, dayValue:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v2           #dayValue:Ljava/lang/String;
    :goto_ee
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v7, 0x7f020292

    .line 140
    .local v7, resId:I
    const/4 v12, 0x1

    if-eq v5, v12, :cond_10d

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_173

    .line 141
    :cond_10d
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v7, 0x7f0202c3

    .line 149
    :cond_120
    :goto_120
    iget-object v12, v3, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_31

    .line 90
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #resId:I
    .end local v8           #time:Landroid/text/format/Time;
    .end local v9           #timeZoneDate:Ljava/util/Date;
    .end local v11           #tz:Ljava/util/TimeZone;
    :cond_127
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 91
    .local v10, tmpz:Ljava/util/TimeZone;
    new-instance v11, Ljava/util/SimpleTimeZone;

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    const v13, 0x36ee80

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v14

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    const-string v13, "GMT"

    invoke-direct {v11, v12, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v11       #tz:Ljava/util/TimeZone;
    goto/16 :goto_50

    .line 110
    .end local v10           #tmpz:Ljava/util/TimeZone;
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v8       #time:Landroid/text/format/Time;
    :cond_145
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0096

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_ba

    .line 116
    :cond_154
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bd

    .line 130
    .restart local v9       #timeZoneDate:Ljava/util/Date;
    :cond_15e
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ee

    .line 144
    .restart local v7       #resId:I
    :cond_173
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_120

    .line 145
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v7, 0x7f0202c4

    goto :goto_120

    .line 155
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #resId:I
    .end local v8           #time:Landroid/text/format/Time;
    .end local v9           #timeZoneDate:Ljava/util/Date;
    .end local v11           #tz:Ljava/util/TimeZone;
    :sswitch_18e
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_24d

    .line 156
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v5

    .line 157
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 164
    .restart local v11       #tz:Ljava/util/TimeZone;
    :goto_1a5
    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 166
    .restart local v1       #calendar:Ljava/util/Calendar;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 167
    .restart local v8       #time:Landroid/text/format/Time;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->year:I

    .line 168
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->month:I

    .line 169
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->monthDay:I

    .line 170
    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->hour:I

    .line 171
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->minute:I

    .line 172
    const/4 v12, 0x0

    iput v12, v8, Landroid/text/format/Time;->second:I

    .line 174
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_279

    .line 177
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v13

    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v12, :cond_26b

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0095

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_208
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_20b
    new-instance v9, Ljava/util/Date;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x76c

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-direct {v9, v12, v13, v14}, Ljava/util/Date;-><init>(III)V

    .line 192
    .restart local v9       #timeZoneDate:Ljava/util/Date;
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getCheckButton()Landroid/widget/CheckBox;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    iget-boolean v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mIsFirstStartAnimationForDeleteCheckBox:Z

    if-eqz v12, :cond_31

    .line 198
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getCheckButton()Landroid/widget/CheckBox;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_31

    .line 159
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v8           #time:Landroid/text/format/Time;
    .end local v9           #timeZoneDate:Ljava/util/Date;
    .end local v11           #tz:Ljava/util/TimeZone;
    :cond_24d
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 160
    .restart local v10       #tmpz:Ljava/util/TimeZone;
    new-instance v11, Ljava/util/SimpleTimeZone;

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    const v13, 0x36ee80

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v14

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    const-string v13, "GMT"

    invoke-direct {v11, v12, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v11       #tz:Ljava/util/TimeZone;
    goto/16 :goto_1a5

    .line 178
    .end local v10           #tmpz:Ljava/util/TimeZone;
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v8       #time:Landroid/text/format/Time;
    :cond_26b
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0096

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_208

    .line 184
    :cond_279
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20b

    .line 203
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v8           #time:Landroid/text/format/Time;
    .end local v11           #tz:Ljava/util/TimeZone;
    :sswitch_282
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_33e

    .line 204
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v5

    .line 205
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 212
    .restart local v11       #tz:Ljava/util/TimeZone;
    :goto_299
    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 214
    .restart local v1       #calendar:Ljava/util/Calendar;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 215
    .restart local v8       #time:Landroid/text/format/Time;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->year:I

    .line 216
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->month:I

    .line 217
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->monthDay:I

    .line 218
    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->hour:I

    .line 219
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iput v12, v8, Landroid/text/format/Time;->minute:I

    .line 220
    const/4 v12, 0x0

    iput v12, v8, Landroid/text/format/Time;->second:I

    .line 222
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_36a

    .line 225
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v13

    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v12, :cond_35c

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0095

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2fc
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_2ff
    new-instance v9, Ljava/util/Date;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x76c

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-direct {v9, v12, v13, v14}, Ljava/util/Date;-><init>(III)V

    .line 240
    .restart local v9       #timeZoneDate:Ljava/util/Date;
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v7, 0x7f020292

    .line 244
    .restart local v7       #resId:I
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_373

    .line 245
    const v7, 0x7f020290

    .line 250
    :cond_335
    :goto_335
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_31

    .line 207
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #resId:I
    .end local v8           #time:Landroid/text/format/Time;
    .end local v9           #timeZoneDate:Ljava/util/Date;
    .end local v11           #tz:Ljava/util/TimeZone;
    :cond_33e
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 208
    .restart local v10       #tmpz:Ljava/util/TimeZone;
    new-instance v11, Ljava/util/SimpleTimeZone;

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    const v13, 0x36ee80

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v14

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    const-string v13, "GMT"

    invoke-direct {v11, v12, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v11       #tz:Ljava/util/TimeZone;
    goto/16 :goto_299

    .line 226
    .end local v10           #tmpz:Ljava/util/TimeZone;
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v8       #time:Landroid/text/format/Time;
    :cond_35c
    iget-object v12, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b0096

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2fc

    .line 232
    :cond_36a
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2ff

    .line 246
    .restart local v7       #resId:I
    .restart local v9       #timeZoneDate:Ljava/util/Date;
    :cond_373
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_335

    .line 247
    const v7, 0x7f020291

    goto :goto_335

    .line 256
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #resId:I
    .end local v8           #time:Landroid/text/format/Time;
    .end local v9           #timeZoneDate:Ljava/util/Date;
    .end local v11           #tz:Ljava/util/TimeZone;
    :sswitch_37e
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getBottomLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const-string v12, "800x480"

    const-string v13, "1280x800"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3bb

    const-string v12, "800x480"

    const-string v13, "1280x720"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3bb

    const-string v12, "GT-I9100"

    const-string v13, "GT-I9221"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3bb

    const-string v12, "GT-I9100"

    const-string v13, "GT-I9220"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3bb

    const-string v12, "GT-I9100"

    const-string v13, "GT-I9228"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 260
    :cond_3bb
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getNationalFlag()Landroid/widget/ImageView;

    move-result-object v4

    .line 261
    .local v4, img:Landroid/widget/ImageView;
    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getNationalFlag()I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_31

    .line 83
    :sswitch_data_3c8
    .sparse-switch
        0x7f030033 -> :sswitch_18e
        0x7f030037 -> :sswitch_282
        0x7f03003a -> :sswitch_39
        0x7f03003c -> :sswitch_37e
    .end sparse-switch
.end method
