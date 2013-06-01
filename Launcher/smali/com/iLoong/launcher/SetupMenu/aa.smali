.class Lcom/iLoong/launcher/SetupMenu/aa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/iLoong/launcher/SetupMenu/t;

.field final synthetic h:Lcom/iLoong/launcher/SetupMenu/p;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->h:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->c:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->d:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->e:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->f:Z

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/aa;->g:Lcom/iLoong/launcher/SetupMenu/t;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->g:Lcom/iLoong/launcher/SetupMenu/t;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/iLoong/launcher/SetupMenu/t;->g:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->g:Lcom/iLoong/launcher/SetupMenu/t;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->g:Lcom/iLoong/launcher/SetupMenu/t;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->i:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->g:Lcom/iLoong/launcher/SetupMenu/t;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->j:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "iloong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->b:Z

    goto :goto_0

    :cond_2
    const-string v0, "versioncode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->d:Z

    goto :goto_0

    :cond_3
    const-string v0, "versionname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->e:Z

    goto :goto_0

    :cond_4
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->c:Z

    goto :goto_0

    :cond_5
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->f:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "iloong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->b:Z

    goto :goto_0

    :cond_2
    const-string v0, "versioncode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->d:Z

    goto :goto_0

    :cond_3
    const-string v0, "versionname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->e:Z

    goto :goto_0

    :cond_4
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->c:Z

    goto :goto_0

    :cond_5
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/aa;->f:Z

    goto :goto_0
.end method
