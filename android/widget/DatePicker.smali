.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$TwTextWatcher;,
        Landroid/widget/DatePicker$TwKeyListener;,
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final NUMBER_OF_MONTHS:I = 0xc

.field private static final TW_DEBUG:Z


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private isNumMonth:Z

.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mMonth:I

.field mMonthEdit:Landroid/widget/EditText;

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private mYear:I

.field private final mYearPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 563
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 565
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    .line 566
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    .line 568
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/DatePicker;->PICKER_DAY:I

    .line 569
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/DatePicker;->PICKER_MONTH:I

    .line 570
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/DatePicker;->PICKER_YEAR:I

    .line 572
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/DatePicker;->FORMAT_MMDDYYYY:I

    .line 573
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/DatePicker;->FORMAT_DDMMYYYY:I

    .line 574
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/DatePicker;->FORMAT_YYYYMMDD:I

    .line 583
    new-instance v8, Landroid/widget/DatePicker$4;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$4;-><init>(Landroid/widget/DatePicker;)V

    iput-object v8, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 122
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 123
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x1090021

    const/4 v9, 0x1

    invoke-virtual {v4, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    const v8, 0x10201bc

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 131
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 132
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 133
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 134
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$1;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 140
    const v8, 0x10201bb

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 150
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/DatePicker;->mMonthEdit:Landroid/widget/EditText;

    .line 152
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 153
    .local v2, config:Landroid/content/res/Configuration;
    iget v8, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 154
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthEdit:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 163
    :cond_0
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 166
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 167
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, months:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 176
    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    .line 186
    .end local v3           #i:I
    :goto_1
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10, v7}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 187
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 188
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$2;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 201
    const v8, 0x10201bd

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 208
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 209
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 210
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$3;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 221
    sget-object v8, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/16 v9, 0x76c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 224
    .local v6, mStartYear:I
    const/4 v8, 0x1

    const/16 v9, 0x834

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 225
    .local v5, mEndYear:I
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v6, v5}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 231
    .local v1, cal:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 234
    invoke-direct {p0, v7}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 237
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 239
    :cond_2
    return-void

    .line 182
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v5           #mEndYear:I
    .end local v6           #mStartYear:I
    :cond_3
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setStringMode(Z)V

    goto/16 :goto_1
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/DatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/DatePicker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    return v0
.end method

.method static synthetic access$802(Landroid/widget/DatePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/DatePicker;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 543
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDayOfMonth()I

    move-result v0

    .line 544
    .local v0, max:I
    const-string v1, "DatePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustMaxDat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v1, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v1, v0, :cond_0

    .line 546
    iput v0, p0, Landroid/widget/DatePicker;->mDay:I

    .line 548
    :cond_0
    return-void
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 365
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 366
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 379
    :goto_0
    return-object v2

    .line 369
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 371
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 372
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 373
    iget-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :cond_1
    iput-object v0, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 378
    .end local v1           #i:I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 554
    :cond_0
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 11
    .parameter "months"

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 287
    .local v5, format:Ljava/text/DateFormat;
    instance-of v10, v5, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_2

    .line 288
    check-cast v5, Ljava/text/SimpleDateFormat;

    .end local v5           #format:Ljava/text/DateFormat;
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, order:Ljava/lang/String;
    :goto_0
    const v10, 0x10201ba

    invoke-virtual {p0, v10}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 298
    .local v8, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, quoted:Z
    const/4 v2, 0x0

    .local v2, didDay:Z
    const/4 v3, 0x0

    .local v3, didMonth:Z
    const/4 v4, 0x0

    .line 303
    .local v4, didYear:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 304
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, c:C
    const/16 v10, 0x27

    if-ne v0, v10, :cond_0

    .line 307
    if-nez v9, :cond_3

    const/4 v10, 0x1

    move v9, v10

    .line 310
    :cond_0
    :goto_2
    if-nez v9, :cond_1

    .line 311
    const/16 v10, 0x64

    if-ne v0, v10, :cond_4

    if-nez v2, :cond_4

    .line 312
    iget-object v10, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    const/4 v2, 0x1

    .line 303
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 291
    .end local v0           #c:C
    .end local v2           #didDay:Z
    .end local v3           #didMonth:Z
    .end local v4           #didYear:Z
    .end local v6           #i:I
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #parent:Landroid/widget/LinearLayout;
    .end local v9           #quoted:Z
    .restart local v5       #format:Ljava/text/DateFormat;
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>([C)V

    .restart local v7       #order:Ljava/lang/String;
    goto :goto_0

    .line 307
    .end local v5           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v2       #didDay:Z
    .restart local v3       #didMonth:Z
    .restart local v4       #didYear:Z
    .restart local v6       #i:I
    .restart local v8       #parent:Landroid/widget/LinearLayout;
    .restart local v9       #quoted:Z
    :cond_3
    const/4 v10, 0x0

    move v9, v10

    goto :goto_2

    .line 314
    :cond_4
    const/16 v10, 0x4d

    if-eq v0, v10, :cond_5

    const/16 v10, 0x4c

    if-ne v0, v10, :cond_6

    :cond_5
    if-nez v3, :cond_6

    .line 315
    iget-object v10, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    const/4 v3, 0x1

    goto :goto_3

    .line 317
    :cond_6
    const/16 v10, 0x79

    if-ne v0, v10, :cond_1

    if-nez v4, :cond_1

    .line 318
    iget-object v10, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    const/4 v4, 0x1

    goto :goto_3

    .line 325
    .end local v0           #c:C
    :cond_7
    if-nez v3, :cond_8

    .line 326
    iget-object v10, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    :cond_8
    if-nez v2, :cond_9

    .line 329
    iget-object v10, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    :cond_9
    if-nez v4, :cond_a

    .line 332
    iget-object v10, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :cond_a
    const/4 v1, 0x0

    .line 342
    .local v1, date_format:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    .restart local v0       #c:C
    const/16 v10, 0x4d

    if-ne v0, v10, :cond_c

    .line 344
    const/4 v1, 0x0

    .line 350
    :cond_b
    :goto_4
    invoke-direct {p0, v1}, Landroid/widget/DatePicker;->setTextWatcher(I)V

    .line 351
    return-void

    .line 345
    :cond_c
    const/16 v10, 0x64

    if-ne v0, v10, :cond_d

    .line 346
    const/4 v1, 0x1

    goto :goto_4

    .line 347
    :cond_d
    const/16 v10, 0x79

    if-ne v0, v10, :cond_b

    .line 348
    const/4 v1, 0x2

    goto :goto_4
.end method

.method private setTextWatcher(I)V
    .locals 7
    .parameter "format"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 644
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 645
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v4}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 646
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 647
    return-void

    .line 598
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 599
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 600
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 602
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 604
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 608
    :goto_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 609
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 613
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 614
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 615
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 617
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 618
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 624
    :goto_2
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 628
    :pswitch_2
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 629
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 630
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 632
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 633
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 635
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 639
    :goto_3
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 679
    return-void
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 495
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 500
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 501
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 449
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method protected getMaxDayOfMonth()I
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 522
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 523
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 524
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 525
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 527
    .local v1, max:I
    return v1
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 484
    const/16 v0, 0x834

    if-le p1, v0, :cond_0

    const/16 p1, 0x834

    .line 486
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 487
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 488
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 489
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 490
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 491
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 460
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 461
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 462
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 463
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 464
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 465
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 466
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 453
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 455
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 258
    return-void
.end method

.method public twSetRangeOfYear(II)V
    .locals 1
    .parameter "startYear"
    .parameter "endYear"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 248
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 249
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 354
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 355
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 356
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 357
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 358
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 359
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    .line 362
    :cond_1
    return-void
.end method

.method protected updateDaySpinner()V
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDayOfMonth()I

    move-result v0

    .line 516
    .local v0, max:I
    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 517
    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 518
    return-void
.end method
