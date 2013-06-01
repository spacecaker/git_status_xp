.class public Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Cullable;


# static fields
.field public static debug:Z

.field public static debugTexture:Lcom/badlogic/gdx/graphics/Texture;


# instance fields
.field protected final children:Ljava/util/List;

.field protected cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field protected final groups:Ljava/util/List;

.field protected final immutableChildren:Ljava/util/List;

.field protected final immutableGroups:Ljava/util/List;

.field public lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

.field protected final point:Lcom/badlogic/gdx/math/Vector2;

.field public transform:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->immutableChildren:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->immutableGroups:Ljava/util/List;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getActors()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-direct {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static disableDebugging()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debug:Z

    return-void
.end method

.method public static enableDebugging(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debug:Z

    return-void
.end method

.method public static toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V
    .locals 8

    const v2, 0x3c8efa35

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v0, p1, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v0, p2, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v3, p2, v3

    mul-float v4, v2, v0

    mul-float v5, v3, v1

    add-float/2addr v4, v5

    iput v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    neg-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    neg-float v5, v5

    mul-float v6, v0, v4

    mul-float v7, v1, v5

    sub-float/2addr v6, v7

    mul-float/2addr v4, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    add-float/2addr v2, v6

    add-float/2addr v3, v4

    sub-float v2, p1, v2

    sub-float v3, p2, v3

    mul-float v4, v2, v0

    mul-float v5, v3, v1

    add-float/2addr v4, v5

    iput v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v3, p2, v3

    mul-float v4, v2, v0

    mul-float v5, v3, v1

    add-float/2addr v4, v5

    iput v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float/2addr v5, v6

    neg-float v2, v2

    neg-float v3, v3

    mul-float v6, v0, v2

    mul-float v7, v1, v3

    sub-float/2addr v6, v7

    mul-float/2addr v2, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    add-float v3, v6, v4

    add-float/2addr v2, v5

    sub-float v3, p1, v3

    sub-float v2, p2, v2

    mul-float v4, v3, v0

    mul-float v5, v2, v1

    add-float/2addr v4, v5

    iput v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0
.end method


# virtual methods
.method public act(F)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->act(F)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->act(F)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->isMarkedToRemove()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->markToRemove(Z)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void
.end method

.method public addViewAfter(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    instance-of v0, p2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v0, p2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void
.end method

.method public addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v0, p2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->updateTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method public calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    return-void
.end method

.method protected childrenChanged()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-direct {p0, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iput-object v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    sget-boolean v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_3

    const/high16 v7, 0x4348

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_4

    const/high16 v8, 0x4348

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotation:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v14

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    goto :goto_1
.end method

.method protected drawChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, p2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-eqz v1, :cond_5

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_4
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v10, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    move v7, v0

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_6

    iput v9, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v10, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_8
    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_9
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sub-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_4

    :cond_a
    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-eqz v1, :cond_12

    move v7, v0

    :goto_5
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_c

    :cond_b
    :goto_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :cond_c
    instance-of v0, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_e

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_d
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_e
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_6

    :cond_f
    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_10
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_11
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_6

    :cond_12
    iget v9, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v10, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    move v7, v0

    :goto_7
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_13

    iput v9, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v10, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_14

    :goto_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    :cond_14
    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_15
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sub-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_8
.end method

.method public findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fling(FF)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->fling(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActors()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->immutableGroups:Ljava/util/List;

    return-object v0
.end method

.method public hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    cmpl-float v0, p1, v4

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    :goto_1
    move-object v0, p0

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public isDescendant(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    :goto_0
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyDown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keyTyped(C)Z
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyTyped(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keyUp(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public moveViewTo(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, p2, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveViewToLast(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->moveViewTo(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    return v0
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleClick(FF)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewGroup3D onDoubleClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onDoubleClick(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewGroup3D onLongClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onLongClick(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDown(FFI)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_2
.end method

.method public onTouchDragged(FFI)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDragged(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchUp(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->clear()V

    return-void
.end method

.method public removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iput-object v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-direct {p0, p1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    return-void
.end method

.method public removeViewRecursive(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iput-object v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, p1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->childrenChanged()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeViewRecursive(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public replaceView(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getIndexInParent()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->scroll(FFFF)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColor(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(FFFF)V

    goto :goto_0
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public swapView(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swapView3D(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->children:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child was not a descendant."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eq v0, p0, :cond_1

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    :cond_1
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1, v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method protected updateTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originY:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originZ:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originY:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotation:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotationVector:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotation:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleX:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleY:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleZ:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleX:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleY:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleZ:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_3
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originY:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originZ:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    neg-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originY:F

    neg-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originZ:F

    neg-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->trn(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    :goto_1
    if-nez v0, :cond_8

    :cond_6
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    goto/16 :goto_0

    :cond_8
    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_2
.end method

.method public zoom(FF)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewGroup3D zoom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->zoom(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method
