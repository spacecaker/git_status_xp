.class Lcom/iLoong/launcher/cling/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/cling/o;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/cling/o;)V
    .locals 1

    const/high16 v0, 0x3f80

    iput-object p1, p0, Lcom/iLoong/launcher/cling/a;->a:Lcom/iLoong/launcher/cling/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/cling/a;->b:F

    iput v0, p0, Lcom/iLoong/launcher/cling/a;->c:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/a;->a()V

    return-void
.end method

.method private a(F)F
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/cling/a;->b:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/a;->a:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/a;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/cling/a;->a(F)F

    move-result v0

    return v0
.end method

.method private b(F)F
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/cling/a;->c:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/a;->a:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/cling/a;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/cling/a;->b(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/a;->a:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/a;->b:F

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/a;->a:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/a;->c:F

    return-void
.end method
