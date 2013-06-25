.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$NumberRangeKeyListener;,
        Landroid/widget/NumberPicker$NumberPickerInputFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field private static final DIGIT_HARDKEY_CHARACTERS:[C

.field private static final DIGIT_HARDKEY_CHARACTERS_BENNET:[C

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

.field private static final TW_DEBUG:Z


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/NumberPickerButton;

.field private mIsHardKey:Z

.field private mIsTouchButton:Z

.field private mListener:Landroid/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 87
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 556
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 561
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_HARDKEY_CHARACTERS_BENNET:[C

    .line 565
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_HARDKEY_CHARACTERS:[C

    return-void

    .line 556
    nop

    :array_0
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

    .line 561
    :array_1
    .array-data 0x2
        0x3ft 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x64t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x78t 0x0t
        0x63t 0x0t
        0x76t 0x0t
    .end array-data

    .line 565
    :array_2
    .array-data 0x2
        0x70t 0x0t
        0x71t 0x0t
        0x77t 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v6, Landroid/widget/NumberPicker$2;

    invoke-direct {v6, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v6, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 141
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 147
    iput-boolean v8, p0, Landroid/widget/NumberPicker;->mIsHardKey:Z

    .line 163
    invoke-virtual {p0, v9}, Landroid/widget/NumberPicker;->setOrientation(I)V

    .line 164
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 166
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x1090045

    invoke-virtual {v3, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Landroid/widget/NumberPicker$3;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 189
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v2, Landroid/widget/NumberPicker$4;

    invoke-direct {v2, p0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 213
    .local v2, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v5, Landroid/widget/NumberPicker$5;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    .line 242
    .local v5, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v4, Landroid/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v4, p0, v11}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    .line 243
    .local v4, inputFilter:Landroid/text/InputFilter;
    new-instance v6, Landroid/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v6, p0, v11}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    iput-object v6, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 244
    const v6, 0x102021a

    invoke-virtual {p0, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPickerButton;

    iput-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    .line 245
    iget-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 247
    iget-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 249
    const v6, 0x102021c

    invoke-virtual {p0, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPickerButton;

    iput-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    .line 250
    iget-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    iget-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v6, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 254
    const v6, 0x102021b

    invoke-virtual {p0, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 255
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 256
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v6, v10, :cond_1

    move v6, v9

    :goto_0
    iput-boolean v6, p0, Landroid/widget/NumberPicker;->mIsHardKey:Z

    .line 257
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x78

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Landroid/widget/NumberPicker;->mIsHardKey:Z

    if-nez v6, :cond_2

    .line 259
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 260
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 261
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v7, Landroid/widget/NumberPicker$6;

    invoke-direct {v7, p0}, Landroid/widget/NumberPicker$6;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    :goto_1
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v7, -0x8000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 284
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    invoke-virtual {p0, v8}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 294
    :cond_0
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->showCursorController(Z)V

    .line 295
    return-void

    :cond_1
    move v6, v8

    .line 256
    goto :goto_0

    .line 268
    :cond_2
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 269
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 270
    iget-object v6, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1600()[C
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$2000()[C
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_HARDKEY_CHARACTERS_BENNET:[C

    return-object v0
.end method

.method static synthetic access$2100()[C
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_HARDKEY_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIsTouchButton:Z

    return v0
.end method

.method private checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "filtered"
    .parameter "result"

    .prologue
    .line 690
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 691
    .local v0, inputStringSize:I
    iget v2, p0, Landroid/widget/NumberPicker;->mEnd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 693
    .local v1, maxSize:I
    if-le v0, v1, :cond_0

    .line 694
    const-string v2, ""

    .line 696
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 701
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 703
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 726
    :goto_0
    return v1

    .line 708
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 710
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 711
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 708
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 704
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 726
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    goto :goto_0

    .line 721
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/NumberPicker$OnChangedListener;->onChanged(Landroid/widget/NumberPicker;II)V

    .line 485
    :cond_0
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 777
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 498
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Landroid/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, val:I
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 515
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_1

    .line 516
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 517
    iput v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 518
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 521
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    goto :goto_0
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 525
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public SetIsTouchButton(Z)V
    .locals 0
    .parameter "isTouchButton"

    .prologue
    .line 553
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIsTouchButton:Z

    .line 554
    return-void
.end method

.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    .line 549
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    .line 542
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 459
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 460
    iget p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 464
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 465
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 466
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 467
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 473
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 474
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 475
    return-void

    .line 461
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 462
    iget p1, p0, Landroid/widget/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method protected getBeginRange()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method public getMText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->cancelIncrement()V

    .line 762
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->cancelDecrement()V

    .line 763
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 414
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-ne v0, p1, :cond_2

    if-eqz p1, :cond_2

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_2
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 428
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 345
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 369
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 370
    return-void
.end method

.method public setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 360
    iput-object p1, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    .line 361
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 393
    iput-object p3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 394
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 395
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 396
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 397
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 399
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIsHardKey:Z

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 439
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 440
    return-void
.end method

.method public setStringMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x2

    .line 348
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 349
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_1

    .line 350
    iget-object v1, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 352
    :cond_1
    return-void
.end method

.method public twSetMaxInputLength(I)V
    .locals 6
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 302
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 303
    .local v1, filterArr:[Landroid/text/InputFilter;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 304
    aget-object v0, v1, v5

    .line 305
    .local v0, backupFilter:Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 306
    .local v2, lengthFilter:Landroid/text/InputFilter;
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 308
    .end local v0           #backupFilter:Landroid/text/InputFilter;
    .end local v2           #lengthFilter:Landroid/text/InputFilter;
    :cond_0
    return-void
.end method

.method public twSetMonthInputMode()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 328
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method
