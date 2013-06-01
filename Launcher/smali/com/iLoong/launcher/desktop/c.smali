.class Lcom/iLoong/launcher/desktop/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private final synthetic b:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/c;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput-object p2, p0, Lcom/iLoong/launcher/desktop/c;->b:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/c;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/c;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Widget3D/g;->b(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/f;->c()Lcom/iLoong/launcher/a/d;

    move-result-object v4

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/c;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/iLoong/launcher/Widget3D/f;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/c;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v1, Lcom/iLoong/launcher/Widget3D/f;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->n:I

    iget v2, v4, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, v4, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, v4, Lcom/iLoong/launcher/a/j;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    :cond_0
    return-void
.end method
