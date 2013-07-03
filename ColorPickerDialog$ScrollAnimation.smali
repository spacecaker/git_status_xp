.class Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;
.super Landroid/view/animation/Animation;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollAnimation"
.end annotation


# static fields
.field private static final DURATION:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "ScrollAnimation"


# instance fields
.field private mCurrent:F

.field private mFrom:F

.field private mTo:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 509
    const-wide/16 v0, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->setDuration(J)V

    .line 510
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 511
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 521
    iget v0, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mFrom:F

    iget v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mTo:F

    iget v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mCurrent:F

    .line 523
    return-void
.end method

.method public getCurrent()F
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mCurrent:F

    return v0
.end method

.method public startScrolling(FF)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 514
    iput p1, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mFrom:F

    .line 515
    iput p2, p0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->mTo:F

    .line 516
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->startNow()V

    .line 517
    return-void
.end method
