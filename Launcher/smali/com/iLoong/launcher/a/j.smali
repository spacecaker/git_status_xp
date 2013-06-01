.class public Lcom/iLoong/launcher/a/j;
.super Ljava/lang/Object;


# instance fields
.field public k:J

.field public l:I

.field public m:J

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field y:Z


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/iLoong/launcher/a/j;->k:J

    iput-wide v2, p0, Lcom/iLoong/launcher/a/j;->m:J

    iput v1, p0, Lcom/iLoong/launcher/a/j;->n:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->p:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->q:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->r:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->s:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->t:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->u:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->v:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->w:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->x:I

    iput-boolean v0, p0, Lcom/iLoong/launcher/a/j;->y:Z

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/a/j;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/iLoong/launcher/a/j;->k:J

    iput-wide v2, p0, Lcom/iLoong/launcher/a/j;->m:J

    iput v1, p0, Lcom/iLoong/launcher/a/j;->n:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->p:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->q:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->r:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->s:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->t:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->u:I

    iput v1, p0, Lcom/iLoong/launcher/a/j;->v:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->w:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->x:I

    iput-boolean v0, p0, Lcom/iLoong/launcher/a/j;->y:Z

    iget-wide v0, p1, Lcom/iLoong/launcher/a/j;->k:J

    iput-wide v0, p0, Lcom/iLoong/launcher/a/j;->k:J

    iget v0, p1, Lcom/iLoong/launcher/a/j;->s:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->s:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->t:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->t:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->w:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->w:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->x:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->x:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->n:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->n:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->l:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->l:I

    iget-wide v0, p1, Lcom/iLoong/launcher/a/j;->m:J

    iput-wide v0, p0, Lcom/iLoong/launcher/a/j;->m:J

    iget v0, p1, Lcom/iLoong/launcher/a/j;->p:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->p:I

    iget v0, p1, Lcom/iLoong/launcher/a/j;->q:I

    iput v0, p0, Lcom/iLoong/launcher/a/j;->q:I

    return-void
.end method

.method static a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/iLoong/launcher/a/j;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Favorite"

    const-string v1, "Could not write icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "itemType"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/a/j;->y:Z

    if-nez v0, :cond_0

    const-string v0, "container"

    iget-wide v1, p0, Lcom/iLoong/launcher/a/j;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellX"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "x"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "y"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "angle"

    iget v1, p0, Lcom/iLoong/launcher/a/j;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/iLoong/launcher/a/j;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/a/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
