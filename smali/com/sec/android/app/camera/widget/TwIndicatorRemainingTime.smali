.class public Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;
.super Landroid/widget/RelativeLayout;
.source "TwIndicatorRemainingTime.java"


# instance fields
.field private final DIGITS_SPACING:I

.field private final MAX_RECORDING_TIME:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private final SECONDS_IN_A_MINUTE:I

.field private mDigitsPosition:[I

.field private mHoursTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mHoursUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mMinutesTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mMinutesUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/widget/TwImageNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondsTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mSecondsUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

.field private mSeperatorHoursMinutes:Landroid/widget/ImageView;

.field private mSeperatorMinutesSeconds:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->DIGITS_SPACING:I

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->SECONDS_IN_A_MINUTE:I

    .line 36
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->SECONDS_IN_AN_HOUR:I

    .line 37
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->SECONDS_IN_A_DAY:I

    .line 38
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->MAX_RECORDING_TIME:I

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private addMyView(Landroid/view/View;I)V
    .locals 4
    .parameter "myView"
    .parameter "leftmargin"

    .prologue
    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f020139

    .line 61
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->DIGITS_SPACING:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    aput v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 65
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 66
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 67
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 68
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 69
    new-instance v1, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 70
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorHoursMinutes:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorHoursMinutes:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorMinutesSeconds:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorMinutesSeconds:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorHoursMinutes:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSeperatorMinutesSeconds:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mDigitsPosition:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->addMyView(Landroid/view/View;I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mNumberList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method private setImageSource(ILcom/sec/android/app/camera/widget/TwImageNumber;Lcom/sec/android/app/camera/widget/TwImageNumber;)V
    .locals 2
    .parameter "val"
    .parameter "ten"
    .parameter "unit"

    .prologue
    .line 119
    rem-int/lit8 v1, p1, 0xa

    .line 120
    .local v1, unitNum:I
    div-int/lit8 v0, p1, 0xa

    .line 122
    .local v0, tenNum:I
    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setNumber(I)V

    .line 123
    invoke-virtual {p3, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setNumber(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public setRemainTime(I)V
    .locals 5
    .parameter "seconds"

    .prologue
    .line 105
    const v3, 0x1517f

    if-le p1, v3, :cond_0

    .line 106
    const p1, 0x1517f

    .line 109
    :cond_0
    rem-int/lit8 v2, p1, 0x3c

    .line 110
    .local v2, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 111
    .local v0, hr:I
    div-int/lit8 v3, p1, 0x3c

    mul-int/lit8 v4, v0, 0x3c

    sub-int v1, v3, v4

    .line 113
    .local v1, min:I
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mHoursUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->setImageSource(ILcom/sec/android/app/camera/widget/TwImageNumber;Lcom/sec/android/app/camera/widget/TwImageNumber;)V

    .line 114
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mMinutesUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->setImageSource(ILcom/sec/android/app/camera/widget/TwImageNumber;Lcom/sec/android/app/camera/widget/TwImageNumber;)V

    .line 115
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsTen:Lcom/sec/android/app/camera/widget/TwImageNumber;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->mSecondsUnit:Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->setImageSource(ILcom/sec/android/app/camera/widget/TwImageNumber;Lcom/sec/android/app/camera/widget/TwImageNumber;)V

    .line 116
    return-void
.end method
