.class public Lcom/sec/android/app/camera/widget/TwIndicatorResolution;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorResolution.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->init(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->init(Landroid/util/AttributeSet;)V

    .line 58
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

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorResolution:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020173

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 66
    const v1, 0x7f02017d

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 69
    const v1, 0x7f020170

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 72
    const v1, 0x7f02017b

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 75
    const v1, 0x7f02016d

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 78
    const/4 v1, 0x5

    const/4 v2, 0x5

    const v3, 0x7f020179

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 81
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f020169

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 84
    const/4 v1, 0x7

    const/4 v2, 0x7

    const v3, 0x7f020164

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 87
    const/16 v1, 0x8

    const/16 v2, 0x8

    const v3, 0x7f020178

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 90
    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f020163

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 93
    const/16 v1, 0xa

    const/16 v2, 0xa

    const v3, 0x7f020177

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 96
    const/16 v1, 0xb

    const/16 v2, 0xb

    const v3, 0x7f020165

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 99
    const/16 v1, 0xc

    const/16 v2, 0xc

    const v3, 0x7f020175

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 102
    const/16 v1, 0xd

    const/16 v2, 0xd

    const v3, 0x7f020174

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 105
    const/16 v1, 0xe

    const/16 v2, 0xe

    const v3, 0x7f02016e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 108
    const/16 v1, 0xf

    const/16 v2, 0xf

    const v3, 0x7f020168

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method public setResolution(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 116
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->replaceBackground(I)V

    goto :goto_0
.end method
