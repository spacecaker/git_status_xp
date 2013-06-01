.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 4

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    check-cast p2, Ljava/lang/String;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_2

    const-class v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "regions"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "regions"

    const-class v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v1, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v1, v2

    :goto_1
    const-string v2, "color"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "color"

    const-class v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "region"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "region"

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v1, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v1, v2

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Ljava/lang/Class;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPatches()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v1, "color"

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const-string v0, "region"

    aget-object v1, v2, v4

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "regions"

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    aget-object v0, v2, v4

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->write(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Ljava/lang/Class;)V

    return-void
.end method
