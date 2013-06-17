.class public Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;
.super Landroid/widget/RelativeLayout;
.source "TwIndicatorsRemainCount.java"


# instance fields
.field private final DIGIT_HEIGHT:I

.field private final DIGIT_WIDTH:I

.field private mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x5

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->DIGIT_WIDTH:I

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->DIGIT_HEIGHT:I

    .line 43
    new-array v2, v5, [Lcom/sec/android/app/camera/widget/TwImageNumber;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    .line 45
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 46
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwImageNumber;

    invoke-direct {v3, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v3, v2, v0

    .line 47
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->DIGIT_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->DIGIT_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->DIGIT_WIDTH:I

    sub-int v3, v5, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public setRemainCount(I)V
    .locals 11
    .parameter "num"

    .prologue
    const-wide/high16 v9, 0x4024

    const-wide/high16 v7, 0x4014

    const/4 v6, 0x0

    .line 56
    const-string v2, "TwIndicatorsRemainCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRemainCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .line 60
    .local v1, ix:I
    if-gez p1, :cond_0

    .line 61
    const/4 p1, 0x0

    .line 66
    :cond_0
    int-to-double v2, p1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 67
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    sub-int p1, v2, v3

    .line 70
    :cond_1
    if-nez p1, :cond_2

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v6

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setNumber(I)V

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setVisibility(I)V

    .line 73
    const/4 v1, 0x1

    .line 75
    :cond_2
    if-lez p1, :cond_3

    .line 76
    :goto_0
    if-lez p1, :cond_3

    .line 77
    rem-int/lit8 v0, p1, 0xa

    .line 78
    .local v0, digit:I
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setNumber(I)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setVisibility(I)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    div-int/lit8 p1, p1, 0xa

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #digit:I
    :cond_3
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->mDigit:[Lcom/sec/android/app/camera/widget/TwImageNumber;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageNumber;->setVisibility(I)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_4
    return-void
.end method
