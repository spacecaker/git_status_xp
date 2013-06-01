.class public Lcom/iLoong/launcher/Desktop3D/aw;
.super Lcom/iLoong/launcher/Desktop3D/af;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bm;
.implements Lcom/iLoong/launcher/SetupMenu/Actions/aa;
.implements Lcom/iLoong/launcher/cling/l;


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static I:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public static K:I

.field private static M:I

.field private static N:I

.field public static u:Z

.field public static v:I

.field public static w:I


# instance fields
.field public E:I

.field public F:I

.field public G:Z

.field H:Lcom/badlogic/gdx/graphics/Mesh;

.field public J:Z

.field public L:Z

.field private O:Ljava/util/ArrayList;

.field private P:Ljava/util/ArrayList;

.field private Q:Ljava/util/List;

.field private R:Lcom/iLoong/launcher/Desktop3D/ax;

.field private S:Lcom/iLoong/launcher/Desktop3D/ax;

.field private T:Ljava/util/HashMap;

.field private U:Ljava/util/HashMap;

.field private V:[I

.field private W:Lcom/iLoong/launcher/app/ak;

.field private X:Ljava/util/ArrayList;

.field private Y:Ljava/util/ArrayList;

.field private Z:I

.field private aa:Lcom/iLoong/launcher/Desktop3D/b;

.field private ab:Z

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    const/4 v0, 0x4

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    const/4 v0, 0x5

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    const/4 v0, 0x2

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->v:I

    const/4 v0, 0x3

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->w:I

    sput v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sput v1, Lcom/iLoong/launcher/Desktop3D/aw;->B:I

    sput v1, Lcom/iLoong/launcher/Desktop3D/aw;->C:I

    sput v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    sput v1, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x5

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->G:Z

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->H:Lcom/badlogic/gdx/graphics/Mesh;

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    iput-boolean v10, p0, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ac:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ad:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ae:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->af:F

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ag:Z

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ai:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->L:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->H:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    if-eqz v0, :cond_5

    iput-boolean v10, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->x:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->E()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const-string v1, "appeffects"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->a(I)V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/cling/i;->e(Lcom/iLoong/launcher/cling/l;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sort_app"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->D:Z

    if-eqz v0, :cond_6

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->J:Z

    if-eqz v0, :cond_9

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->K:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->L:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    if-le v0, v7, :cond_7

    move v0, v7

    :goto_2
    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    if-le v0, v7, :cond_8

    move v0, v7

    :goto_3
    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    :goto_4
    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v3, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    float-to-int v1, v1

    int-to-float v4, v1

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v6, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ax;-><init>(Lcom/iLoong/launcher/Desktop3D/aw;IFFII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->R:Lcom/iLoong/launcher/Desktop3D/ax;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v3, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    float-to-int v1, v1

    int-to-float v4, v1

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->v:I

    sget v6, Lcom/iLoong/launcher/Desktop3D/aw;->w:I

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ax;-><init>(Lcom/iLoong/launcher/Desktop3D/aw;IFFII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->S:Lcom/iLoong/launcher/Desktop3D/ax;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->U:Ljava/util/HashMap;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->C:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aG:Z

    if-eqz v0, :cond_a

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "translucent-bg-opa"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aw;->I:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    :goto_5
    sput v10, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sput v10, Lcom/iLoong/launcher/Desktop3D/aw;->B:I

    sput v10, Lcom/iLoong/launcher/Desktop3D/aw;->C:I

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/h;

    const-string v1, "npage_indicator"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/h;-><init>(Lcom/iLoong/launcher/Desktop3D/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->transform:Z

    return-void

    :cond_5
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    if-eqz v0, :cond_0

    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    goto/16 :goto_0

    :cond_6
    iput v10, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    goto/16 :goto_2

    :cond_8
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->H:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->I:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->e:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    float-to-int v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->L:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->M:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->e:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    goto/16 :goto_4

    :cond_a
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "translucent-bg"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/aw;->I:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    goto :goto_5
.end method

.method static synthetic O()I
    .locals 1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    return v0
.end method

.method private P()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget v0, v0, Lcom/iLoong/launcher/a/b;->e:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/b;->h:Z

    if-nez v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private Q()I
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v3, v0, v1

    :cond_0
    return v3

    :cond_1
    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-nez v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-nez v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-nez v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private R()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private S()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private T()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    if-lt v4, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v5, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v5, :cond_5

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->k()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->l()V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->m()V

    goto :goto_2

    :cond_5
    instance-of v5, v1, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v5, :cond_8

    check-cast v1, Lcom/iLoong/launcher/Widget3D/o;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v5, :cond_6

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->f()V

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v6, :cond_7

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->g()V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->h()V

    goto :goto_2

    :cond_8
    instance-of v5, v1, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v5, :cond_b

    check-cast v1, Lcom/iLoong/launcher/Widget3D/h;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v5, :cond_9

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->k()V

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v6, :cond_a

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->l()V

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->m()V

    goto :goto_2

    :cond_b
    instance-of v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;

    if-eqz v5, :cond_2

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/ai;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v6, :cond_c

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ai;->b()V

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ai;->c()V

    goto :goto_2
.end method

.method private k(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private l(I)Lcom/iLoong/launcher/a/b;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move v2, v0

    move v3, v1

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/b;

    iget v1, v1, Lcom/iLoong/launcher/a/b;->e:I

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->k(I)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v3, 0x1

    :goto_2
    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v1

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-boolean v3, v0, Lcom/iLoong/launcher/a/b;->h:Z

    if-nez v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method private m(I)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/o;

    iget-boolean v1, v1, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-nez v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    :goto_2
    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/h;

    iget-boolean v1, v1, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-nez v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private n(I)Lcom/iLoong/launcher/a/g;
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/g;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/g;

    iget-boolean v3, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 3

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->P()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v0, v1, v0

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    :cond_0
    return-void
.end method

.method public B()V
    .locals 3

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->v:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->w:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->R()I

    move-result v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->S()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v0, v1, v0

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    :cond_0
    return-void
.end method

.method public C()V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->l:Z

    :goto_1
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/t;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/t;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->e:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/t;->setScale(FF)V

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/t;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->e:Z

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    if-ne v1, v2, :cond_4

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->c:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/t;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->d:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/t;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :cond_3
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne v1, v2, :cond_0

    :cond_4
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/t;->c:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/t;->d:F

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/t;->x:F

    add-float/2addr v4, v3

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/t;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/t;->setPosition(FF)V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/t;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/t;->c:F

    iput v5, v0, Lcom/iLoong/launcher/Desktop3D/t;->d:F

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->e:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->U:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    move v7, v0

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->l:Z

    goto/16 :goto_1

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ai;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    if-nez v1, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;->setScale(FF)V

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ai;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    goto :goto_2

    :cond_9
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    if-ne v1, v2, :cond_b

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->e:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->f:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    :cond_a
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne v1, v2, :cond_7

    :cond_b
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->e:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->f:F

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v4, v3

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;->setPosition(FF)V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ai;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/ai;->e:F

    iput v5, v0, Lcom/iLoong/launcher/Desktop3D/ai;->f:F

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/o;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->H:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->H:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iput v1, v0, Lcom/iLoong/launcher/Widget3D/o;->D:I

    :cond_e
    iget-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    if-nez v1, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/o;->setScale(FF)V

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Widget3D/o;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    :cond_f
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_3

    :cond_10
    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->D:I

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->E:I

    if-ne v1, v2, :cond_12

    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->F:F

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_11

    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->G:F

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    :cond_11
    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne v1, v2, :cond_f

    :cond_12
    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->D:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->F:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->G:F

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v4, v3

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/o;->setPosition(FF)V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Widget3D/o;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput v4, v0, Lcom/iLoong/launcher/Widget3D/o;->F:F

    iput v5, v0, Lcom/iLoong/launcher/Widget3D/o;->G:F

    iget v1, v0, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iput v1, v0, Lcom/iLoong/launcher/Widget3D/o;->D:I

    goto :goto_4

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->H:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    goto :goto_4

    :cond_14
    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ch;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ch;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->c:I

    :cond_15
    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    if-nez v1, :cond_16

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ch;->setScale(FF)V

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ch;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    goto/16 :goto_4

    :cond_16
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->c:I

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->e:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ch;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->f:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ch;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    :cond_17
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne v1, v2, :cond_f

    :cond_18
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->c:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ch;->e:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ch;->f:F

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/ch;->x:F

    add-float/2addr v4, v3

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/ch;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ch;->setPosition(FF)V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f4ccccd

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ch;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/ch;->e:F

    iput v5, v0, Lcom/iLoong/launcher/Desktop3D/ch;->f:F

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->c:I

    goto/16 :goto_4

    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->b:Z

    iget-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->K:Z

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->d:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;->c:I

    goto/16 :goto_4
.end method

.method public D()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->i:Lcom/iLoong/launcher/Widget3D/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->j:Lcom/iLoong/launcher/Widget3D/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/g;->c()Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :goto_1
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public E()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V

    return-void
.end method

.method protected F()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->i()V

    goto :goto_0
.end method

.method public G()V
    .locals 5

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/iLoong/launcher/Desktop3D/h;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendWaitClingMsg()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->e(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->L:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->L:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCircleToastMsg(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCancelWaitClingMsg()V

    goto :goto_0
.end method

.method public H()V
    .locals 5

    const/high16 v4, 0x4000

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    if-nez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->l(I)Lcom/iLoong/launcher/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/t;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ac:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ae:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ad:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->af:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/t;->onClick(FF)Z

    :cond_0
    return-void
.end method

.method public I()V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->e(I)V

    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ag:Z

    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    return-void
.end method

.method public L()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v4, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    goto :goto_0
.end method

.method public M()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float v0, v1, v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public N()V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 5

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->P()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->P()I

    move-result v3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "LauncherFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentCell :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sub-int/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    if-lt v0, v3, :cond_0

    sput v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->g(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->g(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    if-lt v0, v3, :cond_0

    sput v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    goto :goto_1

    :pswitch_2
    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    add-int/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    if-lt v0, v3, :cond_0

    sput v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    goto :goto_1

    :pswitch_3
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->r()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->g(I)V

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->g(I)V

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    if-lt v0, v3, :cond_0

    sput v2, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "appeffects"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appeffects"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 9

    const/4 v8, 0x1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->P()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->l(I)Lcom/iLoong/launcher/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v5

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/t;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/t;->m()V

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq p1, v4, :cond_1

    iget v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v4, v6, :cond_1

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    :cond_1
    iget v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->x:F

    iput v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->c:F

    iget v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->y:F

    iput v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->d:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_1
    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/Desktop3D/t;->a(Lcom/iLoong/launcher/a/j;)V

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/t;->k()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/iLoong/launcher/Desktop3D/t;

    iget-object v4, v4, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v7

    invoke-direct {v1, p0, v4, v7}, Lcom/iLoong/launcher/Desktop3D/t;-><init>(Lcom/iLoong/launcher/Desktop3D/aw;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/t;->a:I

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/t;->b:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne p1, v4, :cond_4

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/iLoong/launcher/Desktop3D/t;->e:Z

    :goto_3
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :cond_4
    iput-boolean v8, v1, Lcom/iLoong/launcher/Desktop3D/t;->e:Z

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v4, v8, :cond_2

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/t;->l()V

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Widget3D/o;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    move v2, v3

    :goto_1
    if-eq v2, v3, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->z()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/ch;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/ch;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ch;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v1, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/app/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->W:Lcom/iLoong/launcher/app/ak;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    move-object v1, v4

    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_0

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/cb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "theme/widget/applist-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/cb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/cb;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/cb;->c(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/iLoong/launcher/a/f;

    invoke-direct {v6}, Lcom/iLoong/launcher/a/f;-><init>()V

    iput-object v2, v6, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_INSTALL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iget-object v7, v6, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput v4, v6, Lcom/iLoong/launcher/a/f;->w:I

    iput v5, v6, Lcom/iLoong/launcher/a/f;->x:I

    const/4 v4, 0x6

    iput v4, v6, Lcom/iLoong/launcher/a/f;->l:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Lcom/iLoong/launcher/Widget3D/h;

    invoke-direct {v4, v2, v0, v2}, Lcom/iLoong/launcher/Widget3D/h;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/Widget3D/h;->a(Lcom/iLoong/launcher/a/j;)V

    iget-boolean v0, v1, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    iput-boolean v0, v4, Lcom/iLoong/launcher/Widget3D/h;->j:Z

    iget-boolean v0, v1, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    iput-boolean v0, v4, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->z()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/h;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/a/f;

    iget-object v2, v2, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->t()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, v4

    move v3, v5

    goto/16 :goto_1

    :cond_2
    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/o;

    iget-object v2, v1, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->i()V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "launcher"

    const-string v1, "setApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "launcher"

    const-string v1, "setApps:has init,return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->D()V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->z()V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->C()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->b()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->c()V

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iconMap.size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(IZ)V
    .locals 9

    const/4 v8, 0x1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->v:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->w:I

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->Q()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->R()I

    move-result v1

    if-ge v4, v1, :cond_a

    invoke-direct {p0, v4}, Lcom/iLoong/launcher/Desktop3D/aw;->m(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v1, v2, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Lcom/iLoong/launcher/Widget3D/o;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->d()I

    move-result v5

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->e()I

    move-result v6

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/iLoong/launcher/Widget3D/o;->setSize(FF)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->a()V

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->f()V

    :goto_1
    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v5, p1

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/o;->E:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v5, v6, :cond_1

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/o;->D:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v5, v6, :cond_1

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v5, p1

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/o;->D:I

    :cond_1
    iget v5, v1, Lcom/iLoong/launcher/Widget3D/o;->x:F

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/o;->F:F

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/o;->y:F

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/o;->G:F

    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move v1, v3

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v8, :cond_4

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->g()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->h()V

    goto :goto_1

    :cond_5
    instance-of v1, v2, Lcom/iLoong/launcher/Widget3D/h;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/iLoong/launcher/Widget3D/h;

    iget-boolean v5, v1, Lcom/iLoong/launcher/Widget3D/h;->a:Z

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->d()I

    move-result v5

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->e()I

    move-result v6

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/iLoong/launcher/Widget3D/h;->setSize(FF)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->s()V

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-nez v5, :cond_8

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->k()V

    :goto_4
    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v5, p1

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/h;->d:I

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/h;->d:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v5, v6, :cond_7

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/h;->c:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v5, v6, :cond_7

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v5, p1

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/h;->c:I

    :cond_7
    iget v5, v1, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/h;->e:F

    iget v5, v1, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iput v5, v1, Lcom/iLoong/launcher/Widget3D/h;->f:F

    goto :goto_2

    :cond_8
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v8, :cond_9

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->l()V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/h;->m()V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->R()I

    move-result v1

    sub-int v1, v4, v1

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->n(I)Lcom/iLoong/launcher/a/g;

    move-result-object v2

    if-nez v2, :cond_b

    move v1, v3

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->U:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/ai;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ai;->c()V

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq p1, v5, :cond_c

    iget v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eq v5, v6, :cond_c

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    :cond_c
    iget v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->e:F

    iget v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iput v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->f:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_5
    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-ne v5, v8, :cond_d

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ai;->b()V

    :cond_d
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->d()I

    move-result v5

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->e()I

    move-result v6

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/iLoong/launcher/Desktop3D/ai;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;->a(Lcom/iLoong/launcher/a/g;)V

    move v1, v3

    goto/16 :goto_3

    :cond_e
    new-instance v1, Lcom/iLoong/launcher/Desktop3D/ai;

    iget-object v5, v2, Lcom/iLoong/launcher/a/g;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/iLoong/launcher/Desktop3D/ai;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/ai;->c:I

    iput p1, v1, Lcom/iLoong/launcher/Desktop3D/ai;->d:I

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-ne p1, v5, :cond_f

    sget-boolean v5, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    :goto_6
    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->U:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_5

    :cond_f
    iput-boolean v8, v1, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    goto :goto_6
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->P:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->z()V

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(IZ)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sort_app"

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->C()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    invoke-static {v4, v2, v0}, Lcom/iLoong/launcher/SetupMenu/cut;->a(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u00a0"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [I

    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    invoke-static {v1, v3, v0}, Lcom/iLoong/launcher/SetupMenu/cut;->sort(I[I[I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-wide v4, v0, Lcom/iLoong/launcher/a/b;->g:J

    div-long/2addr v4, v10

    long-to-int v0, v4

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [I

    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    invoke-static {v1, v3, v0}, Lcom/iLoong/launcher/SetupMenu/cut;->sort(I[I[I)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->a()I

    move-result v0

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->V:[I

    invoke-static {v4, v7, v0}, Lcom/iLoong/launcher/SetupMenu/cut;->sort(I[I[I)I

    goto/16 :goto_0

    :cond_5
    move v5, v1

    move v6, v1

    :goto_5
    if-lt v6, v8, :cond_8

    :cond_6
    if-ne v6, v8, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-wide v5, v0, Lcom/iLoong/launcher/a/b;->g:J

    div-long/2addr v5, v10

    long-to-int v0, v5

    aput v0, v7, v2

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_6
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bn;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_9

    move v0, v5

    :goto_7
    if-nez v0, :cond_6

    add-int/lit8 v3, v6, 0x1

    move v5, v0

    move v6, v3

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v9, v0, Lcom/iLoong/launcher/a/b;->f:Ljava/lang/String;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bn;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bn;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bn;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bn;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bn;->c:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    sub-int v0, v6, v8

    aput v0, v7, v2

    move v0, v4

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->C()V

    return-void
.end method

.method public d(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/ag;->a(I)V

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->T()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->z()V

    :cond_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->C()V

    goto :goto_0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->x()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->C()V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iconMap.size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/16 v10, 0x302

    const/4 v9, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v0

    if-ne v2, v10, :cond_0

    if-eq v0, v9, :cond_1

    :cond_0
    invoke-virtual {p1, v10, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_1
    move v6, v0

    move v7, v2

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->getUser()F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->y:F

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/aw;->I:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/aw;->y:F

    add-float/2addr v5, v8

    sget-boolean v8, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v8, :cond_2

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :cond_2
    int-to-float v1, v1

    sub-float v1, v5, v1

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/aw;->I:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/high16 v2, -0x3ee0

    const/4 v3, 0x0

    sget v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->realWidth:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v4, v1

    sget v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->realHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ag:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-eq v0, v1, :cond_4

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->f(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ai:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ac:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ad:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    int-to-float v4, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v0, :cond_6

    if-ne v7, v10, :cond_5

    if-eq v6, v9, :cond_6

    :cond_5
    invoke-virtual {p1, v7, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_6
    return-void

    :cond_7
    move v6, v1

    move v7, v1

    goto/16 :goto_0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e(I)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->M:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->N:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, p1

    sput v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ag:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    return-void
.end method

.method public f()V
    .locals 1

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    return-void
.end method

.method public f(I)V
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->K:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->l(I)Lcom/iLoong/launcher/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->T:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/t;

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->x:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ac:F

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->y:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ad:F

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/t;->height:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->af:F

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/t;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ae:F

    return-void
.end method

.method public fling(FF)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v1, :cond_1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v1, v2

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-ne v1, v0, :cond_3

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    if-eq v1, v0, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->fling(FF)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-ne v1, v0, :cond_2

    goto :goto_0
.end method

.method public g(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->e(I)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->b(I)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->K()V

    return-void
.end method

.method protected h()I
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v0, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v0, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    goto :goto_0
.end method

.method public h(I)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->b(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->b(I)Z

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->hide()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method protected i()I
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->i()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->width:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->H:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->I:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected j()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v1, :cond_1

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->j()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j(I)I
    .locals 3

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->L:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->M:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->w:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->O:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected k()I
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-nez v0, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-nez v0, :cond_3

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-ne v0, v1, :cond_5

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/ay;->c:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    if-eqz v2, :cond_3

    :cond_2
    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/ay;->e:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ah:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ag:Z

    goto :goto_0

    :cond_4
    const/16 v0, 0x17

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->H()V

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(II)V

    :cond_6
    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->E:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->keyUp(I)Z

    move-result v0

    goto :goto_1
.end method

.method protected m()V
    .locals 15

    const/high16 v7, 0x3f00

    const/high16 v8, -0x4100

    const/4 v9, 0x0

    const/high16 v14, 0x3f80

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-gez v0, :cond_2

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v6, p0, Lcom/iLoong/launcher/Desktop3D/aw;->l:Z

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->i:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->l()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->i:Z

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_7
    iget-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->a:Z

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->h:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_d

    move v3, v7

    :goto_2
    neg-float v3, v3

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->g()Z

    move-result v4

    if-nez v4, :cond_f

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    if-nez v4, :cond_f

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Z)V

    :goto_3
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_13

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v2, v4, :cond_10

    :cond_8
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    sub-float v4, v2, v14

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v4, v3, v2}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    :cond_9
    :goto_4
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    const/high16 v2, -0x4080

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->j()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    add-float/2addr v1, v14

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->l()V

    :cond_a
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->k()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->l()V

    goto/16 :goto_0

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v6, v6}, Lcom/iLoong/launcher/Desktop3D/c;->a(IZ)V

    goto/16 :goto_1

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v4, v3, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v4, :cond_6

    move v5, v6

    :goto_5
    move-object v4, v3

    check-cast v4, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v4

    if-ge v5, v4, :cond_6

    move-object v4, v3

    check-cast v4, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getX()F

    move-result v12

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getY()F

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v4, v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5

    :cond_d
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->h:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_e

    move v3, v8

    goto/16 :goto_2

    :cond_e
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->h:F

    goto/16 :goto_2

    :cond_f
    invoke-static {v6}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Z)V

    goto/16 :goto_3

    :cond_10
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    sub-float v4, v2, v14

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v4, v3, v2}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_11
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v2, v4, :cond_12

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    sub-float v4, v2, v14

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v4, v3, v2}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_12
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    sub-float v4, v2, v14

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v4, v3, v2}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_13
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_17

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_14

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_14

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_14
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_15
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_16

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_16

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_16
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_17
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->h:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_18

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_18

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_18
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/aw;->j:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_4

    :cond_19
    move v3, v9

    goto/16 :goto_2
.end method

.method public onClick(FF)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->onClick(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    :cond_0
    return v0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 7

    const/4 v1, 0x1

    const/16 v6, -0x2710

    const/high16 v5, 0x4000

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_3

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->i()V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->f()Lcom/iLoong/launcher/Desktop3D/aj;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v3, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v3, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/ai;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ai;

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->a()Lcom/iLoong/launcher/Desktop3D/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v4, v1, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/Desktop3D/ai;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_6
    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/o;->c()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-nez v2, :cond_7

    move v0, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v4, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/o;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->J()V

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/af;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/af;->onTouchUp(FFI)Z

    move-result v0

    return v0
.end method

.method public scroll(FFFF)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->ab:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v1, :cond_1

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v1, v2

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-ne v1, v0, :cond_4

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/h;->a(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/h;->a(Laurelienribon/tweenengine/Tween;)V

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/Desktop3D/af;->scroll(FFFF)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-ne v1, v0, :cond_2

    goto :goto_0
.end method

.method public show()V
    .locals 5

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/iLoong/launcher/Desktop3D/h;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->Z:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendWaitClingMsg()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->e(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->L:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->L:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCircleToastMsg(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCancelWaitClingMsg()V

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    const-string v0, "AppList3D"

    const-string v1, "finishAutoEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->c()V

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->v()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendWaitClingMsg()V

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->e(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCancelWaitClingMsg()V

    goto :goto_0
.end method

.method public x()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->A()V

    move v0, v2

    :goto_1
    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-nez v0, :cond_0

    sput v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->R:Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ax;->a()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/c;->transform:Z

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_3

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aw;->R:Lcom/iLoong/launcher/Desktop3D/ax;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/ax;->a(Lcom/iLoong/launcher/Desktop3D/c;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->R:Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ax;->a()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iput-boolean v4, v1, Lcom/iLoong/launcher/Desktop3D/c;->transform:Z

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/Desktop3D/aw;->a(IZ)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v0, v1, :cond_7

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto/16 :goto_2
.end method

.method public y()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->aa:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public z()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aw;->B()V

    move v0, v1

    :goto_1
    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    if-lt v0, v2, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-nez v0, :cond_0

    sput v6, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->S:Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ax;->a()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iput-boolean v6, v0, Lcom/iLoong/launcher/Desktop3D/c;->transform:Z

    sget v2, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/aw;->S:Lcom/iLoong/launcher/Desktop3D/ax;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    sget v5, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v4, v0}, Lcom/iLoong/launcher/Desktop3D/ax;->a(Lcom/iLoong/launcher/Desktop3D/c;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->e:Ljava/util/ArrayList;

    sget v4, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/aw;->S:Lcom/iLoong/launcher/Desktop3D/ax;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/ax;->a()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iput-boolean v6, v2, Lcom/iLoong/launcher/Desktop3D/c;->transform:Z

    sget v3, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v0, v6}, Lcom/iLoong/launcher/Desktop3D/aw;->b(IZ)V

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aw;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->c(I)V

    goto :goto_2
.end method
