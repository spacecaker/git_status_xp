.class public Lcom/iLoong/launcher/airpush/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/xml/sax/InputSource;

.field b:Lorg/xml/sax/helpers/DefaultHandler;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/b;->a:Lorg/xml/sax/InputSource;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/b;->b:Lorg/xml/sax/helpers/DefaultHandler;

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/b;->b:Lorg/xml/sax/helpers/DefaultHandler;

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/b;->a:Lorg/xml/sax/InputSource;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/b;->a:Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/b;->a:Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/b;->b:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
