.class public Lcom/iLoong/launcher/HotSeat3D/c;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private e:Z

.field private f:Laurelienribon/tweenengine/Tween;

.field private h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->a:Z

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x14

    const-string v0, "hotmainmeun"

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v0, "hotseat-s3app"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_0

    const-string v0, "hotseat-s3home"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_1

    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/cb;->aZ:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->j:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->setSize(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->j:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->j:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0, v6}, Lcom/iLoong/launcher/HotSeat3D/c;->setPosition(FF)V

    :goto_0
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->f()V

    return-void

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v6}, Lcom/iLoong/launcher/HotSeat3D/c;->setPosition(FF)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6

    const/16 v2, 0x14

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6

    const/16 v2, 0x14

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "focus"

    const-string v1, "setFocusInvisible"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    return-void
.end method

.method private f()V
    .locals 3

    const/high16 v2, 0x4000

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->originX:F

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->originY:F

    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->originX:F

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 7

    const/4 v1, 0x1

    const/high16 v3, 0x4000

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->setOrigin(FF)V

    const-string v0, "HotMainMenuView3D"

    const-string v2, "TweenStart showDelay"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v1, 0x1

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/c;->setUser(F)V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v4

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->setOrigin(FF)V

    const-string v0, "HotMainMenuView3D"

    const-string v2, "TweenStart show"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    move-object v0, p0

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->j:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->j:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/HotSeat3D/c;->setPosition(FF)V

    :goto_1
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->f()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/HotSeat3D/c;->setPosition(FF)V

    goto :goto_1
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_1
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aZ:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float v4, v3, v2

    sub-float v3, v15, v14

    mul-float/2addr v2, v3

    add-float v16, v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v6, v6, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v3, v12

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    add-int/2addr v5, v13

    int-to-float v5, v5

    mul-float/2addr v1, v4

    add-float v4, v5, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/HotSeat3D/c;->rotation:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ba:I

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->bb:I

    int-to-float v2, v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->bc:I

    int-to-float v3, v3

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sget v4, Lcom/iLoong/launcher/Desktop3D/cb;->bd:I

    int-to-float v4, v4

    const/high16 v5, 0x437f

    div-float/2addr v4, v5

    mul-float v4, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v3, v12

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    add-int/2addr v1, v13

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/HotSeat3D/c;->rotation:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/HotSeat3D/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v3, v12

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    add-int/2addr v1, v13

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/HotSeat3D/c;->originY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/HotSeat3D/c;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/HotSeat3D/c;->rotation:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_0
.end method

.method public e()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->setOrigin(FF)V

    const-string v0, "HotMainMenuView3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    neg-float v0, v0

    const/high16 v5, 0x3fc0

    mul-float/2addr v5, v0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public hide()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v2, 0x4000

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->setOrigin(FF)V

    const-string v0, "HotMainMenuView3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    neg-float v0, v0

    const/high16 v5, 0x3fc0

    mul-float/2addr v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 4

    const/high16 v3, 0x4000

    const/4 v0, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-ne p1, v1, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    goto :goto_1

    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    sget v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    if-nez v1, :cond_2

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    goto :goto_1

    :cond_5
    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v2, 0xe

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->onClick(FF)Z

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "HotMainMenuView3D"

    const-string v1, "TweenComplete hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    neg-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->f()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "HotMainMenuView3D"

    const-string v1, "TweenComplete show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->f()V

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->a:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/a;->d()V

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->requestFocus()V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v2, 0xe

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/c;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v2, p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->e:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->releaseFocus()V

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_1
.end method

.method public pointerInParent(FF)Z
    .locals 3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bx:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    sget v2, Lcom/iLoong/launcher/b/c;->b:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const/4 v1, 0x1

    const/high16 v3, 0x4000

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/c;->stopTween()V

    invoke-virtual {p0, v5}, Lcom/iLoong/launcher/HotSeat3D/c;->setUser(F)V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->width:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->setOrigin(FF)V

    const-string v0, "HotMainMenuView3D"

    const-string v2, "TweenStart show"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/c;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method
