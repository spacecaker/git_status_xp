.class Lcom/iLoong/launcher/Widget3D/d;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/iLoong/launcher/Widget3D/b;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Widget3D/b;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endDocument"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/b;->a(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    invoke-static {v1}, Lcom/iLoong/launcher/Widget3D/b;->a(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "find no theme,return default themeName:iLoong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDocument()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startDocument"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "widget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/d;->d:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "themeConfig"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->c:Ljava/lang/String;

    const-string v1, "themeConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->d:Ljava/lang/String;

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "hostTheme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->c:Ljava/lang/String;

    const-string v1, "themeConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->d:Ljava/lang/String;

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->e:Ljava/lang/String;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    invoke-static {v1}, Lcom/iLoong/launcher/Widget3D/b;->b(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/b;->c(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/d;->g:Lcom/iLoong/launcher/Widget3D/b;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/b;->a(Lcom/iLoong/launcher/Widget3D/b;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
