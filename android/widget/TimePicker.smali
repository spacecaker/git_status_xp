.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$TwTextWatcher;,
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mHourPicker:Landroid/widget/NumberPicker;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Landroid/widget/NumberPicker;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, ""

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 71
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 72
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 408
    iput-boolean v7, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    .line 410
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 412
    iput v7, p0, Landroid/widget/TimePicker;->PICKER_HOUR:I

    .line 413
    iput v8, p0, Landroid/widget/TimePicker;->PICKER_MINUTE:I

    .line 109
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 111
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109006a

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    const v4, 0x1020240

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    .line 117
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 140
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 142
    const v4, 0x1020241

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    .line 143
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v7, v5}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 144
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 145
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    sget-object v5, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 146
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 158
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 161
    const v4, 0x1020242

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 165
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, cal:Ljava/util/Calendar;
    sget-object v4, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 172
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 173
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 175
    iget v4, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v4, v10, :cond_1

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 178
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 179
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 187
    aget-object v4, v2, v8

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 193
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v5, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/TimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    invoke-virtual {p0, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 227
    :cond_0
    invoke-direct {p0}, Landroid/widget/TimePicker;->setTextWatcher()V

    .line 228
    return-void

    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :cond_1
    move v4, v7

    .line 175
    goto :goto_0

    .line 193
    .restart local v1       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v2       #dfsAmPm:[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private configurePickerRanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v3, v1}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 380
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    sget-object v1, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 381
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 384
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 385
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 391
    return-void
.end method

.method private setTextWatcher()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 417
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 419
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 420
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    return-void
.end method

.method private updateHourDisplay()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 365
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 366
    .local v0, currentHour:I
    iget-object v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    if-le v0, v2, :cond_1

    add-int/lit8 v0, v0, -0xc

    .line 371
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 372
    iget v1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 373
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    .line 375
    return-void

    .line 369
    :cond_1
    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 372
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 373
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_2
.end method

.method private updateMinuteDisplay()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 398
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 399
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 293
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    move-object v1, v0

    .line 294
    .local v1, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 295
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 296
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 297
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 288
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    iget v3, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentHour"

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 319
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 320
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentMinute"

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 353
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteDisplay()V

    .line 354
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "is24HourView"

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 328
    iput-object p1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 329
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 330
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 332
    :cond_0
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 304
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 305
    return-void
.end method
