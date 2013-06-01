.class Lcom/iLoong/launcher/Desktop3D/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;

.field private final synthetic b:Lcom/iLoong/launcher/Desktop3D/af;

.field private final synthetic c:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Desktop3D/af;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bl;->a:Lcom/iLoong/launcher/Desktop3D/e;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bl;->b:Lcom/iLoong/launcher/Desktop3D/af;

    iput-object p3, p0, Lcom/iLoong/launcher/Desktop3D/bl;->c:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bF:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bl;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->c(Lcom/iLoong/launcher/Desktop3D/e;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bl;->b:Lcom/iLoong/launcher/Desktop3D/af;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/af;->r()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bl;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->c(Lcom/iLoong/launcher/Desktop3D/e;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bl;->c:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bl;->b:Lcom/iLoong/launcher/Desktop3D/af;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/af;->s()F

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_0
    return-void
.end method
