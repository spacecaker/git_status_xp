.class Lcom/iLoong/launcher/Desktop3D/aa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/d;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/aa;->a:Lcom/iLoong/launcher/Desktop3D/d;

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

    const-string v0, "apkconfig"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aa;->a:Lcom/iLoong/launcher/Desktop3D/d;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/d;->a(Lcom/iLoong/launcher/Desktop3D/d;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "apkname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
