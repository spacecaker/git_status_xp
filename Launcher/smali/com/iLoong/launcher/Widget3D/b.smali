.class public Lcom/iLoong/launcher/Widget3D/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Widget3DTheme"

    sput-object v0, Lcom/iLoong/launcher/Widget3D/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "theme/widget/config.xml"

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/iLoong/launcher/Widget3D/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Widget3D/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Widget3D/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/Widget3D/d;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/Widget3D/d;-><init>(Lcom/iLoong/launcher/Widget3D/b;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

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

.method static synthetic c(Lcom/iLoong/launcher/Widget3D/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iLoong/launcher/Widget3D/b;->b()V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "iLoong"

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/b;->b:Ljava/lang/String;

    return-void
.end method
