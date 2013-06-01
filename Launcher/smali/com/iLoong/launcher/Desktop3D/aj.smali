.class public Lcom/iLoong/launcher/Desktop3D/aj;
.super Lcom/iLoong/launcher/UI3DEngine/n;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/u;


# static fields
.field protected static A:I

.field protected static B:I

.field protected static C:I

.field private static b:[Landroid/graphics/Bitmap;

.field public static n:Landroid/graphics/Bitmap;

.field public static o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static t:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field protected static u:I

.field protected static v:I

.field protected static w:I


# instance fields
.field protected D:Z

.field protected E:Z

.field F:I

.field G:F

.field H:F

.field final I:Lcom/badlogic/gdx/math/Vector2;

.field final J:Lcom/badlogic/gdx/math/Vector2;

.field private a:Z

.field private c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private d:I

.field private e:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private f:Z

.field h:Lcom/iLoong/launcher/a/j;

.field i:Lcom/iLoong/launcher/UI3DEngine/d;

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/n;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->J:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ar;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/aj;->o()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ar;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/UI3DEngine/n;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->J:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "selectedicon"

    const-string v2, "shell-multi-choice"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ar;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/iLoong/launcher/Desktop3D/ar;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/UI3DEngine/n;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->J:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "selectedicon"

    const-string v2, "shell-multi-choice"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/n;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->J:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "selectedicon"

    const-string v2, "shell-multi-choice"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/n;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->J:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "selectedicon"

    const-string v2, "shell-multi-choice"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    return-void
.end method

.method public static a()V
    .locals 9

    const/16 v8, 0xa

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aA:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/iconbg/title_bg.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    const/high16 v4, 0x40a0

    div-float v4, v2, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->w:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->h:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->A:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->i:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->B:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->j:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/app-resume.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/app-hide.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/app-uninstall.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/icon_dian.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/icon_dian_2.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-array v0, v8, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->t:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_1
    if-ge v1, v8, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->t:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "theme/pack_source/icon_dian_num"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme/iconbg/icon_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    aput-object v3, v4, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static o()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->b:[Landroid/graphics/Bitmap;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFI)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    move v0, v1

    move v2, p5

    :goto_0
    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v2, v0, 0x1

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->B:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p4, v3

    :goto_2
    if-le v1, v0, :cond_2

    return-void

    :cond_0
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    rem-int/lit8 v4, p5, 0xa

    div-int/lit8 p5, p5, 0xa

    sget-object v5, Lcom/iLoong/launcher/Desktop3D/aj;->t:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v4, v5, v4

    int-to-float v5, v2

    sub-float v5, p3, v5

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v1

    sget v7, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIFFFFF)V
    .locals 14

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move/from16 v1, p5

    :goto_0
    if-nez v1, :cond_0

    move v11, v0

    :goto_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/aj;->B:I

    mul-int/2addr v0, v11

    div-int/lit8 v13, v0, 0x2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v3, p4, v0

    const/4 v0, 0x0

    move v12, v0

    :goto_2
    if-lt v12, v11, :cond_2

    return-void

    :cond_0
    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, p5, 0xa

    div-int/lit8 p5, p5, 0xa

    int-to-float v1, v13

    sub-float v1, p3, v1

    add-int/lit8 v2, v11, -0x1

    sub-int/2addr v2, v12

    sget v4, Lcom/iLoong/launcher/Desktop3D/aj;->B:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->t:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    add-float v0, v0, p6

    sub-float v4, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    sub-float v0, p7, v0

    sget v5, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aj;->B:I

    int-to-float v6, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aj;->C:I

    int-to-float v7, v0

    move-object v0, p1

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->h:Lcom/iLoong/launcher/a/j;

    instance-of v0, p1, Lcom/iLoong/launcher/a/f;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iLoong/launcher/a/f;

    iget v0, p1, Lcom/iLoong/launcher/a/f;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    :goto_0
    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b(Lcom/iLoong/launcher/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->d()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    :cond_1
    return-void

    :cond_2
    iget v0, p1, Lcom/iLoong/launcher/a/f;->i:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/f;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/iLoong/launcher/a/f;->m:J

    const-wide/16 v4, -0x64

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v4, -0x65

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()Lcom/iLoong/launcher/a/j;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->h:Lcom/iLoong/launcher/a/j;

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/a/f;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/f;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->f()Lcom/iLoong/launcher/Desktop3D/aj;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->be:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Icon3D"

    const-string v1, "paopao setting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Icon3D"

    const-string v1, "setting ok"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    goto :goto_1

    :cond_5
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/cb;->bf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->f:Z

    goto :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v2

    move v13, v2

    move v14, v3

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v3, :cond_3

    :cond_2
    float-to-double v2, v2

    const-wide v6, 0x3fc999999999999aL

    mul-double/2addr v2, v6

    double-to-float v2, v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/aj;->c()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    const/16 v6, 0x9

    if-le v3, v6, :cond_10

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->A:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v3, v3

    sub-float v15, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v3, v3

    sub-float v16, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/aj;->is3dRotation()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v4, v4

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x302

    if-ne v14, v2, :cond_4

    const/16 v2, 0x303

    if-eq v13, v2, :cond_5

    :cond_4
    const/16 v2, 0x302

    const/16 v3, 0x303

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    if-eqz v2, :cond_6

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v6, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v7, v2

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-eqz v2, :cond_7

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v6, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v7, v2

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-nez v2, :cond_8

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v6, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v7, v2

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    int-to-float v6, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFI)V

    :cond_9
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x302

    if-ne v14, v2, :cond_a

    const/16 v2, 0x303

    if-eq v13, v2, :cond_b

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x302

    if-ne v14, v2, :cond_c

    const/16 v2, 0x303

    if-eq v13, v2, :cond_d

    :cond_c
    const/16 v2, 0x302

    const/16 v3, 0x303

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    sub-float/2addr v3, v4

    sget v4, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    sub-float/2addr v4, v5

    sget v5, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;->setOrigin(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/cling/i;->j()V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x302

    if-ne v14, v2, :cond_e

    const/16 v2, 0x303

    if-eq v13, v2, :cond_f

    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_10
    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->w:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v4, v4

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originY:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_13

    const/16 v2, 0x302

    if-ne v14, v2, :cond_12

    const/16 v2, 0x303

    if-eq v13, v2, :cond_13

    :cond_12
    const/16 v2, 0x302

    const/16 v3, 0x303

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/aj;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    sub-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    sub-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v3, v3

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    if-eqz v2, :cond_14

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v8, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-eqz v2, :cond_15

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v8, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-nez v2, :cond_16

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->u:I

    int-to-float v8, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p1

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    if-lez v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originX:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    sub-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    sub-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v3, v3

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    int-to-float v8, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->G:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;->d:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;->H:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/aj;->v:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;->F:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Desktop3D/aj;->originY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/aj;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIFFFFF)V

    :cond_17
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x302

    if-ne v14, v2, :cond_18

    const/16 v2, 0x303

    if-eq v13, v2, :cond_b

    :cond_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    goto/16 :goto_3

    :cond_19
    move v13, v2

    move v14, v3

    goto/16 :goto_1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->E:Z

    return v0
.end method

.method public f()Lcom/iLoong/launcher/Desktop3D/aj;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "iLoong"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " icon:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region is null!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0, v2}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :cond_1
    new-instance v2, Lcom/iLoong/launcher/a/f;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->h:Lcom/iLoong/launcher/a/j;

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/a/f;-><init>(Lcom/iLoong/launcher/a/f;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    iput-boolean v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;->D:Z

    move-object v0, v1

    goto :goto_0
.end method

.method public g()V
    .locals 7

    const/4 v1, 0x3

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, v6, v6}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const v3, 0x3f4ccccd

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/d;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method

.method public h()V
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->a:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    return-void
.end method

.method public n()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 6

    const/4 v2, 0x1

    const-string v0, "click"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "View3D onClick:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " y:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->h:Lcom/iLoong/launcher/a/j;

    instance-of v0, v0, Lcom/iLoong/launcher/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->n()Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HIDE:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->j:Lcom/iLoong/launcher/a/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->j:Lcom/iLoong/launcher/a/b;

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->m:Z

    iput-boolean v1, v0, Lcom/iLoong/launcher/a/b;->h:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v2

    goto :goto_0
.end method

.method public onDoubleClick(FF)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->g()V

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    return-void
.end method

.method public onLongClick(FF)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " icon3d onLongClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->j:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->isDragging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 7

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aj;->f()Lcom/iLoong/launcher/Desktop3D/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/high16 v4, 0x3fc0

    const/high16 v5, 0x3fc0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/n;->onTouchUp(FFI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public pointerInParent(FF)Z
    .locals 4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->h:Lcom/iLoong/launcher/a/j;

    iget-wide v0, v0, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    sget v2, Lcom/iLoong/launcher/b/c;->b:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/n;->pointerInParent(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public q()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40a0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public r()I
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
