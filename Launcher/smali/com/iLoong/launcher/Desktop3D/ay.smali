.class public Lcom/iLoong/launcher/Desktop3D/ay;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field public static a:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public static b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static c:Z

.field public static e:Z


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private f:I

.field private h:I

.field private i:Lcom/iLoong/launcher/Desktop3D/aw;

.field private j:Z

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/ay;->a:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/ay;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/ay;->c:Z

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x1

    const/16 v2, 0x14

    const/4 v7, 0x6

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->f:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    iput-boolean v6, p0, Lcom/iLoong/launcher/Desktop3D/ay;->j:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    div-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->f:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/high16 v1, 0x4240

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "theme/pack_source/app-uninstall-button.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    const v1, 0x7f0c0081

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ay;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "theme/pack_source/app-hide-button.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    const v1, 0x7f0c0084

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ay;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "theme/pack_source/app-sort-button.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    const v1, 0x7f0c0085

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ay;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->f:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->width:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4170

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->y:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->originY:F

    iput-boolean v6, p0, Lcom/iLoong/launcher/Desktop3D/ay;->transform:Z

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "setupmenu_android4/bg_frame.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    const/4 v0, 0x0

    invoke-direct {v2, v6, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ay;->a:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/ay;->a:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "setupmenu_android4/bg-2.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ay;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/ay;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V
    .locals 9

    const/high16 v8, 0x4170

    const/high16 v7, 0x4000

    const/high16 v6, 0x3fc0

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "popitem"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setSize(FF)V

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v2, "itemicon"

    invoke-direct {v1, v2, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-static {p2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v4, "itemtitle"

    invoke-direct {v3, v4, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v1, v2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    const/high16 v4, 0x4080

    invoke-static {v2, v4}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v4, v7

    sub-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ay;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/ay;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->hide()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowSortDialogMsg(I)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->touchable:Z

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->releaseFocus()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->y:F

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->visible:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->touchable:Z

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    const/high16 v7, 0x3f80

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ay;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ay;->a:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ay;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ay;->width:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void

    :cond_0
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ay;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ay;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    mul-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v0, v3

    sub-float v3, v0, v7

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ay;->width:F

    move-object v0, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public hide()V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "launcher"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->releaseFocus()V

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/ay;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->stopTween()V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e4ccccd

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ay;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    neg-float v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ay;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/ay;->c:Z

    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    return-void
.end method

.method public keyDown(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    sput-boolean v3, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bk:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->j:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->j:Z

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sput-boolean v3, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->k:F

    goto :goto_1

    :cond_3
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->a()V

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->h:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-int v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    :cond_0
    :goto_0
    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->hide()V

    return v2

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->i:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowSortDialogMsg(I)V

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->visible:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ay;->touchable:Z

    :cond_0
    return-void
.end method

.method public onTouchUp(FFI)Z
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "launcher"

    const-string v1, "popmenu:onTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->hide()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->requestFocus()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ay;->stopTween()V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e4ccccd

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ay;->x:F

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ay;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/ay;->c:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ay;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method
