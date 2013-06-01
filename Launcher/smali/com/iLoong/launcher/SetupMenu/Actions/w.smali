.class Lcom/iLoong/launcher/SetupMenu/Actions/w;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field final synthetic g:Lcom/iLoong/launcher/SetupMenu/Actions/k;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->b:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->c:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->d:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->e:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->f:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a(Lcom/iLoong/launcher/SetupMenu/Actions/k;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a(Lcom/iLoong/launcher/SetupMenu/Actions/k;I)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->d(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Lcom/iLoong/launcher/SetupMenu/Actions/k;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V

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

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->b:Z

    goto :goto_0

    :cond_2
    const-string v0, "versioncode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->d:Z

    goto :goto_0

    :cond_3
    const-string v0, "versionname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->e:Z

    goto :goto_0

    :cond_4
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->c:Z

    goto :goto_0

    :cond_5
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->f:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "iloong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->b:Z

    goto :goto_0

    :cond_2
    const-string v0, "versioncode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->d:Z

    goto :goto_0

    :cond_3
    const-string v0, "versionname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->e:Z

    goto :goto_0

    :cond_4
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->c:Z

    goto :goto_0

    :cond_5
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->g:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/w;->f:Z

    goto :goto_0
.end method
