.class public Lcom/sec/android/app/camera/widget/TwImageNumber;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwImageNumber.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->init(Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->init(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageNumber;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorRemainCount:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020158

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 52
    const v1, 0x7f020159

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 55
    const v1, 0x7f02015a

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 58
    const v1, 0x7f02015b

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 62
    const v1, 0x7f02015c

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 65
    const/4 v1, 0x5

    const/4 v2, 0x5

    const v3, 0x7f02015d

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 68
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f02015e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 71
    const/4 v1, 0x7

    const/4 v2, 0x7

    const v3, 0x7f02015f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 75
    const/16 v1, 0x8

    const/16 v2, 0x8

    const v3, 0x7f020160

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 78
    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f020161

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwImageNumber;->addImageId(II)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method


# virtual methods
.method public setNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 91
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwImageNumber;->replaceBackground(I)V

    goto :goto_0
.end method
