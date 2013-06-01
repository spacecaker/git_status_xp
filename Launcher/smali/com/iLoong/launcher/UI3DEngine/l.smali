.class public Lcom/iLoong/launcher/UI3DEngine/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:J

.field public static c:Z

.field public static e:F

.field public static f:F

.field public static g:F

.field private static final s:Ljava/nio/IntBuffer;


# instance fields
.field public d:Ljava/util/List;

.field h:I

.field i:I

.field final j:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final k:I

.field final l:Z

.field final m:Lcom/badlogic/gdx/utils/Array;

.field n:Z

.field private o:I

.field private p:Lcom/iLoong/launcher/UI3DEngine/k;

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/l;->a:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/iLoong/launcher/UI3DEngine/l;->b:J

    sput-boolean v3, Lcom/iLoong/launcher/UI3DEngine/l;->c:Z

    sput v2, Lcom/iLoong/launcher/UI3DEngine/l;->e:F

    sput v2, Lcom/iLoong/launcher/UI3DEngine/l;->f:F

    sput v2, Lcom/iLoong/launcher/UI3DEngine/l;->g:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/l;->s:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iloong_pack_tosd"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->d:Ljava/util/List;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    if-ge v0, v2, :cond_0

    iput v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    if-ge v0, v3, :cond_1

    iput v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    :cond_1
    iput-object p2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->j:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput p3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->k:I

    iput-boolean p4, p0, Lcom/iLoong/launcher/UI3DEngine/l;->l:Z

    invoke-direct {p0}, Lcom/iLoong/launcher/UI3DEngine/l;->a()V

    return-void
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/f;Lcom/badlogic/gdx/math/Rectangle;)Lcom/iLoong/launcher/UI3DEngine/f;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/iLoong/launcher/UI3DEngine/f;Lcom/badlogic/gdx/math/Rectangle;)Lcom/iLoong/launcher/UI3DEngine/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/iLoong/launcher/UI3DEngine/f;Lcom/badlogic/gdx/math/Rectangle;)Lcom/iLoong/launcher/UI3DEngine/f;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {v0}, Lcom/iLoong/launcher/UI3DEngine/f;-><init>()V

    iput-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {v0}, Lcom/iLoong/launcher/UI3DEngine/f;-><init>()V

    iput-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v0, v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v1, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :goto_1
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {p0, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/iLoong/launcher/UI3DEngine/f;Lcom/badlogic/gdx/math/Rectangle;)Lcom/iLoong/launcher/UI3DEngine/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_1
.end method

.method private a()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v8, Lcom/iLoong/launcher/UI3DEngine/k;

    invoke-direct {v8, p0}, Lcom/iLoong/launcher/UI3DEngine/k;-><init>(Lcom/iLoong/launcher/UI3DEngine/l;)V

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->k:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->k:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/l;->j:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/f;

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    move v2, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/iLoong/launcher/UI3DEngine/f;-><init>(IIIILcom/iLoong/launcher/UI3DEngine/f;Lcom/iLoong/launcher/UI3DEngine/f;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    if-ge v0, v10, :cond_0

    iput v10, p0, Lcom/iLoong/launcher/UI3DEngine/l;->q:I

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    if-ge v0, v9, :cond_1

    iput v9, p0, Lcom/iLoong/launcher/UI3DEngine/l;->r:I

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v8, Lcom/iLoong/launcher/UI3DEngine/k;

    invoke-direct {v8, p0}, Lcom/iLoong/launcher/UI3DEngine/k;-><init>(Lcom/iLoong/launcher/UI3DEngine/l;)V

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/l;->j:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/f;

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    move v2, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/iLoong/launcher/UI3DEngine/f;-><init>(IIIILcom/iLoong/launcher/UI3DEngine/f;Lcom/iLoong/launcher/UI3DEngine/f;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v0, v8, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;

    const-string v0, "pack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " pack size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Z)Lcom/badlogic/gdx/math/Rectangle;
    .locals 12

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/l;->k:I

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->l:Z

    if-eqz v0, :cond_6

    move v0, v3

    :goto_1
    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->h:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->i:I

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/l;->a(II)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Z)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/m;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/iLoong/launcher/UI3DEngine/m;->b:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    const-string v0, "pack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Key with name \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is already in map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Z)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    iget-object v11, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v2, v11, Lcom/iLoong/launcher/UI3DEngine/k;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    invoke-direct {p0, v2, v0}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/iLoong/launcher/UI3DEngine/f;Lcom/badlogic/gdx/math/Rectangle;)Lcom/iLoong/launcher/UI3DEngine/f;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/iLoong/launcher/UI3DEngine/l;->a()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Z)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_9

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "pack"

    const-string v5, "start read"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v0, "pack"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read time="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    :goto_2
    :try_start_4
    iput-object p1, v2, Lcom/iLoong/launcher/UI3DEngine/f;->d:Ljava/lang/String;

    new-instance v10, Lcom/badlogic/gdx/math/Rectangle;

    iget-object v0, v2, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v10, v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>(Lcom/badlogic/gdx/math/Rectangle;)V

    iget v0, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    shr-int/lit8 v0, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/m;

    invoke-direct {v1, p0, v10, p3}, Lcom/iLoong/launcher/UI3DEngine/m;-><init>(Lcom/iLoong/launcher/UI3DEngine/l;Lcom/badlogic/gdx/math/Rectangle;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    iget-object v1, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    :cond_a
    iget-object v0, v11, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v0, v10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "pack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " file read error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/m;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v10, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v9, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/k;

    move-object v7, v0

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    if-nez v1, :cond_7

    sget v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n:I

    if-eq v11, v1, :cond_7

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-eqz v1, :cond_3

    iget-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "pack"

    const-string v4, "disposed!read from file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    iput-object v3, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v3, "pack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    :cond_1
    iget-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/g;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/e;

    iget-object v3, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v4, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/e;-><init>(Lcom/iLoong/launcher/UI3DEngine/l;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v1, v2, v7}, Lcom/iLoong/launcher/UI3DEngine/g;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/iLoong/launcher/UI3DEngine/k;)V

    iput-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    :cond_2
    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->ch:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->ci:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/g;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_3
    :goto_2
    iget-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/l;->p:Lcom/iLoong/launcher/UI3DEngine/k;

    if-eq v7, v1, :cond_b

    sget-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    if-eqz v1, :cond_b

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/m;

    iget-object v6, v1, Lcom/iLoong/launcher/UI3DEngine/m;->a:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    iget v3, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/m;

    iget-boolean v2, v2, Lcom/iLoong/launcher/UI3DEngine/m;->b:Z

    if-eqz v2, :cond_6

    const-string v2, "default"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    :try_start_2
    const-string v2, ""

    goto :goto_4

    :cond_7
    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_3

    sget v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n:I

    if-eq v11, v1, :cond_3

    iget-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    iput-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/l;->s:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    iget-object v3, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/g;->getTextureObjectHandle()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x1

    sget-object v3, Lcom/iLoong/launcher/UI3DEngine/l;->s:Ljava/nio/IntBuffer;

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/g;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/e;

    iget-object v2, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/e;->a(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/g;->reload()V

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->ch:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->ci:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/g;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto/16 :goto_2

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/m;

    iget-object v6, v1, Lcom/iLoong/launcher/UI3DEngine/m;->a:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v7, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    iget v3, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/iLoong/launcher/UI3DEngine/k;->b:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/m;

    iget-boolean v2, v2, Lcom/iLoong/launcher/UI3DEngine/m;->b:Z

    if-eqz v2, :cond_a

    const-string v2, "default"

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    goto :goto_5

    :cond_a
    const-string v2, ""

    goto :goto_6

    :cond_b
    sget-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    if-eqz v1, :cond_c

    sget v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n:I

    if-eq v11, v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    :goto_7
    if-nez v1, :cond_4

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    goto/16 :goto_3

    :cond_d
    sget-boolean v1, Lcom/iLoong/launcher/UI3DEngine/l;->c:Z

    if-eqz v1, :cond_10

    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v1, :cond_e

    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iLoong/launcher/UI3DEngine/l;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "pack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    :cond_e
    iget-object v1, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_f

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v7, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v4, v7, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    const-string v3, "pack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "write time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v9

    goto :goto_7

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "pack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " file write error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_10
    sget-wide v1, Lcom/iLoong/launcher/UI3DEngine/l;->b:J

    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->resetTextureWriteDelay(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x1

    goto/16 :goto_7
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/l;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
