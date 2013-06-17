.class public Lcom/sec/android/app/camera/SliderController;
.super Ljava/lang/Object;
.source "SliderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;
    }
.end annotation


# static fields
.field public static mZoomReset:Z


# instance fields
.field private mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

.field public mMaxResolution:Z

.field private mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field mSlider:Lcom/sec/android/app/camera/widget/TwSlider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/SliderController;->mZoomReset:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwSlider;Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;)V
    .locals 1
    .parameter "plusButton"
    .parameter "minusButton"
    .parameter "slider"
    .parameter "listener"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SliderController;->mMaxResolution:Z

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 48
    iput-object p2, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_1
    iput-object p4, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    .line 58
    iput-object p3, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    .line 59
    return-void
.end method


# virtual methods
.method public doMinus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v0

    .line 101
    .local v0, value:I
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setPlusMinusUse(Z)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 105
    return-void
.end method

.method public doPlus()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v0

    .line 92
    .local v0, value:I
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setPlusMinusUse(Z)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSlider;->getCurrentSliderPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mMinusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SliderController;->doMinus()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/SliderController;->mPlusButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SliderController;->doPlus()V

    goto :goto_0
.end method

.method public setCurrentSlider(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SliderController;->mMaxResolution:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSlider;->setMaxResolution(Z)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    sget-boolean v1, Lcom/sec/android/app/camera/SliderController;->mZoomReset:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSlider;->setZoomLevelReset(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwSlider;->setSliderFocus(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setZoomLevelReset(Z)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mListener:Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;->OnSliderValueChange(I)V

    .line 86
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/SliderController;->mSlider:Lcom/sec/android/app/camera/widget/TwSlider;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSlider;->setMaxResolution(Z)V

    goto :goto_0
.end method

.method public setMaxResolution(Z)V
    .locals 0
    .parameter "Value"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/app/camera/SliderController;->mMaxResolution:Z

    .line 63
    return-void
.end method

.method public setZoomReset(Z)V
    .locals 0
    .parameter "Reset"

    .prologue
    .line 66
    sput-boolean p1, Lcom/sec/android/app/camera/SliderController;->mZoomReset:Z

    .line 67
    return-void
.end method
