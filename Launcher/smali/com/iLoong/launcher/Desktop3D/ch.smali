.class public Lcom/iLoong/launcher/Desktop3D/ch;
.super Lcom/iLoong/launcher/Desktop3D/aj;


# instance fields
.field public K:Z

.field private a:Ljava/lang/Object;

.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ch;->a:Ljava/lang/Object;

    return-void
.end method

.method public onClick(FF)Z
    .locals 3

    const-string v0, "click"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View3D onClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ch;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ch;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    move-result v0

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ch;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget v1, v0, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0089

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aj;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ch;->a:Ljava/lang/Object;

    return-object v0
.end method
