.class public Lcom/iLoong/launcher/a/f;
.super Lcom/iLoong/launcher/a/j;


# static fields
.field public static d:Z


# instance fields
.field public a:Landroid/content/Intent;

.field public b:Z

.field public c:Z

.field public e:Landroid/content/Intent$ShortcutIconResource;

.field public f:Landroid/graphics/Bitmap;

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcom/iLoong/launcher/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iLoong/launcher/a/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/a/f;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/a/f;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/a/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/a/j;-><init>(Lcom/iLoong/launcher/a/j;)V

    iput v2, p0, Lcom/iLoong/launcher/a/f;->i:I

    iget v0, p1, Lcom/iLoong/launcher/a/b;->e:I

    iput v0, p0, Lcom/iLoong/launcher/a/f;->i:I

    iget-object v0, p1, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/iLoong/launcher/a/b;->b:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/iLoong/launcher/a/f;->b:Z

    iput-object p1, p0, Lcom/iLoong/launcher/a/f;->j:Lcom/iLoong/launcher/a/b;

    iput-boolean v2, p0, Lcom/iLoong/launcher/a/f;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/a/f;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/a/j;-><init>(Lcom/iLoong/launcher/a/j;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/a/f;->i:I

    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    iget-boolean v0, p1, Lcom/iLoong/launcher/a/f;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/a/f;->b:Z

    iget-boolean v0, p1, Lcom/iLoong/launcher/a/f;->c:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/a/f;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/app/ak;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iLoong/launcher/a/f;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/iLoong/launcher/a/j;->a(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "intent"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/a/f;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "iconType"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/iLoong/launcher/a/f;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/a/f;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/iLoong/launcher/a/f;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const-string v0, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
