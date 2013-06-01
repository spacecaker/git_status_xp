.class public Lcom/iLoong/launcher/UI3DEngine/View3D;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;

# interfaces
.implements Laurelienribon/tweenengine/TweenCallback;


# static fields
.field public static final point:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Laurelienribon/tweenengine/Tween;

.field public background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field protected final batchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private c:F

.field g:Lcom/badlogic/gdx/math/Quaternion;

.field public isDragging:Z

.field protected final localTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected final oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected originZ:F

.field public region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field protected rotationVector:Lcom/badlogic/gdx/math/Vector3;

.field protected scaleZ:F

.field protected viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

.field protected final worldTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->g:Lcom/badlogic/gdx/math/Quaternion;

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->g:Lcom/badlogic/gdx/math/Quaternion;

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->g:Lcom/badlogic/gdx/math/Quaternion;

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method private a()Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_3
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v2, v3

    neg-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v3, v4

    neg-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    add-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    :goto_1
    if-nez v0, :cond_8

    :cond_6
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    goto/16 :goto_0

    :cond_8
    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_2
.end method


# virtual methods
.method public act(F)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->remove()V

    goto :goto_0
.end method

.method public addRotation(FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->g:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float v1, v3, v1

    iput v1, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public addRotationX(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->addRotation(FFFF)V

    return-void
.end method

.method public addRotationY(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->addRotation(FFFF)V

    return-void
.end method

.method public addRotationZ(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->addRotation(FFFF)V

    return-void
.end method

.method public applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-direct {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->a()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method public bringToFront()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->moveViewToLast(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z

    :cond_0
    return-void
.end method

.method public clone()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->clone()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->disposeTexture()V

    return-void
.end method

.method public disposeTexture()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPatches()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    if-eqz v2, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    iget v6, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v7, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iget v8, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0
.end method

.method public fling(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    return v0
.end method

.method public getIndexInParent()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOriginZ()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    return v0
.end method

.method public getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return v0
.end method

.method public getRotation3DVector()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    return v0
.end method

.method public getScaleZ()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getTween()Laurelienribon/tweenengine/Tween;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public getUser()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->c:F

    return v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    return-void
.end method

.method public bridge synthetic hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    return-object v0
.end method

.method public hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public is3dRotation()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getRotation3DVector()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getRotation3DVector()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    return v0
.end method

.method public isVisibleInParent()Z
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->isVisible()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyTyped(C)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public measure(II)V
    .locals 0

    return-void
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;
    .locals 1

    invoke-static {p0, p1, p3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p4, p5, p6}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public onClick(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 0

    return-void
.end method

.method public onLongClick(FF)Z
    .locals 3

    const-string v0, "click"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onLongClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDragged(FFI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pointerInAbs(FF)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointerInParent(FF)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final releaseFocus()V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/iLoong/launcher/UI3DEngine/r;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/r;->c()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    return-void
.end method

.method public final requestFocus()V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/iLoong/launcher/UI3DEngine/r;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/r;->c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    return-void
.end method

.method public resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    return-void
.end method

.method public setOriginZ(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originZ:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public setRotationAngle(FFF)V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->g:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    iget v1, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float v1, v3, v1

    iput v1, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public setRotationVector(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-void
.end method

.method public setRotationX(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0, v1, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public setRotationY(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v1, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    return-void
.end method

.method public setScaleZ(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleZ:F

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->a:Ljava/lang/Object;

    return-void
.end method

.method public setUser(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->c:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    return-void
.end method

.method public setZ(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->z:F

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    return-void
.end method

.method public startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;
    .locals 2

    invoke-static {p0, p1, p3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p4, p5, p6}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public stopTween()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/TweenManager;->killTarget(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->b:Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public final touchDown(FFI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final touchDragged(FFI)V
    .locals 0

    return-void
.end method

.method public final touchUp(FFI)V
    .locals 0

    return-void
.end method

.method public zoom(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
