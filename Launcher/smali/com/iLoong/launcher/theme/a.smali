.class Lcom/iLoong/launcher/theme/a;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/theme/d;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/theme/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "themepreview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "date"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "author"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "feedback"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->m:Ljava/util/ArrayList;

    const-string v1, "image"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "widget_theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/a;->a:Lcom/iLoong/launcher/theme/d;

    const-string v1, "theme"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/d;->l:Ljava/lang/String;

    goto :goto_0
.end method
