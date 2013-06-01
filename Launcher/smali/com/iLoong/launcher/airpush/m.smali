.class public Lcom/iLoong/launcher/airpush/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:[B

.field public v:I

.field public w:I

.field public x:[B

.field public y:Landroid/graphics/Bitmap;

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->j:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->k:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/iLoong/launcher/airpush/m;->m:I

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->n:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->o:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->p:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->r:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->t:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->u:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/iLoong/launcher/airpush/m;->v:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/iLoong/launcher/airpush/m;->w:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->x:[B

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/m;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/iLoong/launcher/airpush/m;->a:Ljava/lang/String;

    iput p4, p0, Lcom/iLoong/launcher/airpush/m;->b:I

    iput-object p5, p0, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    iput p7, p0, Lcom/iLoong/launcher/airpush/m;->e:I

    if-gtz p8, :cond_0

    const/16 v1, 0x64

    iput v1, p0, Lcom/iLoong/launcher/airpush/m;->f:I

    :goto_0
    div-int/lit16 v1, p8, 0x3e8

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v3, v1

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->r:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/m;->j:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/iLoong/launcher/airpush/m;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/airpush/m;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/m;->y:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/m;->z:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    iput p8, p0, Lcom/iLoong/launcher/airpush/m;->f:I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/m;->r:Ljava/lang/String;

    goto :goto_1
.end method
