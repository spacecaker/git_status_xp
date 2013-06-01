.class public Laurelienribon/tweenengine/primitives/MutableFloat;
.super Ljava/lang/Number;

# interfaces
.implements Laurelienribon/tweenengine/TweenAccessor;


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    return v0
.end method

.method public getValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    aput v1, p3, v0

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    check-cast p1, Laurelienribon/tweenengine/primitives/MutableFloat;

    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableFloat;->getValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    return-void
.end method

.method public setValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p1, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    return-void
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    check-cast p1, Laurelienribon/tweenengine/primitives/MutableFloat;

    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableFloat;->setValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)V

    return-void
.end method
