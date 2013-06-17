.class public Lcom/sec/android/app/camera/widget/TwSelectButton;
.super Lcom/sec/android/app/camera/widget/TwImageButton;
.source "TwSelectButton.java"


# instance fields
.field private mPrevSelected:Z

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;III)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "SelectButton"

    const-string v7, "Select "

    .line 58
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 107
    :goto_0
    return v3

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, obj:Ljava/lang/Object;
    const-string v2, ""

    .line 64
    .local v2, string:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 69
    const-string v3, "SelectButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 71
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 72
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    .line 104
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_9

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v3, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 75
    const-string v3, "SelectButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/widget/TwSelectButton;->actionInBounds(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    if-eqz v3, :cond_5

    .line 79
    iput-boolean v6, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 80
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 81
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 83
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 84
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 85
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 89
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    if-nez v3, :cond_7

    .line 90
    iput-boolean v6, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 91
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 92
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 96
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_8

    .line 97
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 98
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v3, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .end local v0           #ev:Landroid/view/MotionEvent;
    :cond_8
    move v3, v5

    .line 101
    goto/16 :goto_0

    :cond_9
    move v3, v6

    .line 107
    goto/16 :goto_0
.end method

.method public setDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 112
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->SetClickSoundDisabled()V

    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->SetClickSoundEnabled()V

    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    if-eqz v0, :cond_3

    .line 123
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    if-eqz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 129
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 47
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 53
    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    goto :goto_1
.end method
