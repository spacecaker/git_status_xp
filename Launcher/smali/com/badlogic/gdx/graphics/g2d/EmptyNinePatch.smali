.class public Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;
.super Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# static fields
.field private static emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

.field private static region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public static getInstance()Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch$1;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch$1;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    return-object v0
.end method

.method public static getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->getInstance()Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 0

    return-void
.end method
