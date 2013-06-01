.class public Lcom/iLoong/launcher/UI3DEngine/n;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/n;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/n;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/n;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/n;->a:Z

    return v0
.end method
