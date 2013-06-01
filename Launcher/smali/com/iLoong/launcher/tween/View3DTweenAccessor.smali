.class public Lcom/iLoong/launcher/tween/View3DTweenAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Laurelienribon/tweenengine/TweenAccessor;


# static fields
.field public static final CPOS_XY:I = 0x2

.field public static final OPACITY:I = 0x5

.field public static final POS_XY:I = 0x1

.field public static final ROTATION:I = 0x4

.field public static final SCALE_XY:I = 0x3

.field public static final TINT:I = 0x6

.field public static final USER:I = 0x7

.field static final synthetic a:Z

.field public static final manager:Laurelienribon/tweenengine/TweenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->a:Z

    new-instance v0, Laurelienribon/tweenengine/TweenManager;

    invoke-direct {v0}, Laurelienribon/tweenengine/TweenManager;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues(Lcom/iLoong/launcher/UI3DEngine/View3D;I[F)I
    .locals 6

    const/high16 v5, 0x4000

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    sget-boolean v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getX()F

    move-result v2

    aput v2, p3, v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getY()F

    move-result v2

    aput v2, p3, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    aput v2, p3, v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    aput v2, p3, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getScaleX()F

    move-result v2

    aput v2, p3, v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getScaleY()F

    move-result v2

    aput v2, p3, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getRotation()F

    move-result v0

    aput v0, p3, v4

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v0, p3, v4

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v2, p3, v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v2, p3, v1

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v1, p3, v0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getUser()F

    move-result v0

    aput v0, p3, v4

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    check-cast p1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->getValues(Lcom/iLoong/launcher/UI3DEngine/View3D;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/iLoong/launcher/UI3DEngine/View3D;I[F)V
    .locals 5

    const/high16 v3, 0x4000

    const/4 v2, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    sget-boolean v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    aget v0, p3, v4

    aget v1, p3, v2

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    aget v0, p3, v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    aget v1, p3, v2

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    goto :goto_0

    :pswitch_2
    aget v0, p3, v4

    aget v1, p3, v2

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    goto :goto_0

    :pswitch_3
    aget v0, p3, v4

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    aget v4, p3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    aget v1, p3, v4

    aget v2, p3, v2

    const/4 v3, 0x2

    aget v3, p3, v3

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_6
    aget v0, p3, v4

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setUser(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->setValues(Lcom/iLoong/launcher/UI3DEngine/View3D;I[F)V

    return-void
.end method
