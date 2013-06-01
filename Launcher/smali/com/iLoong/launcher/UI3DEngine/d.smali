.class public Lcom/iLoong/launcher/UI3DEngine/d;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    return-void
.end method
