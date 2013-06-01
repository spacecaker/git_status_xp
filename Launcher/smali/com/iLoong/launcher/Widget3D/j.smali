.class public Lcom/iLoong/launcher/Widget3D/j;
.super Lcom/iLoong/launcher/Widget3D/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Widget3D/o;-><init>(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/j;->q:Z

    const-string v0, "com.iLoong.widget.folder"

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->o:Ljava/lang/String;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "resumeicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "hideicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HIDE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/j;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/j;->s:Z

    const-string v0, "widget-shortcut-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/j;->I:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->aZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->i:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    new-instance v0, Ljava/lang/StringBuilder;

    aget v1, v7, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v7, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->j:Ljava/lang/String;

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v9, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->i:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/j;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/j;->height:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v6, -0x1

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v8, p0, Lcom/iLoong/launcher/Widget3D/j;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    aget v2, v7, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    aget v2, v7, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v0, "folderswidget"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/j;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public c()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(II)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/d/a;

    const-string v2, "FolderIcon3DView"

    invoke-direct {v1, v2, v0}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/j;->t:F

    iget v2, v1, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/j;->u:F

    iget v3, v1, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/d/a;->setPosition(FF)V

    return-object v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Widget3D/o;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method
