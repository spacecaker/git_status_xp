.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;
.super Lcom/a/a/d;


# static fields
.field static drawDebug:Z

.field public static instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.badlogic.gdx.scenes.scene2d."

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addClassPrefix(Ljava/lang/String;)V

    const-string v0, "com.badlogic.gdx.scenes.scene2d.ui."

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addClassPrefix(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setWidget"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error calling setWidget."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public bridge synthetic addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addDebugRectangle(Lcom/a/a/e;IIIII)V
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;IIIII)V

    return-void
.end method

.method public addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;IIIII)V
    .locals 7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->drawDebug:Z

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    iget-object v6, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    int-to-float v2, p4

    sub-float/2addr v1, v2

    float-to-int v3, v1

    move v1, p2

    move v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic clearDebugRectangles(Lcom/a/a/e;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V

    return-void
.end method

.method public clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic convertType(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->convertType(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected convertType(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_1

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->hasResource(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p3, v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->hasResource(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-eqz v0, :cond_4

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p3, v0, :cond_2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v3}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    if-ne p3, v0, :cond_3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p3, v0, :cond_4

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p5, v2}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/a/a/d;->convertType(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getLayout(Ljava/lang/Object;)Lcom/a/a/e;
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public getLayout(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getMaxHeight()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMaxHeight(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getMaxWidth()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMaxWidth(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getMinHeight()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinHeight(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getMinWidth()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinWidth(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefHeight(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method public getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefWidth(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    return v0
.end method

.method protected newInstance(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/a/a/d;->newInstance(Lcom/a/a/e;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error constructing instance of class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    :cond_0
    throw v1
.end method

.method protected bridge synthetic newInstance(Lcom/a/a/e;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newInstance(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public newStack()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newStack()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newStack()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public newTable(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/a/a/d;->newTable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v1

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic newTable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newTable(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    move-result-object v0

    return-object v0
.end method

.method public newWidget(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/a/a/d;->newWidget(Lcom/a/a/e;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v1, :cond_1

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->hasResource(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0

    :cond_0
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->hasResource(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p2, v3}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    throw v0
.end method

.method public bridge synthetic newWidget(Lcom/a/a/e;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newWidget(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public bridge synthetic removeChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public bridge synthetic setProperty(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->setProperty(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setProperty(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    const/4 v1, 0x1

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/a/a/d;->setProperty(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Style"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->hasStyle(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setStyle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getStyle(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set style: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    :cond_0
    throw v2
.end method

.method public wrap(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label cannot be created, no skin has been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/a/a/d;->wrap(Lcom/a/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public bridge synthetic wrap(Lcom/a/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->wrap(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
