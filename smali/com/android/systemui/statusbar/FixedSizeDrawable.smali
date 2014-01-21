.class Lcom/android/systemui/statusbar/FixedSizeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FixedSizeDrawable.java"


# instance fields
.field mBottom:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mLeft:I

.field mRight:I

.field mTop:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "that"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    return-void
.end method

.method public setBounds(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 64
    return-void
.end method

.method public setFixedBounds(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mLeft:I

    .line 37
    iput p2, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mTop:I

    .line 38
    iput p3, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mRight:I

    .line 39
    iput p4, p0, Lcom/android/systemui/statusbar/FixedSizeDrawable;->mBottom:I

    .line 40
    return-void
.end method
