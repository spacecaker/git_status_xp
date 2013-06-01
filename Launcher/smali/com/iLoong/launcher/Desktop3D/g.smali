.class public Lcom/iLoong/launcher/Desktop3D/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;
.implements Lcom/iLoong/launcher/app/x;


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Ljava/lang/Object;

.field public static c:Z

.field public static d:Z

.field public static f:Ljava/lang/Boolean;

.field public static g:Ljava/lang/Boolean;

.field public static h:Ljava/lang/Boolean;

.field public static i:Lcom/iLoong/launcher/Widget3D/j;

.field public static j:Lcom/iLoong/launcher/Widget3D/i;

.field private static o:Lcom/iLoong/launcher/UI3DEngine/r;

.field private static v:Lcom/iLoong/launcher/Desktop3D/br;


# instance fields
.field private A:Lcom/iLoong/launcher/Widget3D/g;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Lcom/iLoong/launcher/cling/o;

.field private D:Z

.field private E:I

.field public e:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field private n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private p:Lcom/iLoong/launcher/Desktop3D/e;

.field private q:Lcom/iLoong/launcher/Desktop3D/bs;

.field private r:Lcom/iLoong/launcher/Desktop3D/y;

.field private s:Lcom/iLoong/launcher/HotSeat3D/c;

.field private t:Lcom/iLoong/launcher/Desktop3D/bq;

.field private u:Lcom/iLoong/launcher/Desktop3D/v;

.field private w:Lcom/iLoong/launcher/Desktop3D/x;

.field private x:Lcom/iLoong/launcher/app/ak;

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->g:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->z:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->k:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->l:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->E:I

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->c()Lcom/iLoong/launcher/app/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    return-void
.end method

.method private a(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    const/4 p4, 0x2

    const/16 p5, 0x2

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-gez p6, :cond_1

    const p6, 0x7fffffff

    :cond_1
    if-gez p7, :cond_2

    const p7, 0x7fffffff

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, p2, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "D3DListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load widget preview drawable 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_8

    const/4 v2, 0x1

    move v7, v2

    :goto_0
    if-eqz v7, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/Desktop3D/br;->b(I)I

    move-result v4

    move/from16 v0, p6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/Desktop3D/br;->c(I)I

    move-result v4

    move/from16 v0, p7

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v5

    move v5, v4

    :goto_1
    const/high16 v4, 0x3f80

    if-le v3, v6, :cond_4

    int-to-float v4, v6

    int-to-float v6, v3

    div-float/2addr v4, v6

    :cond_4
    int-to-float v6, v2

    mul-float/2addr v6, v4

    int-to-float v9, v5

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    int-to-float v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    :cond_5
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_6
    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v4, :cond_14

    :cond_7
    int-to-float v3, v3

    const v4, 0x3f666666

    mul-float/2addr v3, v4

    float-to-int v5, v3

    int-to-float v2, v2

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    float-to-int v6, v2

    :goto_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v7, :cond_d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :goto_3
    return-object v2

    :cond_8
    const/4 v2, 0x0

    move v7, v2

    goto :goto_0

    :cond_9
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->ab:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v2, p4}, Lcom/iLoong/launcher/Desktop3D/br;->b(I)I

    move-result v2

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/br;->c(I)I

    move-result v3

    move/from16 v0, p7

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    if-ge v2, v4, :cond_a

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    :cond_a
    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    if-ge v3, v4, :cond_b

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    :cond_b
    sget-object v4, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/Desktop3D/br;->b(I)I

    move-result v4

    move/from16 v0, p6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/Desktop3D/br;->c(I)I

    move-result v4

    move/from16 v0, p7

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v5

    move v5, v4

    move v10, v2

    move v2, v3

    move v3, v10

    goto/16 :goto_1

    :cond_c
    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    move v5, v2

    move v6, v3

    goto/16 :goto_1

    :cond_d
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ab:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->B:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :cond_e
    const/4 v1, 0x0

    if-lez p3, :cond_f

    :try_start_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v1, v8, p3}, Lcom/iLoong/launcher/app/ak;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_f
    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v1}, Lcom/iLoong/launcher/app/ak;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_10
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/high16 v7, 0x3f80

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-le v8, v5, :cond_11

    int-to-float v7, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    :cond_11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    int-to-float v9, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12

    int-to-float v7, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    :cond_12
    const/high16 v8, 0x3f80

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_13

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v4, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    move v7, v3

    move v8, v4

    :goto_4
    sub-int v3, v5, v8

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v6, v7

    div-int/lit8 v4, v4, 0x2

    move v5, v8

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_13
    move v7, v3

    move v8, v4

    goto :goto_4

    :cond_14
    move v6, v2

    move v5, v3

    goto/16 :goto_2
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 8

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/app/ak;->b(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/ak;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v2, v6, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v7, v5

    div-int/lit8 v3, v3, 0x2

    if-ltz v2, :cond_1

    if-gez v3, :cond_2

    :cond_1
    int-to-float v2, v4

    int-to-float v3, v6

    div-float/2addr v2, v3

    int-to-float v3, v5

    int-to-float v4, v7

    div-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    :goto_0
    int-to-float v3, v6

    div-float/2addr v3, v2

    float-to-int v4, v3

    int-to-float v3, v7

    div-float v2, v3, v2

    float-to-int v5, v2

    sub-int v2, v6, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v7, v5

    div-int/lit8 v3, v3, 0x2

    :cond_2
    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    return-object v1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const v6, 0x3f666666

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-ge p2, v0, :cond_1

    move p2, v0

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/br;->b(I)I

    move-result v3

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Desktop3D/br;->c(I)I

    move-result v4

    const/high16 v0, 0x3f80

    if-le v2, v3, :cond_2

    int-to-float v0, v3

    int-to-float v3, v2

    div-float/2addr v0, v3

    :cond_2
    int-to-float v3, v1

    mul-float/2addr v3, v0

    int-to-float v5, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    int-to-float v0, v4

    int-to-float v3, v1

    div-float/2addr v0, v3

    :cond_3
    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v3, :cond_5

    :cond_4
    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    :cond_5
    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/bq;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v6, 0x3f80

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4, v4, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/g;->E:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/j;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/g;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/Desktop3D/g;->D:Z

    return-void
.end method

.method private a(Lcom/iLoong/launcher/a/j;)V
    .locals 2

    iget v0, p1, Lcom/iLoong/launcher/a/j;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Lcom/iLoong/launcher/a/f;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/iLoong/launcher/a/f;->c:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/Desktop3D/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V
    .locals 11

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/h;

    iget-object v5, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    move v2, v3

    :goto_1
    if-lt v2, v6, :cond_2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v1, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v8, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "update"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " folder item:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/app/ak;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v1, v0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/iLoong/launcher/Desktop3D/g;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->E:I

    return v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/x;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    return-object v0
.end method

.method static synthetic g(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Widget3D/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->A:Lcom/iLoong/launcher/Widget3D/g;

    return-object v0
.end method

.method static synthetic h(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/e;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    return-object v0
.end method

.method static synthetic i(Lcom/iLoong/launcher/Desktop3D/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->D:Z

    return v0
.end method

.method static synthetic v()Lcom/iLoong/launcher/Desktop3D/br;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/Desktop3D/aj;
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_0

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->e()Lcom/iLoong/launcher/Desktop3D/aj;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v4

    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0044

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0088

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    check-cast v5, Lcom/iLoong/launcher/Desktop3D/aj;

    goto :goto_0

    :cond_2
    iget-wide v0, v4, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget v0, v4, Lcom/iLoong/launcher/a/j;->r:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->r:I

    :cond_3
    iget v0, v4, Lcom/iLoong/launcher/a/j;->n:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->n:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->s:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->s:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->t:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->t:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->l:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->l:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->w:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->w:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->x:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->x:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->s:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->u:I

    iget v0, v4, Lcom/iLoong/launcher/a/j;->t:I

    iput v0, p1, Lcom/iLoong/launcher/a/f;->v:I

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/a/f;->a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/a/f;->a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v5

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-wide v7, v4, Lcom/iLoong/launcher/a/j;->m:J

    invoke-static {p1, v7, v8}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/bw;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bw;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Landroid/graphics/Bitmap;Lcom/iLoong/launcher/a/f;Lcom/iLoong/launcher/a/j;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    move-object v5, v6

    goto/16 :goto_0
.end method

.method public a(Lcom/iLoong/launcher/a/c;)Lcom/iLoong/launcher/widget/c;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/iLoong/launcher/widget/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "widget_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/iLoong/launcher/a/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/iLoong/launcher/widget/c;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/c;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v2, p1, Lcom/iLoong/launcher/a/c;->n:I

    iget v3, p1, Lcom/iLoong/launcher/a/c;->p:I

    iget v4, p1, Lcom/iLoong/launcher/a/c;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v6

    goto :goto_0
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->d()V

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/r;->b()Z

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/o;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/o;-><init>(Lcom/iLoong/launcher/Desktop3D/g;I)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/ad;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/Desktop3D/ad;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iLoong/launcher/Desktop3D/ad;->setCurrentPage(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->d:Z

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/r;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/r;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/d;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "update"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " folder:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/h;

    iget-object v5, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/a/h;->b(Lcom/iLoong/launcher/a/f;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindWidget3DAdded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_1

    const-string v0, "launcher"

    const-string v1, "bindWidget3DAdded but not CreatDone!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/g;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.iLoong.widget"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/pm/ResolveInfo;)V

    new-instance v1, Lcom/iLoong/launcher/Widget3D/o;

    const-string v2, "Widget3DShortcut"

    invoke-direct {v1, v2, v0}, Lcom/iLoong/launcher/Widget3D/o;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->a(Lcom/iLoong/launcher/Widget3D/o;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bv;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bv;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;II)V
    .locals 8

    const/4 v7, 0x1

    :goto_0
    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/j;)V

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v1, :cond_2

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-ne v1, v7, :cond_4

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v1, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    goto :goto_1

    :cond_4
    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/iLoong/launcher/a/h;

    iget-object v1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/iLoong/launcher/d/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v2, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/j;)V

    iget v4, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-eq v4, v7, :cond_6

    iget v4, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v4, :cond_7

    :cond_6
    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    const-string v4, "icon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    const-string v0, "launcher"

    const-string v1, "bindAppsRemoved but not CreatDone!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "launcher"

    const-string v1, "bindAppsRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/iLoong/launcher/Desktop3D/q;-><init>(Lcom/iLoong/launcher/Desktop3D/g;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bu;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bu;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->a(Z)V

    goto :goto_0
.end method

.method public a(III[III)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v8, p4, v7

    aput v8, p4, v6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    move v1, p2

    move v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(IIII[I)[I

    move-result-object p4

    :goto_1
    aget v0, p4, v7

    if-eq v0, v8, :cond_2

    aget v0, p4, v6

    if-ne v0, v8, :cond_4

    :cond_2
    move v0, v7

    :goto_2
    move v7, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p4, v6, v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a([III)Z

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_2
.end method

.method public b()Lcom/iLoong/launcher/Desktop3D/bq;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/a/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/c;)Lcom/iLoong/launcher/widget/c;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendAddAppWidgetMsg(Lcom/iLoong/launcher/widget/c;)V

    return-void
.end method

.method public b(Lcom/iLoong/launcher/a/f;)V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bx;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bx;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/f;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bindWidget3DUpdated"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/g;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    const-string v0, "launcher"

    const-string v1, "bindAppsAdded but not CreatDone!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/by;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/by;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;II)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bt;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/bt;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/g;->h()Z

    invoke-static {p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public c()Lcom/iLoong/launcher/Desktop3D/e;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const-string v1, "bindWidget3DRemoved"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_1

    const-string v1, "launcher"

    const-string v2, "bindWidget3DRemoved but not CreatDone!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/g;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/Widget3D/g;->b(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/Widget3D/g;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/Desktop3D/br;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v8

    move v6, v4

    :goto_1
    if-lt v6, v8, :cond_2

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const-string v1, "bindWidget3DRemoved"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u9700\u8981\u91cd\u542fLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/n;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/Desktop3D/n;-><init>(Lcom/iLoong/launcher/Desktop3D/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v2, v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_4
    check-cast v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v10

    move v5, v4

    :goto_3
    if-lt v5, v10, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/iLoong/launcher/Widget3D/f;->i()V

    :cond_5
    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v3

    instance-of v11, v3, Lcom/iLoong/launcher/a/d;

    if-eqz v11, :cond_7

    check-cast v3, Lcom/iLoong/launcher/a/d;

    iget-object v11, v3, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_8
    :try_start_2
    const-string v2, "***********"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \u4e0d\u9700\u8981\u91cd\u542fLauncher  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    const-string v0, "launcher"

    const-string v1, "bindAppsRemoved but not CreatDone!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bz;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bz;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public c(Ljava/util/ArrayList;II)V
    .locals 4

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :goto_0
    if-lt p2, p3, :cond_0

    const-string v0, "total time"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->b(Lcom/iLoong/launcher/a/j;)V

    const-string v0, "bind"

    const-string v1, "bindItemsTrue done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public create()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "start create1 d3d 1"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    const-class v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;

    invoke-direct {v1}, Lcom/iLoong/launcher/tween/View3DTweenAccessor;-><init>()V

    invoke-static {v0, v1}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v4}, Lcom/iLoong/launcher/UI3DEngine/r;-><init>(FFZ)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    const-string v0, "start create1 d3d 2"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/e;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const-string v0, "start create1 d3d 3"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/bs;

    const-string v1, "pageselected3dicon"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->q:Lcom/iLoong/launcher/Desktop3D/bs;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->q:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/c;->c()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->P:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/c;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->q:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bs;->a(I)V

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-direct {v0}, Lcom/iLoong/launcher/HotSeat3D/c;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->s:Lcom/iLoong/launcher/HotSeat3D/c;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->s:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Lcom/iLoong/launcher/app/ak;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/x;

    const-string v1, "draglayer"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->g(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/app/ak;)V

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/g;->e:Z

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/cling/o;

    const-string v1, "intro"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->hide()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-boolean v4, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i:Z

    :cond_1
    const-string v0, "finish create1 d3d"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "launcher"

    const-string v1, "bindAllApplications start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/iconbg/contactperson-icon.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->Z:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aa:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v5, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/k;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/k;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x6

    if-gt v0, v5, :cond_2

    const/4 v3, 0x6

    :goto_1
    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ca;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/ca;-><init>(Lcom/iLoong/launcher/Desktop3D/g;IILjava/util/ArrayList;I)V

    invoke-virtual {v6, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_2
    sub-int v3, v5, v2

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0}, Laurelienribon/tweenengine/TweenManager;->killAll()V

    return-void
.end method

.method public e()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "start d3d create2"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    new-instance v0, Lcom/iLoong/launcher/Widget3D/j;

    const-string v1, "folder3d"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Widget3D/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->i:Lcom/iLoong/launcher/Widget3D/j;

    new-instance v0, Lcom/iLoong/launcher/Widget3D/i;

    const-string v1, "contact3d"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Widget3D/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->j:Lcom/iLoong/launcher/Widget3D/i;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/bq;

    const-string v1, "workspace"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->O:I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "home_page"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/c;->c()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->P:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/c;->a(I)V

    :cond_0
    const-string v1, "create2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cellNum="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->e(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->d(I)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/v;

    const-string v1, "pagecontainer"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->u:Lcom/iLoong/launcher/Desktop3D/v;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/br;

    const-string v1, "apphost"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->u:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->q:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/ad;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/ad;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->u:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->q:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->bringToFront()V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/y;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/y;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->r:Lcom/iLoong/launcher/Desktop3D/y;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->r:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->r:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->h(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->a(Lcom/iLoong/launcher/app/ak;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->x:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/app/ak;)V

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->A:Lcom/iLoong/launcher/Widget3D/g;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Desktop3D/bq;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->B:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setContinuousRendering(Z)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/g;->pause()V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "end d3d create2"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    new-instance v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    const-string v6, "celllayout"

    invoke-direct {v5, v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_0

    const-string v0, "launcher"

    const-string v1, "bindAppsUpdated but not CreatDone!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/j;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/j;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/cling/o;

    const-string v1, "intro"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->hide()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-boolean v2, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/g;->m:Z

    goto :goto_0
.end method

.method f(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->p()Lcom/iLoong/launcher/HotSeat3D/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_0

    :goto_1
    if-lt v1, v4, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v6, Lcom/iLoong/launcher/Desktop3D/p;

    invoke-direct {v6, p0, v0, v5, p1}, Lcom/iLoong/launcher/Desktop3D/p;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public g()Lcom/iLoong/launcher/d/a;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/e;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v4, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/iLoong/launcher/d/a;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public g(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/s;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/s;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/util/ArrayList;)V
    .locals 14

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v7

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    :goto_0
    if-lt v1, v2, :cond_0

    move v6, v4

    :goto_1
    if-lt v6, v7, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    const-string v1, "launcher"

    const-string v2, "exe remove app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v10

    move v5, v4

    :goto_2
    if-lt v5, v10, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    :goto_3
    if-ge v1, v2, :cond_2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/g;->w:Lcom/iLoong/launcher/Desktop3D/x;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/x;->b(Lcom/iLoong/launcher/Desktop3D/bd;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    instance-of v3, v2, Lcom/iLoong/launcher/a/f;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/iLoong/launcher/a/f;

    iget-object v3, v2, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    instance-of v3, v2, Lcom/iLoong/launcher/a/h;

    if-eqz v3, :cond_a

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {p0, v1, p1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_a
    instance-of v3, v2, Lcom/iLoong/launcher/a/c;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/iLoong/launcher/a/c;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/iLoong/launcher/a/c;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    check-cast v3, Lcom/iLoong/launcher/widget/c;

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->deleteSysWidget(Lcom/iLoong/launcher/widget/c;)V

    goto :goto_6
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "D3DListener"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->l:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method i(Ljava/util/ArrayList;)V
    .locals 14

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->c()Lcom/iLoong/launcher/app/ak;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v7

    move v6, v4

    :goto_0
    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v8

    move v5, v4

    :goto_1
    if-ge v5, v8, :cond_1

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    instance-of v3, v2, Lcom/iLoong/launcher/a/f;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/iLoong/launcher/a/f;

    iget-object v3, v2, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v2, v2, Lcom/iLoong/launcher/a/f;->l:I

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v3, v4

    :goto_2
    if-lt v3, v10, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/a/b;

    iget-object v11, v2, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v11, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "update"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " workspace:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v2, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v11

    move-object v2, v1

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-static {v11}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v11

    iput-object v11, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    instance-of v2, v2, Lcom/iLoong/launcher/a/h;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-direct {p0, v1, p1}, Lcom/iLoong/launcher/Desktop3D/g;->b(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method public j()V
    .locals 2

    const-string v0, "launcher"

    const-string v1, "startBindingTrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->o()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeAllViews()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->p()Lcom/iLoong/launcher/HotSeat3D/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeAllViews()V

    return-void
.end method

.method j(Ljava/util/ArrayList;)V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->o()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    move v6, v1

    :goto_1
    if-lt v6, v8, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/m;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/m;-><init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Ljava/util/HashSet;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v9, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method

.method public k()Z
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/l;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/Desktop3D/l;-><init>(Lcom/iLoong/launcher/Desktop3D/g;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "launcher"

    const-string v2, "break"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v1

    if-lt v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeAllViews()V

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v6, v1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v6, :cond_4

    check-cast v1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v0

    return v0
.end method

.method public p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    const-string v0, "Desktop3D listener"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->i()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/r;->d()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->u:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->e()V

    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->t:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->visible:Z

    goto :goto_0
.end method

.method public render()V
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getRawDeltaTime()F

    move-result v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/TweenManager;->update(F)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClear(I)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/r;->draw()V

    return-void
.end method

.method public resize(II)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->resetSize()V

    const-string v0, "resize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "resize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "utils3d width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "resize"

    const-string v1, "width and height error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "resize"

    const-string v1, "width and height error:stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-boolean v3, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/g;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "resize"

    const-string v1, "width and height error:paused"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-boolean v3, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v:Z

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    const-string v0, "resize"

    const-string v1, "width and height error:Restart..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->d()V

    goto :goto_0

    :cond_3
    const-string v0, "resize"

    const-string v1, "width and height error:resumed..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->resetSize()V

    const-string v0, "resize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "utils3d width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "resize"

    const-string v1, "checkSize:now Restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->d()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->v:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->c()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->f:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p()V

    const-string v0, "bind"

    const-string v1, "sendCancelProgressDialogMsg done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p()V

    const-string v0, "bind"

    const-string v1, "sendCancelProgressDialogMsg done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    goto :goto_0
.end method

.method public t()V
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->o:Lcom/iLoong/launcher/UI3DEngine/r;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->C:Lcom/iLoong/launcher/cling/o;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/o;->disposeTexture()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->show()V

    return-void
.end method

.method public u()Lcom/iLoong/launcher/cling/l;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/g;->p:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->c()Lcom/iLoong/launcher/HotSeat3D/b;

    move-result-object v0

    return-object v0
.end method
