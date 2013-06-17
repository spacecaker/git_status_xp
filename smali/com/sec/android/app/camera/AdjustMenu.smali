.class public Lcom/sec/android/app/camera/AdjustMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "AdjustMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;
    }
.end annotation


# instance fields
.field private mContrastSeekBar:Landroid/widget/SeekBar;

.field mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mContrastTextview:Landroid/widget/TextView;

.field private mContrastValue:I

.field private mLongtouch:Z

.field protected mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

.field protected mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

.field protected mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

.field private mSaturationSeekBar:Landroid/widget/SeekBar;

.field mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSaturationTextview:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSharpnessSeekBar:Landroid/widget/SeekBar;

.field mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSharpnessTextview:Landroid/widget/TextView;

.field private mSharpnessValue:I

.field private mTempContrastValue:I

.field private mTempSaturationValue:I

.field private mTempSharpnessValue:I

.field private popTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 1
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    .line 161
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$1;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 183
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$2;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 205
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$3;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/AdjustMenu;->init()V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/AdjustMenu;->updatePopupText(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, 0x7f0a0012

    const v5, 0x7f0a0011

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;-><init>(Lcom/sec/android/app/camera/AdjustMenu;Lcom/sec/android/app/camera/AdjustMenu$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    goto/16 :goto_0
.end method

.method private setSeekBarValue(Landroid/widget/SeekBar;I)V
    .locals 0
    .parameter "seekBar"
    .parameter "value"

    .prologue
    .line 413
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 414
    return-void
.end method

.method private updatePopupText(Landroid/widget/SeekBar;I)V
    .locals 11
    .parameter "aSeekBar"
    .parameter "mValue"

    .prologue
    .line 349
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 350
    .local v6, thumbTrans:I
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    .line 351
    .local v5, thumbBody:I
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    .line 353
    .local v7, tooltipTrans:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .local v3, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v5

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 355
    .local v4, strips:F
    add-int/lit8 v2, p2, 0x2

    .line 356
    .local v2, offset:I
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v6

    int-to-float v10, v2

    mul-float/2addr v10, v4

    float-to-int v10, v10

    add-int v0, v9, v10

    .line 357
    .local v0, leftMargin:I
    iget-object v9, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v0, v9

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 359
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    sub-int/2addr v10, v7

    sub-int/2addr v9, v10

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 360
    iget-object v9, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0023

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 362
    .local v8, tv:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method

.method private updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 7
    .parameter "aSeekBar"
    .parameter "tv"
    .parameter "mValue"

    .prologue
    const/4 v6, 0x0

    .line 337
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 338
    .local v1, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v2, v4, v5

    .line 339
    .local v2, strips:I
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, p3, 0x2

    mul-int/2addr v5, v2

    add-int v0, v4, v5

    .line 340
    .local v0, leftMargin:I
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 341
    .local v3, topMargin:I
    const/4 v1, 0x0

    .line 342
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .restart local v1       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 344
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 422
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_0

    .line 379
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 382
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_1

    .line 383
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 386
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_2

    .line 387
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    .line 390
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 333
    return-void

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 283
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 287
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 291
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 295
    :pswitch_7
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_0

    .line 296
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;->onContrastChanged(I)V

    .line 301
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_1

    .line 302
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;->onSaturationChanged(I)V

    .line 307
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_2

    .line 308
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;->onSharpnessChanged(I)V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 317
    :pswitch_8
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_3

    .line 318
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 321
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_4

    .line 322
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 325
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_5

    .line 326
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0011
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 229
    sparse-switch p2, :sswitch_data_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 426
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 456
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 431
    goto :goto_0

    .line 434
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0

    .line 439
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 441
    goto :goto_0

    .line 444
    :cond_5
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x43

    if-ne p1, v0, :cond_9

    .line 445
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_7

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 448
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_8

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 451
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_9

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    :cond_9
    move v0, v2

    .line 456
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 460
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 490
    :goto_0
    return v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 465
    goto :goto_0

    .line 468
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 470
    goto :goto_0

    .line 473
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 475
    goto :goto_0

    .line 478
    :cond_5
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x43

    if-ne p1, v0, :cond_9

    .line 479
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_7

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 482
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_8

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 485
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_9

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    :cond_9
    move v0, v2

    .line 490
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    .line 245
    return v0
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 409
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 410
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AdjustMenu;->onClick(Landroid/view/View;)V

    .line 256
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 265
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 260
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AdjustMenu;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLongTouch(Z)V
    .locals 0
    .parameter "longTouch"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    .line 250
    return-void
.end method

.method public setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    .line 367
    return-void
.end method

.method public setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    .line 371
    return-void
.end method

.method public setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    .line 375
    return-void
.end method
