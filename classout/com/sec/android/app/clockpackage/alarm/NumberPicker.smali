.class public Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;,
        Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;,
        Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;,
        Lcom/sec/android/app/clockpackage/alarm/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

.field public static final TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;


# instance fields
.field protected mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field protected mEnd:I

.field private mFormatter:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

.field private mIsClicking:Z

.field private mIsSpeedVariable:Z

.field private mListener:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field protected mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mSpeedMax:J

.field private mSpeedMin:J

.field protected mStart:I

.field private mStartedTimeMil:J

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    .line 81
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$2;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->DIGIT_FORMATTER:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    .line 532
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_18
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 133
    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeed:J

    .line 134
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J

    .line 135
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsSpeedVariable:Z

    .line 136
    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMax:J

    .line 137
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMin:J

    .line 154
    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setOrientation(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 158
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030026

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;)V

    .line 162
    .local v1, inputFilter:Landroid/text/InputFilter;
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 164
    const v2, 0x7f0e00e3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setNumberPicker(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    .line 168
    const v2, 0x7f0e00e5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setNumberPicker(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    .line 173
    const v2, 0x7f0e00e4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsClicking:Z

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 186
    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setEnabled(Z)V

    .line 188
    :cond_a7
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/text/InputFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsSpeedVariable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;F)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->calculateSpeed(F)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method private calculateSpeed(F)J
    .registers 8
    .parameter "elapsedSecond"

    .prologue
    const v5, 0x40490e56

    .line 256
    cmpg-float v1, p1, v5

    if-gez v1, :cond_26

    .line 257
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMax:J

    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMin:J

    sub-long/2addr v1, v3

    neg-long v1, v1

    long-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v2, p1, v5

    mul-float/2addr v1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMin:J

    long-to-float v2, v2

    add-float v0, v1, v2

    .line 260
    .local v0, curSpeed:F
    float-to-long v1, v0

    .line 263
    .end local v0           #curSpeed:F
    :goto_25
    return-wide v1

    :cond_26
    iget-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeedMin:J

    goto :goto_25
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mFormatter:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mFormatter:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 9
    .parameter "str"

    .prologue
    .line 648
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v4, :cond_2a

    .line 649
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    add-int/lit8 v3, v4, 0x1

    .line 652
    .local v3, parsedInt:I
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v3

    .line 686
    .end local v3           #parsedInt:I
    :goto_c
    return v3

    .line 653
    .restart local v3       #parsedInt:I
    :catch_d
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "NumberPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSelectedPos() exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_c

    .line 661
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #parsedInt:I
    :cond_2a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4a

    .line 663
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, lowCaseStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 666
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    add-int v3, v4, v1

    goto :goto_c

    .line 661
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 677
    .end local v2           #lowCaseStr:Ljava/lang/String;
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_4f

    move-result v3

    goto :goto_c

    .line 678
    :catch_4f
    move-exception v0

    .line 681
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "NumberPicker"

    const-string v5, "wrong number has come in."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 686
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    goto :goto_c
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, val:I
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_1d

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_1d

    .line 407
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_1d

    .line 408
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mPrevious:I

    .line 409
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->notifyChange()V

    .line 414
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    .line 415
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 439
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    .line 448
    :goto_15
    return-void

    .line 446
    :cond_16
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "textWatcher"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    return-void
.end method

.method public cancelDecrement()V
    .registers 3

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrement:Z

    .line 529
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J

    .line 530
    return-void
.end method

.method public cancelIncrement()V
    .registers 3

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrement:Z

    .line 524
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J

    .line 525
    return-void
.end method

.method protected changeCurrent(I)V
    .registers 5
    .parameter "current"

    .prologue
    .line 356
    move v0, p1

    .line 359
    .local v0, changedCurrent:I
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    if-le p1, v1, :cond_20

    .line 360
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    .line 365
    :cond_7
    :goto_7
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mPrevious:I

    .line 366
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->notifyChange()V

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 374
    return-void

    .line 361
    :cond_20
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    if-ge p1, v1, :cond_7

    .line 362
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    goto :goto_7
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 703
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    return v0
.end method

.method public getCurrent2()I
    .registers 4

    .prologue
    .line 708
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_14

    .line 709
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 725
    :cond_13
    :goto_13
    return v0

    .line 711
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 713
    .local v0, retVal:I
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_2a

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    if-le v0, v1, :cond_13

    .line 717
    :cond_2a
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    if-eqz v1, :cond_33

    if-nez v0, :cond_33

    .line 722
    :goto_30
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    goto :goto_13

    .line 719
    :cond_33
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    goto :goto_30
.end method

.method protected notifyChange()V
    .registers 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mListener:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_d

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mListener:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$OnChangedListener;->onChanged(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;II)V

    .line 381
    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 315
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsClicking:Z

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 320
    .local v0, isEmptyText:Z
    if-eq v0, v3, :cond_41

    .line 321
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_61

    .line 323
    :cond_3c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 330
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 335
    :cond_4e
    const v1, 0x7f0e00e3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_6c

    .line 336
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->changeCurrent(I)V

    .line 348
    :cond_5e
    :goto_5e
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsClicking:Z

    .line 349
    return-void

    .line 325
    :cond_61
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_41

    .line 337
    :cond_6c
    const v1, 0x7f0e00e5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_7d

    .line 338
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->changeCurrent(I)V

    goto :goto_5e

    .line 339
    :cond_7d
    const v1, 0x7f0e00e4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_5e

    .line 340
    if-eq v0, v3, :cond_5e

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5e
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 423
    if-nez p2, :cond_6

    .line 424
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 435
    :goto_5
    return-void

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_10

    .line 519
    :cond_f
    :goto_f
    return v0

    .line 468
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_23

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 476
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00e4

    if-ne v1, v2, :cond_2e

    .line 481
    const/4 v0, 0x0

    goto :goto_f

    .line 494
    :cond_2e
    const v1, 0x7f0e00e3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_71

    .line 496
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setClicking(Z)V

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_67

    .line 500
    :cond_62
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 503
    :cond_67
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrement:Z

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 506
    :cond_71
    const v1, 0x7f0e00e5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 508
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setClicking(Z)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_aa

    .line 512
    :cond_a5
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 515
    :cond_aa
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrement:Z

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongPress()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongPress()V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "textWatcher"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    return-void
.end method

.method public setClicking(Z)V
    .registers 2
    .parameter "bClick"

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsClicking:Z

    .line 735
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "csIncrement"
    .parameter "csDecrement"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    return-void
.end method

.method public setCurrent(I)V
    .registers 2
    .parameter "current"

    .prologue
    .line 297
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    .line 300
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrementButton:Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 218
    return-void
.end method

.method public setFormatter(Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;)V
    .registers 2
    .parameter "formatter"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mFormatter:Lcom/sec/android/app/clockpackage/alarm/NumberPicker$Formatter;

    .line 226
    return-void
.end method

.method public setRange(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 244
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    .line 245
    iput p2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    .line 246
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->updateView()V

    .line 249
    return-void
.end method

.method public setSpeedVariable(Z)V
    .registers 2
    .parameter "isSpeedVariable"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsSpeedVariable:Z

    .line 253
    return-void
.end method

.method protected updateView()V
    .registers 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :goto_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 400
    return-void

    .line 396
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
