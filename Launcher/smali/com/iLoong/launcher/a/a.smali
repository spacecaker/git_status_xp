.class public Lcom/iLoong/launcher/a/a;
.super Lcom/iLoong/launcher/a/e;


# instance fields
.field public a:Landroid/content/Intent;

.field public b:Landroid/net/Uri;

.field public c:I

.field d:Landroid/content/Intent$ShortcutIconResource;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iLoong/launcher/a/e;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/a/a;->l:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/iLoong/launcher/a/e;->a(Landroid/content/ContentValues;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/iLoong/launcher/a/a;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v1, p0, Lcom/iLoong/launcher/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/a;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "intent"

    iget-object v1, p0, Lcom/iLoong/launcher/a/a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "displayMode"

    iget v1, p0, Lcom/iLoong/launcher/a/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/iLoong/launcher/a/a;->d:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/iLoong/launcher/a/a;->d:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/iLoong/launcher/a/a;->d:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
