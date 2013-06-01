.class public Lcom/iLoong/launcher/Desktop3D/CellLayout3D;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:Z

.field public static D:I

.field public static E:Ljava/lang/String;

.field public static final U:I

.field public static a:F

.field public static b:F

.field public static l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static r:Z

.field public static s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public static v:Z

.field public static w:Z


# instance fields
.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field H:I

.field I:I

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field O:I

.field P:I

.field Q:I

.field R:Z

.field S:Z

.field T:Ljava/util/ArrayList;

.field V:I

.field W:Z

.field X:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field Y:[I

.field Z:Ljava/util/ArrayList;

.field private aA:Z

.field private aB:Lcom/iLoong/launcher/Desktop3D/cf;

.field private aC:F

.field private aD:F

.field private aE:F

.field private aF:F

.field private aG:Z

.field private aH:Ljava/util/ArrayList;

.field private aI:I

.field private aJ:Ljava/util/ArrayList;

.field private aK:Ljava/util/ArrayList;

.field private final aL:Ljava/util/Stack;

.field private aM:[I

.field private aN:[I

.field private aO:[I

.field aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:Z

.field private final ag:Landroid/graphics/Rect;

.field private final ah:Lcom/iLoong/launcher/Desktop3D/ae;

.field private final ai:[I

.field private final aj:[I

.field private final ak:Landroid/graphics/PointF;

.field private al:Z

.field private am:[I

.field private an:I

.field private ao:F

.field private ap:Landroid/graphics/Rect;

.field private aq:Landroid/graphics/Rect;

.field private ar:Z

.field private final as:Landroid/graphics/Point;

.field private at:[Landroid/graphics/Point;

.field private au:[F

.field private av:I

.field private final aw:Landroid/graphics/Paint;

.field private ax:Landroid/graphics/drawable/Drawable;

.field private ay:F

.field private final az:[I

.field c:[I

.field d:[[Z

.field e:[[Z

.field f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

.field h:I

.field i:I

.field j:I

.field k:I

.field public t:I

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    sput v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b:F

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r:Z

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w:Z

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    sput v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    const-string v0, "left"

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->E:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->U:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/16 v2, 0x14

    const/high16 v6, 0x3f80

    const/4 v1, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->af:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ag:Landroid/graphics/Rect;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ae;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/ae;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ah:Lcom/iLoong/launcher/Desktop3D/ae;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ai:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aj:[I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ak:Landroid/graphics/PointF;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c:[I

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->al:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->am:[I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->an:I

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ao:F

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ar:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->as:Landroid/graphics/Point;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->at:[Landroid/graphics/Point;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->at:[Landroid/graphics/Point;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->au:[F

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->av:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aw:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ax:Landroid/graphics/drawable/Drawable;

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ay:F

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->az:[I

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aA:Z

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->h:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i:I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->j:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->k:I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aC:F

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aD:F

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aE:F

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aF:F

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aG:Z

    const-string v0, "left"

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->F:Ljava/lang/String;

    const-string v0, "right"

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->G:Ljava/lang/String;

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->H:I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->I:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aH:Ljava/util/ArrayList;

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aI:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aJ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aK:Ljava/util/ArrayList;

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->J:F

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->K:F

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->L:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->M:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->N:F

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aL:Ljava/util/Stack;

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->S:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->W:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->X:Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Y:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->transform:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cj:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ck:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e:[[Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    :cond_4
    cmpl-float v2, v0, v6

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v7}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sget-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bn:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->az:[I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->az:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v7

    move v0, v7

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->at:[Landroid/graphics/Point;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->au:[F

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ap:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aq:Landroid/graphics/Rect;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/cf;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/cf;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aB:Lcom/iLoong/launcher/Desktop3D/cf;

    return-void

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->at:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    move v0, v6

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private a(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, p1

    :goto_0
    add-int v0, p1, p3

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v1, v0, :cond_0

    move v0, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v2, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    aget-object v2, p5, v1

    aput-boolean p6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/Stack;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aL:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;II[I)[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->co:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p1, v0

    div-int/2addr v1, v0

    add-int v2, p2, v0

    div-int v0, v2, v0

    if-nez p3, :cond_0

    const/4 v2, 0x2

    new-array p3, v2, [I

    aput v1, p3, v3

    aput v0, p3, v4

    :goto_0
    return-object p3

    :cond_0
    aput v1, p3, v3

    aput v0, p3, v4

    goto :goto_0
.end method

.method public static d(II[I)[I
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private e(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private j(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aL:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aL:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private x()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;II)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x4000

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p2, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {p2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dyna x, y = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "quiet x, y = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v5, v7

    add-float/2addr v3, v5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, v3, v2

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v3, v2

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-int v2, v2

    sget v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->U:I

    sub-int/2addr v2, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v2, v4, :cond_4

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget v4, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-int v4, v4

    sget v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->U:I

    sub-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v4, v3, :cond_3

    :cond_2
    move v2, v0

    :cond_3
    if-eqz v2, :cond_5

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public a(II)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt p2, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v1, v1, p1

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method a(IIZZ)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    invoke-virtual {p0, p4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Z)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    int-to-float v2, v2

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    int-to-float v2, v2

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/high16 v2, 0x3f00

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-object v0
.end method

.method a(Z)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/a/h;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/h;-><init>()V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    iput v2, v0, Lcom/iLoong/launcher/a/h;->p:I

    iput v2, v0, Lcom/iLoong/launcher/a/h;->q:I

    new-instance v1, Lcom/iLoong/launcher/d/a;

    const-string v2, "FolderIcon3DView"

    invoke-direct {v1, v2, v0}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_0
    return-object v1
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    return-void
.end method

.method a(IIII[I)V
    .locals 6

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ad:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v3, p3

    add-int/lit8 v4, p3, -0x1

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ad:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p5, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ae:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v2, p4

    add-int/lit8 v3, p4, -0x1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ae:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p5, v0

    return-void
.end method

.method a(II[I)V
    .locals 5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ad:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    aput v0, p3, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ae:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v1, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v2, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-int v3, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-int v4, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIII[[ZZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    sput-object p1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->E:Ljava/lang/String;

    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "first"

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r()V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void

    :cond_1
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "last"

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 13

    const/high16 v12, 0x4000

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    move v0, v8

    :goto_0
    if-gez v10, :cond_1

    :cond_0
    iput-boolean v8, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->W:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->X:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    return-void

    :cond_1
    move v7, v8

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v7, v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move v10, v0

    move v0, v2

    goto :goto_0

    :cond_2
    if-ge v2, v11, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v10

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    invoke-virtual {p0, v7, v10, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aget v6, v6, v8

    int-to-float v6, v6

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v3, v9

    int-to-float v3, v3

    iget v9, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v3, v9

    div-float/2addr v3, v12

    add-float/2addr v3, v6

    iput v3, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aget v5, v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v12

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v9, v2, 0x1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v2, v2, v7

    aput-object v0, v2, v10

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v2, v2, v7

    aput-boolean v1, v2, v10

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    iput v2, v5, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    iput v2, v5, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iput v2, v5, Lcom/iLoong/launcher/a/j;->q:I

    iput v7, v5, Lcom/iLoong/launcher/a/j;->s:I

    iput v10, v5, Lcom/iLoong/launcher/a/j;->t:I

    iput v7, v5, Lcom/iLoong/launcher/a/j;->u:I

    iput v10, v5, Lcom/iLoong/launcher/a/j;->v:I

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    iget v4, v5, Lcom/iLoong/launcher/a/j;->p:I

    int-to-float v4, v4

    iget v5, v5, Lcom/iLoong/launcher/a/j;->q:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move v2, v9

    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1
.end method

.method a(IIII)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    add-int/lit8 v3, v3, -0x1

    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v2, v4, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v3, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_1

    move v2, v1

    :goto_1
    if-lt v2, p4, :cond_3

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    add-int v5, p1, v3

    aget-object v4, v4, v5

    add-int v5, p2, v2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method a(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z
    .locals 5

    const/high16 v4, 0x4000

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;II)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z
    .locals 9

    const/high16 v8, 0x4000

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addView:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt p2, v0, :cond_2

    :cond_1
    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView x cell error.... x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    if-ltz p3, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt p3, v0, :cond_4

    :cond_3
    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView y cell error.... y = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l()V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v5

    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    check-cast p1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteWidget3D:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/iLoong/launcher/a/j;->o:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    invoke-virtual {p0, p2, p3, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aget v3, v3, v1

    int-to-float v3, v3

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v3, v6

    iput v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v3, v6

    iput v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput p2, v0, Lcom/iLoong/launcher/a/j;->s:I

    iput p3, v0, Lcom/iLoong/launcher/a/j;->t:I

    iput p2, v0, Lcom/iLoong/launcher/a/j;->u:I

    iput p3, v0, Lcom/iLoong/launcher/a/j;->v:I

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v3, v3

    iput v3, v0, Lcom/iLoong/launcher/a/j;->p:I

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v3, v3

    iput v3, v0, Lcom/iLoong/launcher/a/j;->q:I

    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move v3, v1

    :goto_1
    if-lt v3, v4, :cond_8

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_9

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    add-int v7, p2, v3

    aget-object v6, v6, v7

    add-int v7, p3, v0

    aput-boolean v2, v6, v7

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    add-int v7, p2, v3

    aget-object v6, v6, v7

    add-int v7, p3, v0

    aput-object p1, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIII)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v1, v1, p2

    aget-object v1, v1, p3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 22

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, p3, v4

    if-lez v4, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move/from16 v0, p3

    float-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    if-nez v4, :cond_0

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    int-to-float v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;FFZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l()V

    instance-of v4, v9, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->k()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v7

    move/from16 v0, p2

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(IIII[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x0

    aget v10, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x1

    aget v11, v3, v4

    move-object/from16 v8, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIII)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v15, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    if-nez v3, :cond_8

    move/from16 v0, p2

    float-to-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    :cond_7
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    iget v5, v9, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v14, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v4, v7

    int-to-float v4, v4

    iget v5, v9, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v14, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_1

    :cond_9
    if-eqz v14, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    :cond_a
    move/from16 v0, p2

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(II[I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(II)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    move/from16 v0, p2

    float-to-int v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;II)I

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->S:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIZZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v5, v7

    int-to-float v5, v5

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->S:Z

    :goto_2
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getVisible()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIZZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->S:Z

    :cond_e
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v5, v7

    int-to-float v5, v5

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    goto/16 :goto_3

    :cond_10
    instance-of v4, v9, Lcom/iLoong/launcher/d/a;

    if-nez v4, :cond_11

    instance-of v4, v9, Lcom/iLoong/launcher/Widget3D/f;

    if-nez v4, :cond_11

    instance-of v4, v9, Lcom/iLoong/launcher/widget/c;

    if-eqz v4, :cond_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v14

    move/from16 v0, p2

    float-to-int v11, v0

    move/from16 v0, p3

    float-to-int v12, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object/from16 v21, v0

    move-object/from16 v10, p0

    move v15, v13

    move/from16 v16, v14

    invoke-virtual/range {v10 .. v21}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ltz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ltz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v5, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v5, v6, :cond_13

    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    if-nez v5, :cond_15

    if-nez v4, :cond_14

    move/from16 v0, p2

    float-to-int v4, v0

    move/from16 v0, p3

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    goto/16 :goto_0

    :cond_15
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v6, v13

    int-to-float v6, v6

    iget v7, v9, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v6, v14

    int-to-float v6, v6

    iget v7, v9, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;FFZ)Z
    .locals 17

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-ge v15, v2, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v2, v4, :cond_1

    if-nez v3, :cond_3

    move v2, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v5, v5, v2

    aget-boolean v5, v5, v4

    if-nez v5, :cond_14

    add-int/lit8 v5, v3, 0x1

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    :cond_3
    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ge v2, v15, :cond_5

    if-nez p4, :cond_4

    const v2, 0x7f0c0087

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v2, v2, -0x1

    move v14, v2

    move v4, v8

    move v5, v3

    move v3, v7

    :goto_4
    if-gez v14, :cond_7

    :cond_6
    :goto_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    move v10, v2

    move v2, v3

    move v3, v5

    move v5, v4

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v10, v4, :cond_8

    add-int/lit8 v4, v14, -0x1

    move v14, v4

    move v4, v5

    move v5, v3

    move v3, v2

    goto :goto_4

    :cond_8
    if-ge v5, v15, :cond_6

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    sub-int v4, v15, v5

    const/4 v6, 0x1

    if-eq v4, v6, :cond_13

    const/4 v2, 0x1

    move v11, v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v2, v2, v10

    aget-boolean v2, v2, v14

    if-nez v2, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    if-nez v3, :cond_9

    if-eqz p4, :cond_a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIZZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iput v2, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iput v2, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    if-nez p4, :cond_6

    move-object v2, v3

    check-cast v2, Lcom/iLoong/launcher/d/a;

    iget-object v4, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v6, v6

    iput v6, v4, Lcom/iLoong/launcher/a/h;->p:I

    iget-object v4, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v6, v6

    iput v6, v4, Lcom/iLoong/launcher/a/h;->q:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v4, v4, v10

    aput-object v3, v4, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v4, v4, v10

    const/4 v6, 0x1

    aput-boolean v6, v4, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_9
    if-lt v6, v5, :cond_b

    move-object v5, v3

    check-cast v5, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v5}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    iput v6, v5, Lcom/iLoong/launcher/a/j;->n:I

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v6, v6

    iput v6, v5, Lcom/iLoong/launcher/a/j;->p:I

    iget v6, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v6, v6

    iput v6, v5, Lcom/iLoong/launcher/a/j;->q:I

    iput v10, v5, Lcom/iLoong/launcher/a/j;->s:I

    iput v14, v5, Lcom/iLoong/launcher/a/j;->t:I

    iput v10, v5, Lcom/iLoong/launcher/a/j;->u:I

    iput v14, v5, Lcom/iLoong/launcher/a/j;->v:I

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v6

    check-cast v5, Lcom/iLoong/launcher/a/h;

    invoke-virtual {v6, v5}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/h;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/iLoong/launcher/d/a;->b(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIZZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    goto/16 :goto_8

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v2, v2, v10

    aget-boolean v2, v2, v14

    if-nez v2, :cond_12

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v6

    if-eqz p4, :cond_11

    invoke-virtual {v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->clone()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    const/high16 v8, 0x3f00

    iput v8, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v2, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v7}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v4, v8

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    add-float/2addr v4, v7

    iput v4, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v12, v5, 0x1

    add-int/lit8 v13, v3, -0x1

    if-nez p4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v10

    aput-object v2, v3, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v3, v3, v10

    const/4 v4, 0x1

    aput-boolean v4, v3, v14

    move-object v3, v2

    check-cast v3, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v3}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Lcom/iLoong/launcher/a/j;->p:I

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Lcom/iLoong/launcher/a/j;->q:I

    move-object/from16 v0, v16

    iput v10, v0, Lcom/iLoong/launcher/a/j;->s:I

    move-object/from16 v0, v16

    iput v14, v0, Lcom/iLoong/launcher/a/j;->t:I

    move-object/from16 v0, v16

    iput v10, v0, Lcom/iLoong/launcher/a/j;->u:I

    move-object/from16 v0, v16

    iput v14, v0, Lcom/iLoong/launcher/a/j;->v:I

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v6, v3

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v7, v3

    const/4 v3, 0x1

    if-le v15, v3, :cond_f

    int-to-float v3, v6

    cmpl-float v3, p2, v3

    if-nez v3, :cond_e

    int-to-float v3, v7

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_f

    :cond_e
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    const/4 v3, 0x1

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v5, 0x3f4ccccd

    int-to-float v6, v6

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_f
    invoke-static/range {v16 .. v16}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v2, :cond_10

    check-cast v9, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v9}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_10
    move v3, v12

    move v4, v13

    :goto_b
    if-eqz v4, :cond_6

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v5, v3

    move v2, v11

    move v3, v4

    goto/16 :goto_6

    :cond_11
    move-object v2, v9

    goto/16 :goto_a

    :cond_12
    move v4, v3

    move v3, v5

    goto :goto_b

    :cond_13
    move v11, v2

    goto/16 :goto_7

    :cond_14
    move v5, v3

    goto/16 :goto_3
.end method

.method public a(Ljava/util/ArrayList;II)Z
    .locals 17

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v15, v4

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    move v4, v15

    :cond_1
    :goto_2
    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->W:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    const-string v3, "test"

    const-string v6, "error start..........."

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "cellDropType "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",name = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " screen: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->n:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " x:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->p:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " y:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " sx:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->w:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " sy:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->x:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " cx:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->s:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " cy:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "test"

    const-string v6, "error end  ..........."

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v3

    instance-of v6, v2, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v6, :cond_3

    iget-wide v6, v3, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    check-cast v2, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "deleteWidget3D:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/iLoong/launcher/a/j;->o:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const v2, 0x7f0c0086

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->W:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->X:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    return v4

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move v7, v5

    move v8, v6

    invoke-virtual/range {v2 .. v13}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v2, v3, :cond_8

    :cond_7
    const/4 v15, 0x0

    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v15, v2

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_1

    :pswitch_0
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;FFZ)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v2, v2

    iget v5, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(II[I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v5, v2, v5

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    if-eqz v5, :cond_1

    instance-of v2, v5, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move-object v2, v3

    check-cast v2, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v2}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->Q:I

    iput v4, v2, Lcom/iLoong/launcher/a/j;->n:I

    iget v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v4, v4

    iput v4, v2, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v4, v4

    iput v4, v2, Lcom/iLoong/launcher/a/j;->q:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    iput v4, v2, Lcom/iLoong/launcher/a/j;->s:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    iput v4, v2, Lcom/iLoong/launcher/a/j;->t:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    iput v4, v2, Lcom/iLoong/launcher/a/j;->u:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    iput v4, v2, Lcom/iLoong/launcher/a/j;->v:I

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    check-cast v2, Lcom/iLoong/launcher/a/h;

    invoke-virtual {v4, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/h;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    check-cast v2, Lcom/iLoong/launcher/d/a;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/iLoong/launcher/d/a;->b(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const/high16 v5, 0x3f80

    iput v5, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->j()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput-object v3, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move v7, v5

    move v8, v6

    invoke-virtual/range {v2 .. v13}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v2, v3, :cond_c

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([III)Z
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a([IIIIILcom/iLoong/launcher/UI3DEngine/View3D;)Z

    move-result v0

    return v0
.end method

.method a([IIIIILcom/iLoong/launcher/UI3DEngine/View3D;)Z
    .locals 11

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->h(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v5, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ltz p4, :cond_0

    add-int/lit8 v2, p2, -0x1

    sub-int v2, p4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v3, p2, -0x1

    sub-int v3, v2, v3

    if-ltz p4, :cond_d

    add-int/lit8 v2, p2, -0x1

    add-int v4, p4, v2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    :goto_2
    const/4 v2, 0x0

    if-ltz p5, :cond_1

    add-int/lit8 v3, p3, -0x1

    sub-int v3, p5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v4, p3, -0x1

    sub-int v4, v3, v4

    if-ltz p5, :cond_c

    add-int/lit8 v3, p3, -0x1

    add-int v6, p5, v3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    add-int/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_4
    move v7, v2

    move v2, v5

    :goto_5
    if-ge v7, v3, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v1, -0x1

    if-ne p4, v1, :cond_b

    const/4 v1, -0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->i(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_6
    if-lt v6, v8, :cond_6

    :goto_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    move v5, v4

    :goto_8
    if-lt v5, p2, :cond_8

    if-eqz p1, :cond_7

    const/4 v2, 0x0

    aput v6, p1, v2

    const/4 v2, 0x1

    aput v7, p1, v2

    :cond_7
    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_9
    if-lt v4, p3, :cond_9

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_8

    :cond_9
    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    add-int v10, v6, v5

    aget-object v9, v9, v10

    add-int v10, v7, v4

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_a

    add-int v4, v6, v5

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_b
    const/4 p4, -0x1

    const/16 p5, -0x1

    move v5, v2

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_4

    :cond_d
    move v8, v3

    goto :goto_2
.end method

.method a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I
    .locals 25

    invoke-direct/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w()V

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V

    move/from16 v0, p1

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ad:I

    add-int/2addr v4, v5

    add-int/lit8 v5, p5, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v13, v3

    move/from16 v0, p2

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ae:I

    add-int/2addr v4, v5

    add-int/lit8 v5, p6, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v14, v3

    if-eqz p9, :cond_1

    :goto_0
    const-wide v9, 0x7fefffffffffffffL

    new-instance v15, Landroid/graphics/Rect;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    move/from16 v18, v0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    :cond_0
    :goto_1
    return-object p9

    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 p9, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v12, v3

    :goto_2
    add-int/lit8 v3, p4, -0x1

    sub-int v3, v18, v3

    if-lt v12, v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V

    const-wide v3, 0x7fefffffffffffffL

    cmpl-double v3, v9, v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, p9, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, p9, v3

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/Stack;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    move v11, v3

    :goto_3
    add-int/lit8 v3, p3, -0x1

    sub-int v3, v17, v3

    if-lt v11, v3, :cond_5

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    const/4 v3, -0x1

    if-eqz p8, :cond_21

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    move/from16 v0, p3

    if-lt v4, v0, :cond_c

    const/4 v4, 0x1

    move/from16 v0, p3

    move/from16 v1, p5

    if-lt v0, v1, :cond_f

    const/4 v7, 0x1

    :goto_5
    move/from16 v0, p4

    move/from16 v1, p6

    if-lt v0, v1, :cond_10

    const/4 v3, 0x1

    :goto_6
    move v6, v3

    move v8, v4

    move/from16 v5, p4

    move/from16 v4, p3

    :goto_7
    if-eqz v7, :cond_11

    if-eqz v6, :cond_11

    move/from16 v0, p5

    if-lt v4, v0, :cond_6

    :cond_6
    move/from16 v0, p6

    if-lt v5, v0, :cond_7

    :cond_7
    move v6, v5

    move v5, v4

    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ai:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v8}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(II[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aL:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    add-int v4, v11, v5

    add-int v7, v12, v6

    invoke-virtual {v3, v11, v12, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v7

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    aget v7, v8, v7

    sub-int/2addr v7, v13

    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    const/4 v7, 0x1

    aget v7, v8, v7

    sub-int/2addr v7, v14

    int-to-double v7, v7

    const-wide/high16 v21, 0x4000

    move-wide/from16 v0, v21

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpg-double v19, v7, v9

    if-gtz v19, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_a
    const/4 v4, 0x0

    aput v11, p9, v4

    const/4 v4, 0x1

    aput v12, p9, v4

    if-eqz p10, :cond_b

    const/4 v4, 0x0

    aput v5, p10, v4

    const/4 v4, 0x1

    aput v6, p10, v4

    :cond_b
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v3, v7

    :goto_a
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-wide v9, v3

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_b
    move/from16 v0, p4

    if-lt v3, v0, :cond_d

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_4

    :cond_d
    add-int v5, v11, v4

    aget-object v5, p11, v5

    add-int v6, v12, v3

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_e

    move-wide v3, v9

    goto :goto_a

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_11
    if-eqz v8, :cond_15

    if-nez v7, :cond_15

    const/4 v3, 0x0

    move/from16 v23, v3

    move v3, v7

    move/from16 v7, v23

    :goto_c
    if-lt v7, v5, :cond_12

    if-nez v3, :cond_20

    add-int/lit8 v4, v4, 0x1

    move v7, v5

    move v5, v3

    move/from16 v23, v4

    move v4, v6

    move/from16 v6, v23

    :goto_d
    move/from16 v0, p5

    if-lt v6, v0, :cond_19

    const/4 v3, 0x1

    :goto_e
    or-int/2addr v5, v3

    move/from16 v0, p6

    if-lt v7, v0, :cond_1a

    const/4 v3, 0x1

    :goto_f
    or-int/2addr v4, v3

    if-eqz v8, :cond_1b

    const/4 v3, 0x0

    :goto_10
    move v8, v3

    move/from16 v23, v5

    move v5, v7

    move/from16 v7, v23

    move/from16 v24, v6

    move v6, v4

    move/from16 v4, v24

    goto/16 :goto_7

    :cond_12
    add-int v19, v11, v4

    add-int/lit8 v20, v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_13

    add-int v19, v11, v4

    aget-object v19, p11, v19

    add-int v20, v12, v7

    aget-boolean v19, v19, v20

    if-eqz v19, :cond_14

    :cond_13
    const/4 v3, 0x1

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_15
    if-nez v6, :cond_1f

    const/4 v3, 0x0

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :goto_11
    if-lt v6, v4, :cond_16

    if-nez v3, :cond_1e

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    move v4, v3

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto :goto_d

    :cond_16
    add-int v19, v12, v5

    add-int/lit8 v20, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_17

    add-int v19, v11, v6

    aget-object v19, p11, v19

    add-int v20, v12, v5

    aget-boolean v19, v19, v20

    if-eqz v19, :cond_18

    :cond_17
    const/4 v3, 0x1

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_19
    const/4 v3, 0x0

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    goto :goto_f

    :cond_1b
    const/4 v3, 0x1

    goto :goto_10

    :cond_1c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_1d
    move-wide v3, v9

    goto/16 :goto_a

    :cond_1e
    move v6, v4

    move v4, v3

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_d

    :cond_1f
    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    move/from16 v24, v7

    move v7, v5

    move/from16 v5, v24

    goto/16 :goto_d

    :cond_20
    move v7, v5

    move v5, v3

    move/from16 v23, v4

    move v4, v6

    move/from16 v6, v23

    goto/16 :goto_d

    :cond_21
    move v5, v3

    move v6, v4

    goto/16 :goto_8
.end method

.method a(IIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I)[I
    .locals 12

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method public addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z

    return-void
.end method

.method public addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    move-object v0, p2

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v3

    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "celllayout <addViewAt>Cell x, y = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Lcom/iLoong/launcher/a/j;->s:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v3, Lcom/iLoong/launcher/a/j;->s:I

    if-eq v0, v5, :cond_0

    iget v0, v3, Lcom/iLoong/launcher/a/j;->t:I

    if-eq v0, v5, :cond_0

    move v0, v1

    :goto_0
    iget v2, v3, Lcom/iLoong/launcher/a/j;->w:I

    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v1

    :goto_1
    iget v4, v3, Lcom/iLoong/launcher/a/j;->x:I

    if-lt v2, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    iget v5, v3, Lcom/iLoong/launcher/a/j;->s:I

    add-int/2addr v5, v0

    aget-object v4, v4, v5

    iget v5, v3, Lcom/iLoong/launcher/a/j;->t:I

    add-int/2addr v5, v2

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v5, v3, Lcom/iLoong/launcher/a/j;->s:I

    add-int/2addr v5, v0

    aget-object v4, v4, v5

    iget v5, v3, Lcom/iLoong/launcher/a/j;->t:I

    add-int/2addr v5, v2

    aput-object p2, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method b()I
    .locals 1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cm:I

    return v0
.end method

.method b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 11

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x0

    aget v7, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x1

    aget v8, v0, v1

    move-object v5, p0

    move-object v6, p1

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->clone()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    invoke-virtual {p0, v1, v2, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/high16 v2, 0x3f00

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 3

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput-object v1, v0, p2

    return-void
.end method

.method b(II[I)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIII[I)V

    return-void
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const-string v3, "launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remove"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v1, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v2, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-int v3, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-int v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIII[[ZZ)V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 4

    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    return v0

    :cond_1
    move v0, v1

    :goto_1
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v3, :cond_2

    :goto_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    instance-of v3, v3, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    instance-of v3, v3, Lcom/iLoong/launcher/d/a;

    if-eqz v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method b(IIII[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method c()I
    .locals 1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cl:I

    return v0
.end method

.method c(Lcom/iLoong/launcher/UI3DEngine/View3D;)I
    .locals 1

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/iLoong/launcher/widget/c;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt p2, v0, :cond_1

    :cond_0
    const-string v0, "test"

    const-string v1, "getCellViewAtPosition exception occur!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method c(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 12

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v11}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "CellReflect"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/bq;->A:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    invoke-virtual {p0, v1, v2, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II[I)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f4ccccd

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    goto :goto_0
.end method

.method public c(I)V
    .locals 12

    const/4 v5, 0x1

    const/4 v1, 0x0

    add-int/lit8 v3, p1, -0x1

    move v0, v1

    move v4, v1

    move v7, v5

    move v6, v1

    move v9, v1

    move v2, v1

    move v8, v1

    move v10, v1

    :goto_0
    if-gez v3, :cond_0

    move v1, v4

    move v3, v9

    move v5, v8

    move v4, v2

    move v2, v6

    move v6, v10

    :goto_1
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    if-gt v2, v7, :cond_8

    invoke-virtual {p0, v1, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    :goto_2
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    move v8, v1

    :goto_3
    if-gez v0, :cond_1

    move v0, v1

    move v4, v1

    :goto_4
    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    add-int/lit8 v6, v6, 0x1

    move v7, v5

    :goto_5
    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v6, v10, :cond_4

    move v6, v1

    move v10, v1

    :goto_6
    if-nez v4, :cond_c

    if-eqz v10, :cond_7

    move v1, v0

    move v3, v9

    move v5, v10

    move v0, v6

    move v6, v4

    move v4, v2

    move v2, v8

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/iLoong/launcher/d/a;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    move v4, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v6

    aget-object v10, v10, v3

    instance-of v10, v10, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v6

    aget-object v10, v10, v3

    instance-of v10, v10, Lcom/iLoong/launcher/d/a;

    if-eqz v10, :cond_6

    :cond_5
    move v9, v3

    move v10, v5

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, -0x1

    move v11, v6

    move v6, v8

    move v8, v10

    move v10, v4

    move v4, v0

    move v0, v11

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {p0, v1, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_2

    :cond_b
    const-string v0, "focus"

    const-string v1, "jump to hotseatBar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    move v1, v0

    move v3, v9

    move v5, v10

    move v0, v6

    move v6, v4

    move v4, v2

    move v2, v8

    goto/16 :goto_1
.end method

.method c(II[I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    div-int v0, p1, v0

    aput v0, p3, v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v0

    if-le p2, v0, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    div-int/2addr v0, v1

    aput v0, p3, v2

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    aget v0, p3, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    aput v0, p3, v3

    aget v0, p3, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    aput v0, p3, v2

    :cond_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    aget v0, p3, v3

    goto :goto_1

    :cond_3
    aget v0, p3, v2

    goto :goto_2
.end method

.method c(IIII[I)[I
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(IIIIIILcom/iLoong/launcher/UI3DEngine/View3D;Z[I[I[[Z)[I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, p5, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, p5, v0

    return-object p5
.end method

.method d(Lcom/iLoong/launcher/UI3DEngine/View3D;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/iLoong/launcher/a/j;->w:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->w:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ab:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 10

    const/4 v2, 0x1

    const/high16 v3, 0x4080

    const/high16 v9, -0x4080

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    if-nez v4, :cond_1

    const/high16 v4, -0x5600

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x2000

    invoke-virtual {v0, v7, v9, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const-string v5, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    sub-float v6, v8, v7

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const-string v5, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    sub-float v6, v1, v7

    invoke-virtual {v3, v5, v8, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v7, v7, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const-string v5, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    add-float v6, v8, v7

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v7, v8, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const-string v4, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    add-float v5, v1, v7

    invoke-virtual {v3, v4, v8, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v4, "\u8f7b\u6572\u5e76\u6309\u4f4f\u5c4f\u5e55\u4ee5\u6dfb\u52a0\u9879\u76ee"

    invoke-virtual {v3, v4, v8, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public d(I)V
    .locals 12

    const/4 v7, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v7

    move v8, v2

    move v9, v2

    move v10, v2

    :goto_0
    iget v11, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v11, :cond_2

    :cond_0
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    if-gt v8, v6, :cond_9

    invoke-virtual {p0, v5, v10}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    move v8, v2

    :goto_2
    if-gez v5, :cond_3

    move v3, v2

    move v5, v2

    :goto_3
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    add-int/lit8 v1, v1, 0x1

    move v6, v7

    :goto_4
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v1, v4, :cond_6

    move v1, v2

    move v4, v2

    :goto_5
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v1, v1, v5

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v1, v1, v5

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_5

    :cond_4
    move v3, v7

    move v10, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    instance-of v4, v4, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    instance-of v4, v4, Lcom/iLoong/launcher/d/a;

    if-eqz v4, :cond_8

    :cond_7
    move v4, v1

    move v9, v0

    move v1, v7

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v4, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0, v5, v10}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_1

    invoke-virtual {p0, v4, v9}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto :goto_1
.end method

.method public d(II)V
    .locals 2

    const-string v0, "focus"

    const-string v1, "setLocationInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aC:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aD:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aF:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aE:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v()V

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(I)Z

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->originY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_b

    const/high16 v7, 0x4348

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_c

    const/high16 v8, 0x4348

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->rotation:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v14

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aC:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aD:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->transform:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    instance-of v3, v3, Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getX()F

    move-result v2

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getUser()F

    move-result v1

    :goto_2
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_e

    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b()I

    move-result v2

    int-to-float v2, v2

    sub-float v10, v1, v2

    const/high16 v11, 0x40c0

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bB:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bB:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    if-eqz v1, :cond_8

    :cond_3
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v12, 0x3f00

    sub-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->L:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->M:F

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->J:F

    const/high16 v1, 0x4080

    mul-float/2addr v1, v10

    const/high16 v4, 0x40a0

    div-float/2addr v1, v4

    add-float/2addr v1, v9

    add-float v4, v1, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->K:F

    const/high16 v1, 0x40a0

    div-float v6, v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_4
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v12, 0x3f00

    sub-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    add-float v1, v9, v10

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    add-float v4, v1, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_5
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v12, 0x3f00

    sub-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    sub-float v4, v9, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_6
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v12, 0x3f00

    sub-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    sub-float v4, v1, v11

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v5, v1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v10, v1

    sget-object v6, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v11

    add-float/2addr v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_7
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_8

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v8, 0x3f00

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    sub-float v4, v1, v11

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v5, v1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v10, v1

    sget-object v6, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v11

    add-float/2addr v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_8
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bn:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    if-nez v1, :cond_9

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float v3, v1, v3

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v10, v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    add-float v4, v9, v1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v5, v1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->transform:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->width:F

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->height:F

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_e
    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_f

    const/high16 v1, 0x3f80

    move v7, v1

    move v8, v2

    goto/16 :goto_3

    :cond_f
    move v7, v1

    move v8, v2

    goto/16 :goto_3
.end method

.method e(Lcom/iLoong/launcher/UI3DEngine/View3D;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/iLoong/launcher/a/j;->x:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->x:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->ac:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public e(I)V
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-gez v1, :cond_1

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "left"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/iLoong/launcher/d/a;

    if-eqz v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f()V

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->R:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->S:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aa:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method public f(I)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "right"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/iLoong/launcher/d/a;

    if-eqz v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method g()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    return-void
.end method

.method public g(I)V
    .locals 12

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string v0, "focus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fresh index"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-ne p1, v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v5, :cond_3

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    :cond_2
    return-void

    :cond_3
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-gez v5, :cond_4

    :goto_3
    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/d/a;

    if-eqz v6, :cond_6

    :cond_5
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    move v2, v5

    move v3, v0

    move v4, v8

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    :goto_4
    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v9, :cond_9

    :cond_8
    move v4, v3

    move v3, v1

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_1

    :cond_9
    move v9, p1

    :goto_5
    if-gez v9, :cond_b

    :goto_6
    add-int/lit8 v9, p1, 0x1

    :goto_7
    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v9, v10, :cond_e

    :goto_8
    if-nez v3, :cond_a

    if-eqz v2, :cond_14

    :cond_a
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    if-ne v7, v6, :cond_8

    if-gt v5, v4, :cond_11

    move v1, v2

    move v4, v3

    move v2, v5

    move v3, v7

    goto :goto_1

    :cond_b
    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v9

    aget-object v10, v10, v0

    instance-of v10, v10, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v9

    aget-object v10, v10, v0

    instance-of v10, v10, Lcom/iLoong/launcher/d/a;

    if-eqz v10, :cond_d

    :cond_c
    move v3, v8

    move v5, v9

    move v7, v0

    goto :goto_6

    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_e
    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v9

    aget-object v10, v10, v0

    instance-of v10, v10, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v9

    aget-object v10, v10, v0

    instance-of v10, v10, Lcom/iLoong/launcher/d/a;

    if-eqz v10, :cond_10

    :cond_f
    move v2, v8

    move v4, v9

    move v6, v0

    goto :goto_8

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
    move v1, v2

    move v2, v4

    move v4, v3

    move v3, v6

    goto/16 :goto_1

    :cond_12
    if-eqz v3, :cond_13

    move v1, v2

    move v4, v3

    move v2, v5

    move v3, v7

    goto/16 :goto_1

    :cond_13
    move v1, v2

    move v2, v4

    move v4, v3

    move v3, v6

    goto/16 :goto_1

    :cond_14
    const-string v9, "focus"

    const-string v10, "times"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method g(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method h()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->V:I

    return v0
.end method

.method protected h(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    mul-int/2addr v0, v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const-string v0, "focus"

    const-string v1, "updateFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/c;->c:Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->g(I)V

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    sget v0, Lcom/iLoong/launcher/HotSeat3D/a;->j:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->g(I)V

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-direct {p0, v3, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(II)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    const-string v0, "right"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(II)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(II)V

    goto :goto_0

    :cond_4
    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    sput-boolean v3, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    rem-int/2addr v0, v1

    if-ne v0, v3, :cond_5

    const-string v0, "left"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public h(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aI:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method i()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public i(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;[[Z)V

    return-void
.end method

.method j()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method k()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v0, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "background"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetMenuDesktop.origin11"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v2, :cond_7

    const-string v2, "track"

    const-string v3, "keyDown"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p()V

    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/a;->d()V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4

    const/16 v2, 0x13

    if-eq p1, v2, :cond_4

    const/16 v2, 0x15

    if-eq p1, v2, :cond_4

    const/16 v2, 0x16

    if-ne p1, v2, :cond_5

    :cond_4
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->q()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o()V

    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->n()V

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->h(I)V

    :cond_7
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method l()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aM:[I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aN:[I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    aput v1, v0, v2

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "onCtrlEvent"

    const-string v1, "resetCurrFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p()V

    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/a;->d()V

    return-void
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 4

    const/high16 v3, 0x4000

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aE:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aF:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    if-nez v0, :cond_0

    const-string v0, "track"

    const-string v1, "setVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    :cond_0
    return-void
.end method

.method public onClick(FF)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onClick(FF)Z

    move-result v0

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 0

    return-void
.end method

.method public onLongClick(FF)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->l()V

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onLongClick(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    float-to-int v2, p1

    float-to-int v3, p2

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    invoke-virtual {p0, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->c(II[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    aget v1, v3, v1

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aO:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, "test"

    const-string v2, "<Error> Celllayout3D onLongClick have picked one view, this shouldn\'t happen!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 2

    const-string v0, "touch"

    const-string v1, "onTouchDown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s()V

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w:Z

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->w:Z

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    return-void
.end method

.method public removeAllViews()V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->x()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeAllViews()V

    return-void
.end method

.method public removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->g(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->j(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const-string v0, "bind"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "touch"

    const-string v1, "switchOff"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->p()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r()V

    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/a;->d()V

    return-void
.end method

.method public setScaleZ(F)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScaleZ(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aI:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 12

    const/4 v8, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    const-string v0, "right"

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v5, :cond_2

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    add-int/lit8 v9, v0, -0x1

    move v5, v2

    move v6, v2

    move v7, v2

    :goto_1
    if-gez v9, :cond_6

    move v2, v5

    move v0, v6

    move v5, v4

    move v4, v7

    :goto_2
    if-eqz v1, :cond_16

    invoke-virtual {p0, v3, v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v5, v2

    :goto_4
    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v5, v6, :cond_3

    :goto_5
    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/d/a;

    if-eqz v6, :cond_5

    :cond_4
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    move v1, v8

    move v3, v5

    move v4, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_6
    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v10, :cond_7

    move v0, v5

    move v5, v6

    move v6, v7

    :goto_7
    if-eqz v0, :cond_a

    move v2, v0

    move v0, v5

    move v5, v4

    move v4, v6

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v0

    aget-object v10, v10, v9

    instance-of v10, v10, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v10, v10, v0

    aget-object v10, v10, v9

    instance-of v10, v10, Lcom/iLoong/launcher/d/a;

    if-eqz v10, :cond_9

    :cond_8
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    move v5, v0

    move v6, v9

    move v0, v8

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, -0x1

    move v7, v6

    move v6, v5

    move v5, v0

    goto :goto_1

    :cond_b
    const-string v0, "left"

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_8
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    if-lt v0, v5, :cond_d

    :cond_c
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    add-int/lit8 v7, v0, -0x1

    move v0, v2

    move v5, v2

    :goto_9
    if-gez v7, :cond_11

    move v11, v5

    move v5, v4

    move v4, v11

    goto :goto_2

    :cond_d
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v5, v5, -0x1

    :goto_a
    if-gez v5, :cond_e

    :goto_b
    if-nez v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v6, v6, v5

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/iLoong/launcher/d/a;

    if-eqz v6, :cond_10

    :cond_f
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    move v1, v8

    move v3, v5

    move v4, v0

    goto :goto_b

    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_11
    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v6, v6, -0x1

    :goto_c
    if-gez v6, :cond_12

    :goto_d
    if-eqz v2, :cond_15

    move v11, v5

    move v5, v4

    move v4, v11

    goto/16 :goto_2

    :cond_12
    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v9, v9, v6

    aget-object v9, v9, v7

    instance-of v9, v9, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v9, v9, v6

    aget-object v9, v9, v7

    instance-of v9, v9, Lcom/iLoong/launcher/d/a;

    if-eqz v9, :cond_14

    :cond_13
    sput-boolean v8, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    move v2, v8

    move v0, v6

    move v5, v7

    goto :goto_d

    :cond_14
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_16
    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II)V

    goto/16 :goto_3

    :cond_17
    move v1, v2

    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    goto/16 :goto_2
.end method

.method public u()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "focus"

    const-string v2, "resetInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->P:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    const-string v0, "zqh--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iconExist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    :goto_2
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    instance-of v3, v3, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    instance-of v3, v3, Lcom/iLoong/launcher/d/a;

    if-eqz v3, :cond_3

    :cond_2
    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aC:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aD:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aF:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->aE:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(I)Z

    goto :goto_1

    :cond_3
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f:[[Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->O:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    :goto_0
    const-string v0, "focus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    goto :goto_0
.end method
