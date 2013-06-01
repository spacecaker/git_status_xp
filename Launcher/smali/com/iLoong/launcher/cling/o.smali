.class public Lcom/iLoong/launcher/cling/o;
.super Lcom/iLoong/launcher/min3d/Object3DBase;


# static fields
.field protected static a:I

.field protected static b:I

.field private static final h:Ljava/lang/String;

.field private static final i:F


# instance fields
.field private A:Lcom/badlogic/gdx/math/Vector2;

.field private B:Lcom/badlogic/gdx/math/Vector2;

.field private C:Landroid/graphics/Point;

.field private D:Landroid/graphics/Point;

.field private E:Landroid/graphics/Point;

.field private F:Landroid/graphics/Point;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:J

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:[F

.field private final S:I

.field private final T:I

.field private U:I

.field private V:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field c:[F

.field d:[F

.field public e:F

.field public f:I

.field private j:F

.field private k:F

.field private l:F

.field private m:Lcom/iLoong/launcher/cling/a;

.field private n:Lcom/iLoong/launcher/cling/f;

.field private o:Lcom/iLoong/launcher/cling/g;

.field private p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private t:I

.field private u:I

.field private v:[F

.field private w:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2d0

    sput v0, Lcom/iLoong/launcher/cling/o;->a:I

    const/16 v0, 0x500

    sput v0, Lcom/iLoong/launcher/cling/o;->b:I

    new-instance v0, Ljava/lang/String;

    const-string v1, "FlipView"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iLoong/launcher/cling/o;->h:Ljava/lang/String;

    const-wide v0, 0x4031800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/iLoong/launcher/cling/o;->i:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/min3d/Object3DBase;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->j:F

    const/high16 v0, 0x40a0

    sget v1, Lcom/iLoong/launcher/cling/o;->i:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->k:F

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->k:F

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->j:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->l:F

    iput v3, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iput v3, p0, Lcom/iLoong/launcher/cling/o;->u:I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, -0x4080

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->c:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->d:[F

    iput v4, p0, Lcom/iLoong/launcher/cling/o;->e:F

    iput v3, p0, Lcom/iLoong/launcher/cling/o;->f:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->F:Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->H:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/o;->M:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/cling/o;->N:J

    const/16 v0, 0x19

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->O:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->P:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->Q:I

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->R:[F

    const/16 v0, -0x64

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->S:I

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->T:I

    iput v3, p0, Lcom/iLoong/launcher/cling/o;->U:I

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/o;->e()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/o;)F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->l:F

    return v0
.end method

.method private declared-synchronized a(FFFF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IIII)V
    .locals 6

    int-to-float v0, p1

    int-to-float v1, p2

    const/high16 v2, -0x3d38

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->R:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/o;->U:I

    aget v3, v3, v4

    add-int/lit8 v4, p3, 0x64

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/cling/o;->T:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->R:[F

    iget v5, p0, Lcom/iLoong/launcher/cling/o;->U:I

    aget v4, v4, v5

    iget v5, p0, Lcom/iLoong/launcher/cling/o;->T:I

    sub-int v5, p4, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iLoong/launcher/cling/o;->a(FFFF)V

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->U:I

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->U:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->R:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->U:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->M:Z

    :cond_0
    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    invoke-virtual {v0, v1, v2, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1, v3, v2, p2}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Mesh;->render(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/o;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/cling/o;->a(FFFF)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/o;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/o;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/cling/o;->H:Z

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/cling/o;)F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->k:F

    return v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/cling/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/cling/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    return v0
.end method

.method private e()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v2, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/iLoong/launcher/cling/o;->a:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/iLoong/launcher/cling/o;->b:I

    new-instance v0, Lcom/iLoong/launcher/cling/a;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/cling/a;-><init>(Lcom/iLoong/launcher/cling/o;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->m:Lcom/iLoong/launcher/cling/a;

    new-instance v0, Lcom/iLoong/launcher/cling/f;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/cling/f;-><init>(Lcom/iLoong/launcher/cling/o;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    new-instance v0, Lcom/iLoong/launcher/cling/g;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/cling/g;-><init>(Lcom/iLoong/launcher/cling/o;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/g;->start()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    const-string v6, "theme/pack_source/intro-1.jpg"

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    const-string v6, "theme/pack_source/intro-2.jpg"

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v1, v0, v11

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    const-string v6, "theme/pack_source/intro-3.jpg"

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v1, v0, v10

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    const-string v6, "theme/pack_source/intro-4.jpg"

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v1, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    const-string v6, "theme/pack_source/intro-5.jpg"

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v1, v0, v12

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->u:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    const-string v5, "theme/pack_source/flip-bg.png"

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v1, v3}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    const/16 v0, 0x1f4

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->j:F

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->k:F

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->l:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->m:Lcom/iLoong/launcher/cling/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/a;->a()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/o;->f()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const/16 v3, 0x320

    const/16 v4, 0x4b0

    new-array v5, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    invoke-direct {v6, v2, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v2

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v7, 0x5

    const-string v8, "a_color"

    invoke-direct {v6, v7, v12, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_texCoord0"

    invoke-direct {v6, v9, v10, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    return-void
.end method

.method static synthetic e(Lcom/iLoong/launcher/cling/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    return v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/cling/o;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/f;->b()V

    return-void
.end method

.method static synthetic g(Lcom/iLoong/launcher/cling/o;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method static synthetic h(Lcom/iLoong/launcher/cling/o;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/cling/g;->a(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->b(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/cling/g;->c(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/g;->a(I)V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view width,view height="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/iLoong/launcher/cling/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/o;->V:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-void
.end method

.method public a(FF)Z
    .locals 2

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd

    mul-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/cling/g;->a(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->b(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/cling/g;->c(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/g;->a(I)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->a(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->b(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->c(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/g;->a(I)V

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->a(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->b(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->c(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/g;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/g;->d(FF)V

    goto :goto_0
.end method

.method public disposeTexture()V
    .locals 0

    invoke-super {p0}, Lcom/iLoong/launcher/min3d/Object3DBase;->disposeTexture()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x201

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthFunc(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/cling/o;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_color"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/f;->a(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->m:Lcom/iLoong/launcher/cling/a;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/cling/a;->a(Lcom/iLoong/launcher/cling/a;F)F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->m:Lcom/iLoong/launcher/cling/a;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v3}, Lcom/iLoong/launcher/cling/a;->b(Lcom/iLoong/launcher/cling/a;F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/f;->b(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/f;->a()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget v3, v3, Lcom/iLoong/launcher/cling/f;->m:I

    if-lt v0, v3, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget v3, v3, Lcom/iLoong/launcher/cling/f;->m:I

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v3, v3, 0x3

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    const/16 v0, 0x2d

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget v1, v1, Lcom/iLoong/launcher/cling/f;->r:I

    if-ge v0, v1, :cond_5

    const/16 v0, 0x2d

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_14

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_5
    const/4 v4, 0x4

    if-lt v0, v4, :cond_9

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x6

    if-lt v0, v4, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    move v0, v1

    :goto_7
    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget v1, v1, Lcom/iLoong/launcher/cling/f;->r:I

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget-boolean v0, v0, Lcom/iLoong/launcher/cling/f;->v:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_8
    const/4 v3, 0x4

    if-lt v0, v3, :cond_10

    const/4 v0, 0x0

    :goto_9
    const/4 v3, 0x6

    if-lt v0, v3, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x304

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_a
    const/4 v3, 0x4

    if-lt v0, v3, :cond_12

    const/4 v0, 0x0

    :goto_b
    const/4 v3, 0x6

    if-lt v0, v3, :cond_13

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->o:Lcom/iLoong/launcher/cling/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/g;->c(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/o;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x0

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->a(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->a(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x2

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->a(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x3

    aput v5, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x4

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->b(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x5

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->b(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    aput v8, v3, v4

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    aput-short v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    iget v0, v0, Lcom/iLoong/launcher/cling/f;->r:I

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_c
    const/4 v8, 0x4

    if-lt v2, v8, :cond_7

    const/4 v2, 0x0

    :goto_d
    const/4 v8, 0x6

    if-lt v2, v8, :cond_8

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_7
    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x0

    iget-object v10, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v10}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v10

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x0

    aget v10, v10, v11

    sget v11, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v10}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v10

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    sget v11, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v10}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v10

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x3

    aput v5, v8, v9

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x4

    iget-object v10, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v10}, Lcom/iLoong/launcher/cling/f;->e(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v10

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, 0x0

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x5

    iget-object v10, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v10}, Lcom/iLoong/launcher/cling/f;->e(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v10

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_8
    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v9

    aget-byte v9, v9, v2

    aput-short v9, v8, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_9
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x0

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->f(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v9

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->f(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v9

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->f(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v9

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x3

    aput v5, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->g(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v9

    mul-int/lit8 v10, v0, 0x2

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v0, 0x6

    add-int/lit8 v8, v8, 0x5

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->g(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v9

    mul-int/lit8 v10, v0, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_a
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v8

    aget-byte v8, v8, v0

    aput-short v8, v4, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_b
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_e
    const/4 v4, 0x4

    if-lt v1, v4, :cond_c

    const/4 v1, 0x0

    :goto_f
    const/4 v4, 0x6

    if-lt v1, v4, :cond_d

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xb71

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0x304

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_10
    const/4 v4, 0x4

    if-lt v1, v4, :cond_e

    const/4 v1, 0x0

    :goto_11
    const/4 v4, 0x6

    if-lt v1, v4, :cond_f

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/badlogic/gdx/graphics/Texture;II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xb71

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0x201

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthFunc(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_c
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x0

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x3

    aput v5, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->d:[F

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x5

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->d:[F

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_d
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v8

    aget-byte v8, v8, v1

    aput-short v8, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_e
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x0

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->d(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x4

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x3

    aput v5, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->e(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v8, v1, 0x6

    add-int/lit8 v8, v8, 0x5

    iget-object v9, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v9}, Lcom/iLoong/launcher/cling/f;->e(Lcom/iLoong/launcher/cling/f;)[[F

    move-result-object v9

    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_f
    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v8

    aget-byte v8, v8, v1

    aput-short v8, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :cond_10
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x0

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x2

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x3

    aput v5, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x4

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->d:[F

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x5

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->d:[F

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    aput v8, v3, v4

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_11
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    aput-short v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_12
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x0

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x2

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->h(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x3

    aput v5, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x4

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->i(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->v:[F

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x5

    iget-object v8, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v8}, Lcom/iLoong/launcher/cling/f;->i(Lcom/iLoong/launcher/cling/f;)[F

    move-result-object v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    aput v8, v3, v4

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_13
    iget-object v3, p0, Lcom/iLoong/launcher/cling/o;->w:[S

    iget-object v4, p0, Lcom/iLoong/launcher/cling/o;->n:Lcom/iLoong/launcher/cling/f;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/f;->c(Lcom/iLoong/launcher/cling/f;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    aput-short v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_14
    move v0, v1

    goto/16 :goto_7
.end method

.method public onTouchDown(FFI)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->requestFocus()V

    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/o;->H:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/cling/o;->M:Z

    iput v4, p0, Lcom/iLoong/launcher/cling/o;->U:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/cling/o;->N:J

    iput v4, p0, Lcom/iLoong/launcher/cling/o;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/cling/o;->e:F

    goto :goto_0
.end method

.method public onTouchDragged(FFI)Z
    .locals 9

    const/16 v8, 0x28

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, p2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    if-eqz v0, :cond_2

    float-to-int v0, p1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v4, v0, v1

    float-to-int v0, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    neg-int v2, v0

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    if-nez v0, :cond_2

    if-lez v4, :cond_9

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/iLoong/launcher/cling/h;->b(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    sget v5, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/iLoong/launcher/cling/h;->a(I)F

    move-result v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    if-le v2, v0, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget v2, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v2, v2, 0x6

    if-le v1, v2, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    if-le v0, v8, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->b()V

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_3
    if-ge v2, v1, :cond_f

    move v0, v1

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/o;->M:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    if-gtz v1, :cond_5

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->U:I

    if-lez v1, :cond_7

    :cond_5
    iget v1, p0, Lcom/iLoong/launcher/cling/o;->U:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    :cond_6
    neg-int v1, v4

    neg-int v0, v0

    float-to-int v2, p1

    float-to-int v4, v3

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/iLoong/launcher/cling/o;->a(IIII)V

    :cond_7
    :goto_3
    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    goto :goto_2

    :cond_8
    neg-int v1, v4

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    float-to-int v2, p1

    int-to-float v2, v2

    float-to-int v4, v3

    int-to-float v4, v4

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/iLoong/launcher/cling/o;->a(FFFF)V

    iput-boolean v7, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    goto :goto_3

    :cond_9
    iput-boolean v7, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    float-to-int v1, v3

    invoke-static {v1}, Lcom/iLoong/launcher/cling/h;->b(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    float-to-int v5, v3

    invoke-static {v5}, Lcom/iLoong/launcher/cling/h;->a(I)F

    move-result v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    if-le v2, v0, :cond_c

    move v2, v0

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    if-le v0, v8, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->a()V

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    :cond_b
    const-string v0, "flip"

    const-string v1, "autoNext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    if-ge v2, v1, :cond_a

    move v2, v1

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    int-to-float v0, v4

    int-to-float v1, v2

    float-to-int v2, p1

    int-to-float v2, v2

    float-to-int v4, v3

    int-to-float v4, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/iLoong/launcher/cling/o;->a(FFFF)V

    :cond_e
    iput-boolean v7, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method

.method public onTouchUp(FFI)Z
    .locals 10

    const-wide/16 v8, 0xfa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->releaseFocus()V

    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    if-nez v1, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/iLoong/launcher/cling/o;->N:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->F:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    const/16 v2, 0x28

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v2, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/iLoong/launcher/cling/o;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->V:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->w()V

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->G:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->F:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    if-eqz v0, :cond_2

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iLoong/launcher/cling/o;->N:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/cling/o;->N:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->d()V

    :cond_2
    :goto_1
    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->I:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->K:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->J:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/o;->M:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->C:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->D:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->c()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/cling/o;->E:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/o;->L:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/cling/o;->t:I

    iget v1, p0, Lcom/iLoong/launcher/cling/o;->u:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->c()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/o;->d()V

    goto :goto_1
.end method
