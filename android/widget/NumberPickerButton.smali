.class Landroid/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mButtonRect:Landroid/graphics/Rect;

.field private mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private cancelLongpress()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelIncrement()V

    .line 159
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelDecrement()V

    .line 167
    return-void
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 132
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 142
    .local v0, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 144
    .local v1, posY:F
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_3

    cmpg-float v2, v1, v4

    if-ltz v2, :cond_3

    iget-object v2, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 145
    :cond_3
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 115
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->SetIsTouchButton(Z)V

    .line 100
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->SetIsTouchButton(Z)V

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onWindowFocusChanged(Z)V

    .line 128
    return-void
.end method

.method public setNumberPicker(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 68
    return-void
.end method
