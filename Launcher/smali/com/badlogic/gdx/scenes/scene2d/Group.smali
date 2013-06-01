.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Cullable;


# static fields
.field public static debug:Z

.field public static debugTexture:Lcom/badlogic/gdx/graphics/Texture;


# instance fields
.field protected final batchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected final children:Ljava/util/List;

.field protected cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field protected final groups:Ljava/util/List;

.field protected final immutableChildren:Ljava/util/List;

.field protected final immutableGroups:Ljava/util/List;

.field public lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final localTransform:Lcom/badlogic/gdx/math/Matrix3;

.field protected final namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

.field protected final oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected final point:Lcom/badlogic/gdx/math/Vector2;

.field public transform:Z

.field protected final worldTransform:Lcom/badlogic/gdx/math/Matrix3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableChildren:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableGroups:Ljava/util/List;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public static disableDebugging()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

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

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    return-void
.end method

.method private setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3

    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

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

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
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

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isMarkedToRemove()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->markToRemove(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    instance-of v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->updateTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method protected childrenChanged()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    sget-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_3

    const/high16 v7, 0x4348

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_4

    const/high16 v8, 0x4348

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v14

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    goto :goto_1
.end method

.method protected drawChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, p2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v3, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v5, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v5, v3

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float/2addr v5, v3

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_4

    :cond_7
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_a

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v3, :cond_9

    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_9
    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_6

    :cond_a
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v5, :cond_c

    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_c
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v5, v3

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float/2addr v5, v3

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_8
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getActors()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableGroups:Ljava/util/List;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    cmpl-float v0, p1, v4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    :goto_1
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
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

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iput-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iput-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public swapActor(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

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

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toLocalCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child was not a descendant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eq v0, p0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toLocalCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V

    :cond_1
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1, v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public touchDown(FFI)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Group"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-gez v3, :cond_3

    iput-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v4, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDown(FFI)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getTouchFocus(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    :cond_7
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v1, :cond_8

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_2
.end method

.method public touchMoved(FF)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchMoved(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    neg-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->trn(FF)Lcom/badlogic/gdx/math/Matrix3;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_1
    if-nez v0, :cond_8

    :cond_6
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_0

    :cond_8
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_2
.end method
