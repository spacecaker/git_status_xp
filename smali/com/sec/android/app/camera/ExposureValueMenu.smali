.class public Lcom/sec/android/app/camera/ExposureValueMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ExposureValueMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;,
        Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;,
        Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;
    }
.end annotation


# instance fields
.field private mExposureValue:I

.field private mExposureValueSeekBar:Landroid/widget/SeekBar;

.field mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mExposureValueTextview:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongTouchHandler:Landroid/os/Handler;

.field private mLongtouch:Z

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

.field private mResolution3m:Z

.field private mSelectedView:Landroid/view/View;

.field private popTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 65
    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 66
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    .line 68
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    .line 75
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;Lcom/sec/android/app/camera/ExposureValueMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$LongTouchEventHandler;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;Lcom/sec/android/app/camera/ExposureValueMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/sec/android/app/camera/ExposureValueMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ExposureValueMenu$1;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->init()V

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/ExposureValueMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/ExposureValueMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/ExposureValueMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const v5, 0x7f0a0098

    const v4, 0x7f0a0097

    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 123
    const-string v1, "2048x1536"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    goto :goto_0
.end method

.method private resetExposureValueTimer()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->startExposureValueMenuTimer()V

    .line 276
    return-void
.end method

.method private setSeekBarValue(Landroid/widget/SeekBar;I)V
    .locals 1
    .parameter "seekBar"
    .parameter "value"

    .prologue
    .line 366
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 367
    return-void
.end method

.method private stopExposureValueMenuTimer()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    return-void
.end method

.method private updatePopupText(Landroid/widget/SeekBar;F)V
    .locals 13
    .parameter "aSeekBar"
    .parameter "mValue"

    .prologue
    const/4 v12, 0x1

    .line 320
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .local v4, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    .line 322
    .local v5, seekBarleftPadding:I
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 323
    .local v1, leftPadding:I
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 324
    .local v8, topPadding:I
    iget v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v11, v5, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 327
    .local v6, strips:F
    iget-boolean v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    if-ne v10, v12, :cond_0

    .line 328
    float-to-int v10, p2

    sub-int v3, v10, v12

    .line 333
    .local v3, offset:I
    :goto_0
    iget v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v11, v3

    mul-float/2addr v11, v6

    float-to-int v11, v11

    add-int v0, v10, v11

    .line 334
    .local v0, leftMargin:I
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 335
    .local v7, topMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v10, v0, v1

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 337
    sub-int v10, v7, v8

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 338
    iget-object v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a009d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 342
    .local v9, tv:Landroid/widget/TextView;
    iget-boolean v10, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    if-ne v10, v12, :cond_1

    .line 343
    float-to-int v10, p2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_1
    return-void

    .line 330
    .end local v0           #leftMargin:I
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #offset:I
    .end local v7           #topMargin:I
    .end local v9           #tv:Landroid/widget/TextView;
    :cond_0
    const/high16 v10, 0x4000

    mul-float/2addr v10, p2

    float-to-int v10, v10

    add-int/lit8 v3, v10, 0x4

    .restart local v3       #offset:I
    goto :goto_0

    .line 345
    .restart local v0       #leftMargin:I
    .restart local v2       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #topMargin:I
    .restart local v9       #tv:Landroid/widget/TextView;
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V
    .locals 10
    .parameter "aSeekBar"
    .parameter "tv"
    .parameter "mValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 292
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    .local v2, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    .line 294
    .local v3, seekBarleftPadding:I
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 297
    .local v4, strips:F
    iget-boolean v6, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    if-ne v6, v8, :cond_0

    .line 298
    float-to-int v6, p3

    sub-int v1, v6, v8

    .line 304
    .local v1, offset:I
    :goto_0
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    .local v5, topMargin:I
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v1

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int v0, v6, v7

    .line 306
    .local v0, leftMargin:I
    const/4 v2, 0x0

    .line 307
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 308
    .restart local v2       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0, v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-boolean v6, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    if-ne v6, v8, :cond_1

    .line 313
    float-to-int v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_1
    return-void

    .line 300
    .end local v0           #leftMargin:I
    .end local v1           #offset:I
    .end local v5           #topMargin:I
    :cond_0
    const/high16 v6, 0x4000

    mul-float/2addr v6, p3

    float-to-int v6, v6

    add-int/lit8 v1, v6, 0x4

    .restart local v1       #offset:I
    goto :goto_0

    .line 315
    .restart local v0       #leftMargin:I
    .restart local v5       #topMargin:I
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 394
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 352
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 218
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->setPlus()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->setMinus()V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0097
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 357
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 416
    :goto_0
    return v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 403
    goto :goto_0

    .line 406
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 407
    goto :goto_0

    .line 410
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 413
    goto :goto_0

    :cond_5
    move v0, v2

    .line 416
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 420
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 438
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 425
    goto :goto_0

    .line 428
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 429
    goto :goto_0

    .line 432
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 435
    goto :goto_0

    :cond_5
    move v0, v2

    .line 438
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->setLongTouch(Z)V

    .line 182
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mSelectedView:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    return v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 362
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 378
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 384
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->startExposureValueMenuTimer()V

    .line 385
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 386
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExposureValueMenu;->onClick(Landroid/view/View;)V

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 199
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->setLongTouch(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongTouchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExposureValueMenu;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLongTouch(Z)V
    .locals 0
    .parameter "longTouch"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mLongtouch:Z

    .line 189
    return-void
.end method

.method public setMinus()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x1

    .line 242
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->resetExposureValueTimer()V

    .line 243
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    sub-int/2addr v0, v2

    const/4 v1, -0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    sub-int/2addr v0, v2

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 247
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    if-ne v0, v2, :cond_3

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;->onExposureValueChanged(I)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    goto :goto_1
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    .line 263
    return-void
.end method

.method public setPlus()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->resetExposureValueTimer()V

    .line 222
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mResolution3m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;->onExposureValueChanged(I)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValueSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mExposureValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->updatePopupText(Landroid/widget/SeekBar;F)V

    goto :goto_1
.end method

.method public startExposureValueMenuTimer()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    return-void
.end method
