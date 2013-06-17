.class public Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorGPS.java"


# instance fields
.field mAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->init(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->init(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 72
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorGPS:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020149

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->addImageId(II)V

    .line 61
    const/4 v1, 0x1

    const/4 v2, 0x4

    const v3, 0x7f02014a

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->addImageId(II)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 76
    return-void
.end method

.method public setGPS(I)V
    .locals 2
    .parameter "gps"

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->replaceBackground(I)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->replaceBackground(I)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "TwIndicatorGPS"

    const-string v1, "GPS animation is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;-><init>(Lcom/sec/android/app/camera/widget/TwIndicatorGPS;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
