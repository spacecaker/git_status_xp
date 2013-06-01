.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;


# instance fields
.field public patchChecked:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public patchDown:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public patchUp:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public regionChecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public regionDown:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public regionUp:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;FFFFLcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;FFFF)V

    iput-object p8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->patchUp:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object p9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->patchDown:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object p10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->patchChecked:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;FFFFLcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;FFFF)V

    iput-object p8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->regionUp:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->regionDown:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->regionChecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
