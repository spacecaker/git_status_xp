.class public Lcom/sec/android/app/camera/widget/TwIndicatorBattery;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorBattery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->init(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorBattery:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020159

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 56
    const v1, 0x7f02015a

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 59
    const v1, 0x7f02015b

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 62
    const v1, 0x7f02015c

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 65
    const v1, 0x7f02015d

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 68
    const/4 v1, 0x5

    const/4 v2, 0x5

    const v3, 0x7f02015e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 71
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f02015f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->addImageId(II)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 79
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    if-gez p1, :cond_1

    .line 85
    const/4 p1, 0x0

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->replaceBackground(I)V

    goto :goto_0
.end method
