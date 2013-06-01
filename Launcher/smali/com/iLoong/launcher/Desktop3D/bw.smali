.class Lcom/iLoong/launcher/Desktop3D/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Lcom/iLoong/launcher/a/f;

.field private final synthetic d:Lcom/iLoong/launcher/a/j;

.field private final synthetic e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Landroid/graphics/Bitmap;Lcom/iLoong/launcher/a/f;Lcom/iLoong/launcher/a/j;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bw;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bw;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/iLoong/launcher/Desktop3D/bw;->c:Lcom/iLoong/launcher/a/f;

    iput-object p4, p0, Lcom/iLoong/launcher/Desktop3D/bw;->d:Lcom/iLoong/launcher/a/j;

    iput-object p5, p0, Lcom/iLoong/launcher/Desktop3D/bw;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ar;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bw;->b:Landroid/graphics/Bitmap;

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bw;->c:Lcom/iLoong/launcher/a/f;

    iget-object v2, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/aj;->o()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/ar;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bw;->e:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
