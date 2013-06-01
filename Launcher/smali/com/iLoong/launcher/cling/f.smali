.class Lcom/iLoong/launcher/cling/f;
.super Ljava/lang/Object;


# instance fields
.field private A:[F

.field private B:F

.field private C:F

.field private D:[B

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:Landroid/graphics/PointF;

.field private J:Landroid/graphics/PointF;

.field private K:Landroid/graphics/PointF;

.field private L:Landroid/graphics/PointF;

.field private M:Landroid/graphics/PointF;

.field private N:F

.field private O:F

.field private P:Lcom/iLoong/launcher/cling/n;

.field private Q:Lcom/iLoong/launcher/cling/n;

.field private R:Lcom/iLoong/launcher/cling/n;

.field private S:Lcom/iLoong/launcher/cling/n;

.field private T:F

.field private U:F

.field private V:[F

.field private W:[F

.field private X:[F

.field private Y:[F

.field private Z:[F

.field public a:Ljava/nio/ByteBuffer;

.field private aa:[F

.field private ab:[[F

.field private ac:[[F

.field private ad:[[F

.field private ae:[F

.field private af:[F

.field private ag:[F

.field private ah:[F

.field private ai:F

.field private aj:F

.field private ak:F

.field private al:F

.field private am:F

.field private an:F

.field private ao:F

.field public b:Ljava/nio/ByteBuffer;

.field public c:Ljava/nio/FloatBuffer;

.field public d:Ljava/nio/FloatBuffer;

.field public e:Ljava/nio/FloatBuffer;

.field public f:Ljava/nio/FloatBuffer;

.field public g:Ljava/nio/FloatBuffer;

.field public h:Ljava/nio/FloatBuffer;

.field public i:Ljava/nio/FloatBuffer;

.field public j:Ljava/nio/FloatBuffer;

.field public k:Ljava/nio/FloatBuffer;

.field public l:Ljava/nio/FloatBuffer;

.field public m:I

.field public n:[Ljava/nio/FloatBuffer;

.field public o:[Ljava/nio/FloatBuffer;

.field public p:[Ljava/nio/FloatBuffer;

.field public final q:I

.field public r:I

.field public s:Ljava/nio/FloatBuffer;

.field public t:Ljava/nio/FloatBuffer;

.field public u:Ljava/nio/FloatBuffer;

.field public v:Z

.field final synthetic w:Lcom/iLoong/launcher/cling/o;

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/cling/o;)V
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x10

    const/4 v1, 0x0

    const/16 v6, 0x5a

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->b:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->d:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->e:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->g:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->i:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->j:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->k:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->l:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iput v6, p0, Lcom/iLoong/launcher/cling/f;->q:I

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->r:I

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    const/high16 v1, 0x4220

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->B:F

    const v1, 0x3e99999a

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->C:F

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, -0x4080

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->N:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->O:F

    const/high16 v1, 0x4248

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->T:F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->T:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->U:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->al:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iput v5, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    const/16 v1, 0x9

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->D:[B

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->D:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->c:Ljava/nio/FloatBuffer;

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->e:Ljava/nio/FloatBuffer;

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->f:Ljava/nio/FloatBuffer;

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->g:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->i:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->d:Ljava/nio/FloatBuffer;

    const/16 v1, 0x14

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xf

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    const/16 v1, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->j:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->k:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->l:Ljava/nio/FloatBuffer;

    new-array v1, v6, [[F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    new-array v1, v6, [[F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    new-array v1, v6, [[F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    new-array v1, v6, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->n:[Ljava/nio/FloatBuffer;

    new-array v1, v6, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->o:[Ljava/nio/FloatBuffer;

    new-array v1, v6, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->p:[Ljava/nio/FloatBuffer;

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/iLoong/launcher/cling/f;->ae:[F

    move v1, v0

    :goto_0
    if-lt v1, v6, :cond_0

    const/high16 v1, 0x4000

    :goto_1
    if-lt v0, v6, :cond_1

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->s:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->t:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->u:Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    new-instance v0, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    new-instance v0, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    new-instance v0, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/f;->b()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    new-array v3, v7, [F

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    const/16 v3, 0xc

    new-array v3, v3, [F

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v1

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->n:[Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v2, v2, v1

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->p:[Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v1

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->o:[Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ae:[F

    int-to-float v3, v0

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private a(F)V
    .locals 4

    const v3, 0x3f19999a

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x5

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0x8

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xa

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xe

    aput p1, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    return-object v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    return-object v0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    cmpg-float v3, v0, v9

    if-gez v3, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v0

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    float-to-double v5, v0

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    cmpg-double v0, v3, v5

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v0, v0, Lcom/iLoong/launcher/cling/o;->e:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    const/4 v3, 0x7

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->e:F

    const-string v0, "launcher"

    const-string v3, "<1.5!!!!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v0, v0, Lcom/iLoong/launcher/cling/o;->e:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v0, v0, Lcom/iLoong/launcher/cling/o;->e:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->e:F

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v3, v3, Lcom/iLoong/launcher/cling/o;->f:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x41c8

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    :cond_2
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    invoke-static {v0, v3}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return-void

    :cond_4
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->U:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->U:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v0, v0, Lcom/iLoong/launcher/cling/o;->e:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    const/4 v3, 0x0

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->e:F

    const-string v0, "launcher"

    const-string v3, ">1.5!!!!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    iget v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/iLoong/launcher/cling/o;->f:I

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/iLoong/launcher/cling/f;)[B
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->D:[B

    return-object v0
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    iput v6, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v2, 0x3

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v2, v0, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v2, 0x6

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x7

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v2, 0x8

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xb

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v2, 0xc

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xf

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v4, v1, v7

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x2

    aput v4, v1, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v3, 0x3

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x5

    aput v0, v1, v6

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v3, 0x6

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x7

    aput v0, v1, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v4, v0, v2

    return-void
.end method

.method static synthetic d(Lcom/iLoong/launcher/cling/f;)[[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    return-object v0
.end method

.method private e()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x3

    aput v5, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x7

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0x8

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0x9

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xa

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0xb

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xc

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0xd

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xe

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0xf

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v0, v1, v6

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v1, v7

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x3

    aput v0, v1, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x4

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x6

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x7

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v2

    return-void
.end method

.method static synthetic e(Lcom/iLoong/launcher/cling/f;)[[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    return-object v0
.end method

.method private f()V
    .locals 17

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->U:F

    const/high16 v2, 0x42b4

    div-float v14, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float v15, v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v16, v1, v2

    const/16 v1, 0x10

    new-array v3, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v2, v3, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/16 v1, 0x8

    aput v14, v3, v1

    const/16 v1, 0x9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v2, v3, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/16 v1, 0xc

    aput v14, v3, v1

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    const/4 v1, 0x0

    move v13, v1

    move v1, v12

    :goto_0
    const/16 v2, 0x5a

    if-lt v13, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    int-to-float v2, v13

    mul-float/2addr v2, v15

    add-float v4, v16, v2

    add-float v2, v4, v15

    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-gez v5, :cond_0

    const/high16 v5, 0x3f80

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    const/high16 v2, 0x3f80

    const/16 v1, 0x8

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v4

    div-float/2addr v7, v15

    mul-float/2addr v7, v14

    add-float/2addr v6, v7

    aput v6, v3, v5

    aput v6, v3, v1

    const/4 v1, 0x1

    move v12, v1

    move v1, v2

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ai:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v5, 0x0

    aput v4, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v5, 0x2

    aput v4, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v4, 0x3

    const/high16 v5, 0x3f80

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v4, 0x4

    aput v1, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v4, 0x5

    const/high16 v5, 0x3f80

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v2, v2, v13

    const/4 v4, 0x6

    aput v1, v2, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v13

    const/4 v2, 0x7

    const/4 v4, 0x0

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v5, v5, v13

    neg-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/cling/c;->rotateM([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v4, v1, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v13

    neg-float v8, v1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/iLoong/launcher/cling/c;->a([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v1, v2, v4, v5, v6}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v13

    const/16 v2, 0x8

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v13

    const/16 v4, 0xc

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v13

    const/16 v2, 0x9

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v13

    const/16 v4, 0xd

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v13

    const/16 v2, 0xa

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v13

    const/16 v4, 0xe

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    if-nez v12, :cond_0

    add-int/lit8 v1, v13, 0x1

    move v13, v1

    move v1, v12

    goto/16 :goto_0

    :cond_2
    move v12, v1

    move v1, v2

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    return-object v0
.end method

.method private g()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->r:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iput-boolean v6, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    aput v1, v0, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v5, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    aput v1, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    sub-float v0, v4, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v1, v6

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v1, v7

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v1, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x3

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x4

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x5

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x6

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x7

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x8

    neg-float v3, v0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x9

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xa

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xb

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xc

    neg-float v0, v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v1, 0xf

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v0, v6, v1, v2, v3}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    return-object v0
.end method

.method private h()V
    .locals 6

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Lcom/iLoong/launcher/cling/n;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    invoke-direct {v3, v0, v4}, Lcom/iLoong/launcher/cling/n;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v4, v0

    invoke-static {v3, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/cling/f;->N:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/cling/f;->O:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->N:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->O:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    return-void

    :cond_3
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->U:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->U:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->N:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->O:F

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    return-object v0
.end method

.method private i()V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    iput v4, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v1, v0, v5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x4

    aput v7, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v2, 0x5

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v1, 0x6

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v2, 0x7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0x8

    aput v7, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v6, v0, v5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x2

    aput v6, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v6, v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v0, 0x4

    aput v7, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v2, 0xa

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xb

    aput v6, v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xc

    aput v7, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v5}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v5

    div-float/2addr v4, v5

    aput v4, v2, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v0, 0x6

    aput v7, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->G:F

    invoke-static {v2, v3}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v2, 0x1

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v2, 0x1

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v2, v0, 0x1

    aput v7, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v1, v2, 0x1

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v2, v1, 0x1

    aput v7, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v2, 0x1

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    goto :goto_0
.end method

.method static synthetic i(Lcom/iLoong/launcher/cling/f;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    return-object v0
.end method

.method private j()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v0, 0x4

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x6

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0x8

    aput v5, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v0, 0x4

    aput v5, v2, v9

    :goto_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->G:F

    invoke-static {v2, v3}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xa

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xb

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xc

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xd

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xe

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xf

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x5

    aput v5, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x6

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x7

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float/2addr v1, v2

    aput v1, v0, v8

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x5

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v4, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x6

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v1, 0x8

    aput v5, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v0, 0x4

    aput v5, v2, v9

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xa

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xb

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xc

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xd

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xe

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xf

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x5

    aput v5, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x6

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x7

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float/2addr v1, v2

    aput v1, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v8

    goto/16 :goto_1
.end method

.method private k()V
    .locals 27

    const/4 v3, 0x0

    const/16 v2, 0x5a

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->G:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    new-instance v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    :goto_0
    if-nez v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    rsub-int/lit8 v2, v3, 0x5a

    if-gez v2, :cond_9

    const/4 v2, 0x0

    move v12, v2

    move v13, v3

    :goto_1
    const/16 v2, 0x10

    new-array v3, v2, [F

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    int-to-float v2, v13

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v16, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float v17, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float v19, v2, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0x8

    const/4 v4, 0x4

    aget v4, v3, v4

    add-float/2addr v4, v1

    aput v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    const/4 v4, 0x0

    aget v4, v3, v4

    add-float/2addr v1, v4

    aput v1, v3, v2

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/4 v14, 0x0

    :goto_2
    if-lt v14, v13, :cond_4

    move v8, v14

    :cond_1
    if-lez v12, :cond_2

    const/4 v1, 0x4

    new-array v0, v1, [F

    move-object/from16 v21, v0

    new-instance v22, Lcom/iLoong/launcher/cling/n;

    invoke-direct/range {v22 .. v22}, Lcom/iLoong/launcher/cling/n;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/16 v2, 0x5a

    if-ge v12, v2, :cond_5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->E:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v5}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-direct {v10, v11, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v9, v10}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;)F

    move-result v9

    sub-float/2addr v5, v9

    move-object v13, v1

    move v14, v2

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, v1, v2

    int-to-float v4, v12

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v24, v23, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float v26, v25, v1

    const/4 v1, 0x0

    move/from16 v19, v1

    move/from16 v20, v8

    move/from16 v1, v18

    :goto_4
    move/from16 v0, v19

    if-lt v0, v12, :cond_6

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    div-float/2addr v1, v2

    const/high16 v2, 0x42b4

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->G:F

    goto/16 :goto_0

    :cond_4
    int-to-float v1, v14

    mul-float v1, v1, v16

    add-float v1, v1, v17

    int-to-float v2, v14

    mul-float v2, v2, v16

    add-float v2, v2, v19

    add-float v4, v1, v16

    add-float v15, v2, v16

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/cling/f;->ai:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/iLoong/launcher/cling/f;->ak:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iLoong/launcher/cling/f;->aj:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v5, v5, v14

    const/4 v6, 0x0

    aput v1, v5, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v5, 0x2

    aput v2, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x3

    const/high16 v5, 0x3f80

    aput v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x4

    aput v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x5

    const/high16 v5, 0x3f80

    aput v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x6

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x7

    const/4 v4, 0x0

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v5, v5, v14

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v6, v6, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v7, v7, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/cling/c;->rotateM([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v4, v1, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v14

    neg-float v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/iLoong/launcher/cling/c;->a([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v1, v2, v4, v5, v6}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0x8

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xc

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0x9

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xd

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0xa

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xe

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v14, v14, 0x1

    move v6, v15

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->F:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v9, v9, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v9}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object v13, v1

    move v14, v2

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v5

    goto/16 :goto_3

    :cond_6
    move/from16 v0, v19

    int-to-float v2, v0

    mul-float v2, v2, v26

    add-float v5, v17, v2

    move/from16 v0, v19

    int-to-float v2, v0

    mul-float v2, v2, v24

    add-float v6, v16, v2

    add-float v4, v5, v26

    add-float v2, v6, v24

    const/high16 v7, 0x3f80

    cmpl-float v7, v5, v7

    if-gez v7, :cond_2

    const/high16 v7, 0x3f80

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_8

    const/high16 v4, 0x3f80

    const/high16 v2, 0x3f80

    const/4 v1, 0x1

    move/from16 v18, v1

    move v1, v2

    move v2, v4

    :goto_5
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/cling/f;->ai:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ak:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->aj:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    aput v8, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v7, 0x1

    aput v5, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x4

    aput v1, v4, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v20

    const/4 v4, 0x5

    const/high16 v5, 0x3f80

    aput v5, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v20

    const/4 v4, 0x6

    const/high16 v5, 0x3f80

    aput v5, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v20

    const/4 v4, 0x7

    aput v2, v1, v4

    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, v23

    add-float/2addr v1, v14

    iput v1, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->H:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v13}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    aput v23, v21, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v21, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v21, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v21, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x1

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v25

    sub-float v4, v15, v4

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/4 v2, 0x4

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v23

    add-float/2addr v4, v14

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    if-eqz v18, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    aput v1, v3, v2

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v5, v5, v20

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v6, v6, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v7, v7, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/cling/c;->rotateM([FI[FIFFFF)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v20

    neg-float v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    move-object/from16 v4, v21

    invoke-static/range {v4 .. v9}, Lcom/iLoong/launcher/cling/c;->a([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v4, v1, v20

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v20

    neg-float v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/iLoong/launcher/cling/c;->a([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v20

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v1, v2, v4, v5, v6}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, v21

    invoke-static {v0, v1, v2, v4, v5}, Lcom/iLoong/launcher/cling/c;->b([FIFFF)V

    const/4 v1, 0x0

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    const/4 v1, 0x1

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v1, 0x2

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    if-nez v18, :cond_2

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v2, v20, 0x1

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v1, v18

    goto/16 :goto_4

    :cond_7
    const/16 v2, 0x8

    add-int/lit8 v4, v19, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v14

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    aput v1, v3, v2

    const/16 v1, 0xd

    const/4 v2, 0x1

    aget v2, v3, v2

    sub-float v2, v2, v25

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    goto/16 :goto_6

    :cond_8
    move/from16 v18, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_5

    :cond_9
    move v12, v2

    move v13, v3

    goto/16 :goto_1
.end method

.method private l()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->r:I

    const/16 v2, 0x5a

    if-ge v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    goto :goto_0

    :cond_1
    iput-boolean v9, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    invoke-static {v5, v0}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v8, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    aput v2, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    aput v2, v0, v10

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x3

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x4

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x5

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x6

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x7

    aput v8, v0, v2

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Lcom/iLoong/launcher/cling/n;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    invoke-direct {v2, v3, v0}, Lcom/iLoong/launcher/cling/n;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->aj:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v6}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    aput v6, v4, v1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v2, v4, v9

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v2, v10

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x3

    aput v8, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x4

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    aput v3, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v3, 0x5

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v3, 0x7

    aput v8, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0x8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xa

    aput v5, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xb

    aput v8, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xc

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, v4, v0

    aput v0, v2, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xd

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xe

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/high16 v2, -0x3ccc

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v4, v4, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    aput v2, v0, v10

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x3

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x4

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x5

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x6

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x7

    aput v5, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float v3, v0, v2

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    sub-float/2addr v0, v3

    aput v0, v4, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v0, v10

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x3

    aput v8, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x4

    sub-float/2addr v2, v3

    aput v2, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x5

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x6

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x7

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    sub-float/2addr v4, v3

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xa

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xb

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xc

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    sub-float v3, v4, v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xd

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xe

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/high16 v2, -0x3ccc

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v4, v4, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    goto/16 :goto_0
.end method

.method private m()V
    .locals 6

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Lcom/iLoong/launcher/cling/n;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    invoke-direct {v3, v0, v4}, Lcom/iLoong/launcher/cling/n;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v4, v0

    invoke-static {v3, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/cling/f;->N:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/cling/f;->O:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->N:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->O:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    return-void

    :cond_3
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->U:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/iLoong/launcher/cling/f;->U:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->N:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->O:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0
.end method

.method private n()V
    .locals 10

    const/4 v0, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v8, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v4, 0x1

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v5, v3, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v3, 0x2

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aput v6, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v3, 0x4

    aput v7, v1, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v3, v1, v9

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/4 v3, 0x7

    aput v6, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v4, 0x8

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v3, 0x1

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x2

    aput v6, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v2, 0x4

    aput v7, v1, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-static {v1, v3}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0x9

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v4, 0xa

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xb

    aput v6, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v4, 0xc

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v4, 0xe

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xf

    aput v6, v1, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0x10

    aput v7, v4, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v7, v3, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    aput v7, v2, v9

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/4 v3, 0x7

    aput v7, v2, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    const/16 v0, 0x8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v5}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/cling/f;->m:I

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v3, v2, 0x1

    aput v6, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    add-int/lit8 v2, v3, 0x1

    aput v7, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0x9

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xb

    aput v6, v1, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v1, 0xc

    aput v7, v4, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v5}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v5

    div-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v2, v9

    goto/16 :goto_0
.end method

.method private o()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-static {v2, v3}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x7

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0x8

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xa

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xb

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xc

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xd

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xe

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xf

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    div-float/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x6

    aput v5, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v7

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v3, 0x7

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0x8

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xa

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xb

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xc

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xd

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v2, 0xe

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/16 v3, 0xf

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    div-float/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v1, 0x6

    aput v6, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    const/4 v2, 0x7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    aput v3, v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aput v6, v0, v8

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    aput v5, v0, v7

    goto/16 :goto_1
.end method

.method private p()V
    .locals 27

    const/4 v3, 0x0

    const/16 v2, 0x5a

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->G:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    new-instance v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    :goto_0
    if-nez v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    rsub-int/lit8 v2, v3, 0x5a

    if-gez v2, :cond_9

    const/4 v2, 0x0

    move v12, v2

    move v13, v3

    :goto_1
    const/16 v2, 0x10

    new-array v3, v2, [F

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    int-to-float v2, v13

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v16, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float v17, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float v19, v2, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->K:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0x8

    const/4 v4, 0x4

    aget v4, v3, v4

    add-float/2addr v4, v1

    aput v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    const/4 v4, 0x0

    aget v4, v3, v4

    add-float/2addr v1, v4

    aput v1, v3, v2

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    const/4 v14, 0x0

    :goto_2
    if-lt v14, v13, :cond_4

    move v8, v14

    :cond_1
    if-lez v12, :cond_2

    const/4 v1, 0x4

    new-array v0, v1, [F

    move-object/from16 v21, v0

    new-instance v22, Lcom/iLoong/launcher/cling/n;

    invoke-direct/range {v22 .. v22}, Lcom/iLoong/launcher/cling/n;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/16 v2, 0x5a

    if-ge v12, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->E:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->H:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/cling/f;->G:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-direct {v10, v11, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v9, v10}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;)F

    move-result v9

    sub-float/2addr v5, v9

    move-object v13, v1

    move v14, v2

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, v1, v2

    int-to-float v4, v12

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v24, v23, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float v26, v25, v1

    const/4 v1, 0x0

    move/from16 v19, v1

    move/from16 v20, v8

    move/from16 v1, v18

    :goto_4
    move/from16 v0, v19

    if-lt v0, v12, :cond_6

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->U:F

    div-float/2addr v1, v2

    const/high16 v2, 0x42b4

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->G:F

    goto/16 :goto_0

    :cond_4
    int-to-float v1, v14

    mul-float v1, v1, v16

    add-float v1, v1, v17

    int-to-float v2, v14

    mul-float v2, v2, v16

    add-float v2, v2, v19

    add-float v15, v1, v16

    add-float v4, v2, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/iLoong/launcher/cling/f;->ai:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/cling/f;->ak:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iLoong/launcher/cling/f;->aj:F

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iput v5, v0, Lcom/iLoong/launcher/cling/f;->al:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v5, v5, v14

    const/4 v6, 0x0

    aput v1, v5, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v5, 0x2

    aput v2, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x3

    const/high16 v5, 0x3f80

    aput v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x4

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x5

    const/high16 v4, 0x3f80

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x6

    aput v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x7

    const/4 v4, 0x0

    aput v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v5, v5, v14

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v6, v6, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v7, v7, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/cling/c;->rotateM([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v4, v1, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v14

    neg-float v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/iLoong/launcher/cling/c;->a([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v1, v2, v4, v5, v6}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0x8

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xc

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0x9

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xd

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v14

    const/16 v2, 0xa

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v2, v2, v14

    const/16 v4, 0xe

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v14, v14, 0x1

    move v7, v15

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->M:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->E:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    div-float v7, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->E:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v2}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->F:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    div-float v6, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->L:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->U:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v9, v9, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v9}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object v13, v1

    move v14, v2

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v5

    goto/16 :goto_3

    :cond_6
    move/from16 v0, v19

    int-to-float v2, v0

    mul-float v2, v2, v26

    sub-float v5, v16, v2

    sub-float v2, v5, v26

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v24

    add-float v6, v17, v4

    add-float v4, v6, v24

    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_8

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v1, 0x1

    move/from16 v18, v1

    move v1, v2

    move v2, v4

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/iLoong/launcher/cling/f;->ai:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/cling/f;->aj:F

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/iLoong/launcher/cling/f;->ak:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->al:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v7, 0x0

    aput v6, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v6, 0x2

    const/high16 v7, 0x3f80

    aput v7, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v6, 0x3

    aput v5, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x4

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x5

    aput v1, v4, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v20

    const/4 v4, 0x6

    aput v2, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v1, v1, v20

    const/4 v2, 0x7

    const/4 v4, 0x0

    aput v4, v1, v2

    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, v23

    add-float/2addr v1, v14

    iput v1, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->F:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v13}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    aput v23, v21, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v21, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v21, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v21, v2

    const/4 v2, 0x0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v23

    add-float/2addr v4, v14

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x3

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v2, 0x5

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v25

    add-float/2addr v4, v15

    aput v4, v3, v2

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    if-eqz v18, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    aput v1, v3, v2

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v5, v5, v20

    neg-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v6, v6, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v7, v7, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/cling/c;->rotateM([FI[FIFFFF)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v20

    neg-float v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    move-object/from16 v4, v21

    invoke-static/range {v4 .. v9}, Lcom/iLoong/launcher/cling/c;->a([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v4, v1, v20

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/cling/f;->W:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ae:[F

    aget v1, v1, v20

    neg-float v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v1, v1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/iLoong/launcher/cling/c;->a([FI[FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v1, v1, v20

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v1, v2, v4, v5, v6}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->am:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->an:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, v21

    invoke-static {v0, v1, v2, v4, v5}, Lcom/iLoong/launcher/cling/c;->b([FIFFF)V

    const/4 v1, 0x0

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->am:F

    const/4 v1, 0x1

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->an:F

    const/4 v1, 0x2

    aget v1, v21, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->ao:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/cling/f;->r:I

    if-nez v18, :cond_2

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v2, v20, 0x1

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v1, v18

    goto/16 :goto_4

    :cond_7
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    const/16 v2, 0x9

    const/4 v4, 0x5

    aget v4, v3, v4

    add-float v4, v4, v25

    aput v4, v3, v2

    const/16 v2, 0xa

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xb

    const/high16 v4, 0x3f80

    aput v4, v3, v2

    const/16 v2, 0xc

    add-int/lit8 v4, v19, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v14

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    aput v1, v3, v2

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v2, v3, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v3, v1

    goto/16 :goto_6

    :cond_8
    move/from16 v18, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_5

    :cond_9
    move v12, v2

    move v13, v3

    goto/16 :goto_1
.end method

.method private q()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    move v0, v1

    :goto_0
    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->g(Lcom/iLoong/launcher/cling/o;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget v3, Lcom/iLoong/launcher/cling/o;->a:I

    add-int/lit8 v3, v3, -0x14

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v3, v3, v7

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    aput v3, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v4, v4, v8

    aput v4, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v1, v4, v1

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v2, v2, v6

    aput v2, v0, v1

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    rem-int/lit8 v5, v0, 0x8

    aget v4, v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v2, v2, v7

    aput v2, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v3, v3, v8

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v1, v3, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    aget v2, v2, v6

    aput v2, v0, v1

    goto :goto_1
.end method

.method private r()V
    .locals 10

    const/16 v9, 0x9

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const/16 v6, 0xc

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    const v0, 0x3f99999a

    :goto_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v3, v3, v6

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v4, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    mul-float/2addr v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x2

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x3

    aput v7, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v4, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v3, v3, v9

    mul-float/2addr v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x6

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v2, 0x7

    aput v7, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v2, v2, v9

    mul-float/2addr v2, v7

    aput v2, v1, v9

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v2, 0xa

    aput v5, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v2, 0xb

    aput v7, v1, v2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v2, v2, v6

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    aput v0, v1, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xf

    aput v7, v0, v1

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    array-length v1, v1

    if-lt v0, v1, :cond_5

    const v0, 0x3f666666

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->B:F

    sub-float/2addr v0, v1

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    const/high16 v0, 0x3f00

    :cond_1
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/f;->a(F)V

    return-void

    :cond_2
    const v0, 0x3f866666

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->g(Lcom/iLoong/launcher/cling/o;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x2

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x3

    aput v7, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v2, v2, v9

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x6

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v1, 0x7

    aput v7, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v2, v2, v6

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v1, v1, v9

    mul-float/2addr v1, v7

    aput v1, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xa

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xb

    aput v7, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    aget v1, v1, v6

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v1, 0xf

    aput v7, v0, v1

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private s()V
    .locals 13

    const/high16 v12, 0x4000

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/16 v8, 0x9

    const v0, 0x3e051eb8

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->T:F

    mul-float/2addr v0, v1

    const v1, 0x3e99999a

    div-float/2addr v0, v1

    add-float v2, v11, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_4

    const v0, 0x3f90a3d7

    :goto_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    if-eqz v1, :cond_7

    new-instance v3, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v3}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v1, v1, v8

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    invoke-static {v1, v4}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xe

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xf

    aput v11, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    aput v5, v4, v9

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v4, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xa

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xb

    aput v11, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x2

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x3

    aput v11, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v5, v6

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v8

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x6

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x7

    aput v11, v1, v4

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xe

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xf

    aput v11, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v9

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xa

    aput v10, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xb

    aput v11, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v5, v12

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    aput v0, v1, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v3, v3, v8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v12

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x2

    aput v10, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x3

    aput v11, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v9

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x6

    aput v10, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x7

    aput v11, v0, v1

    :cond_2
    :goto_1
    const v0, 0x3f666666

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->B:F

    sub-float/2addr v0, v1

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const/high16 v0, 0x3f00

    :cond_3
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/f;->a(F)V

    return-void

    :cond_4
    const v0, 0x3f866666

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xe

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xf

    aput v11, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->F:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    :cond_6
    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    aput v5, v4, v9

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v4, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xa

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xb

    aput v11, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x2

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x3

    aput v11, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v5, v6

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v8

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x6

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x7

    aput v11, v1, v4

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v12

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xe

    aput v10, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xf

    aput v11, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v9

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v8

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xa

    aput v10, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xb

    aput v11, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v9

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v5, v12

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    aput v0, v1, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v3, v3, v8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v12

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x2

    aput v10, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x3

    aput v11, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v9

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x6

    aput v10, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x7

    aput v11, v0, v1

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    array-length v1, v1

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aput v10, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aput v10, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private t()V
    .locals 13

    const/16 v12, 0x8

    const/16 v11, 0x9

    const/high16 v10, 0x4000

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const v0, 0x3e051eb8

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->T:F

    mul-float/2addr v0, v1

    const v1, 0x3e99999a

    div-float/2addr v0, v1

    add-float v2, v9, v0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    const v0, 0x3f90a3d7

    :goto_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    if-eqz v1, :cond_6

    new-instance v3, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v3}, Lcom/iLoong/launcher/cling/n;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v1, v1, v11

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    invoke-static {v1, v4}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xe

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xf

    aput v9, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    aput v5, v4, v12

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v4, v11

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xa

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xb

    aput v9, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x2

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x3

    aput v9, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v12

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v5, v6

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v11

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x6

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x7

    aput v9, v1, v4

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xe

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xf

    aput v9, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v12

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v11

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xa

    aput v8, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xb

    aput v9, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    aput v0, v1, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x2

    aput v8, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x3

    aput v9, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v12

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v11

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x6

    aput v8, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x7

    aput v9, v0, v1

    :cond_1
    :goto_1
    const v0, 0x3f666666

    iget v1, p0, Lcom/iLoong/launcher/cling/f;->B:F

    sub-float/2addr v0, v1

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    const/high16 v0, 0x3f00

    :cond_2
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/f;->a(F)V

    return-void

    :cond_3
    const v0, 0x3f866666

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v12

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xe

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xf

    aput v9, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    aput v5, v4, v12

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v4, v11

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xa

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/16 v4, 0xb

    aput v9, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v12

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x2

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x3

    aput v9, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v12

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v5, v6

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aget v5, v5, v11

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x6

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    const/4 v4, 0x7

    aput v9, v1, v4

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v12

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v5, v5, v11

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xe

    aput v8, v1, v4

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v4, 0xf

    aput v9, v1, v4

    iget-object v1, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->H:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v1

    :cond_5
    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v12

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v11

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xa

    aput v8, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/16 v3, 0xb

    aput v9, v1, v3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v4, v4, v12

    iget v5, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    aput v0, v1, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aget v3, v3, v11

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->B:F

    div-float/2addr v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x2

    aput v8, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x3

    aput v9, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v12

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->B:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aget v2, v2, v11

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x6

    aput v8, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    const/4 v1, 0x7

    aput v9, v0, v1

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    array-length v1, v1

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    aput v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    aput v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private u()V
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->r:I

    const/16 v2, 0x5a

    if-ge v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcom/iLoong/launcher/cling/f;->v:Z

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->al:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->al:F

    invoke-static {v8, v0}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v5, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v8, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->al:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x4

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x5

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x6

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x7

    aput v5, v0, v2

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Lcom/iLoong/launcher/cling/n;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    invoke-direct {v2, v3, v0}, Lcom/iLoong/launcher/cling/n;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/iLoong/launcher/cling/k;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->E:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->al:F

    iget-object v6, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v6}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v6

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    aput v2, v4, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v2, v7

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v2, v9

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x3

    aput v8, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x4

    iget v6, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    aput v6, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x5

    aput v3, v2, v4

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v3, 0x7

    aput v8, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0x8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xa

    aput v5, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xb

    aput v8, v2, v3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v3, 0xc

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, v4, v0

    aput v0, v2, v3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xd

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xe

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/high16 v2, -0x3ccc

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v4, v4, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    aput v5, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    aput v2, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x3

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x4

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x5

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x6

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    const/4 v2, 0x7

    aput v5, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->ai:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->ak:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float v3, v0, v2

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    sub-float/2addr v0, v3

    aput v0, v4, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v4, v0, v7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x3

    aput v8, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v4, 0x4

    sub-float/2addr v2, v3

    aput v2, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x5

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x6

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/4 v2, 0x7

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x8

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    sub-float/2addr v4, v3

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0x9

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xa

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xb

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xc

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    sub-float v3, v4, v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xd

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->F:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xe

    aput v5, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    const/high16 v2, -0x3ccc

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v3, v3, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/f;->P:Lcom/iLoong/launcher/cling/n;

    iget-object v4, v4, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/f;->am:F

    iget v3, p0, Lcom/iLoong/launcher/cling/f;->an:F

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->ao:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/cling/c;->a([FIFFF)V

    goto/16 :goto_0
.end method

.method private v()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->D:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->x:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->e:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->z:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->f:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->A:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->g:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->V:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->h:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->i:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->X:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->j:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Y:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->k:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->l:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->aa:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->d:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->y:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_0
    const/16 v2, 0x5a

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->s:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->af:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->t:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ag:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->u:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->u:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->n:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->ab:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->n:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->o:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->ac:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->o:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->p:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/iLoong/launcher/cling/f;->ad:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->p:[Ljava/nio/FloatBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/high16 v5, 0x41c8

    const/high16 v3, 0x4120

    const/high16 v2, 0x40c0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Lcom/iLoong/launcher/cling/k;->a(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->c(Lcom/iLoong/launcher/cling/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->d(Lcom/iLoong/launcher/cling/o;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->e(Lcom/iLoong/launcher/cling/o;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->f(Lcom/iLoong/launcher/cling/o;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->e(Lcom/iLoong/launcher/cling/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->f(Lcom/iLoong/launcher/cling/o;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    div-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    const v1, 0x3c343958

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->U:F

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->T:F

    const/high16 v1, 0x4020

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->B:F

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->B:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v1

    div-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->B:F

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/cling/f;->C:F

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/f;->a(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Lcom/iLoong/launcher/cling/k;->a(F)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->c()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->d()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->e()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->f()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->g()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->r()V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->q()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->v()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    const v1, -0x43cbc6a8

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->h()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->i()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->j()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->k()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->l()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->s()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->m()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->n()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->o()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->p()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->u()V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->t()V

    goto :goto_1
.end method

.method public a(FF)V
    .locals 3

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/f;->I:Landroid/graphics/PointF;

    div-float v2, p1, v0

    div-float v0, p2, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public b()V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    const/high16 v6, -0x4080

    const/high16 v2, 0x4000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->F:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->E:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->G:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->w:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->b(Lcom/iLoong/launcher/cling/o;)F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/cling/f;->H:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->Q:Lcom/iLoong/launcher/cling/n;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->F:F

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->S:Lcom/iLoong/launcher/cling/n;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->H:F

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->R:Lcom/iLoong/launcher/cling/n;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/iLoong/launcher/cling/f;->G:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    array-length v0, v0

    if-lt v1, v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/cling/f;->C:F

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/f;->a(F)V

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/f;->v()V

    return-void

    :cond_0
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    aput v7, v2, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->W:[F

    aput v5, v2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    aput v7, v2, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/iLoong/launcher/cling/f;->Z:[F

    aput v5, v2, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    aput v6, v0, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->ah:[F

    aput v5, v0, v1

    goto :goto_5
.end method

.method public b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/f;->J:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
