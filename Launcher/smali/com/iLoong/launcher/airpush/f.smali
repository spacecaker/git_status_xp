.class public Lcom/iLoong/launcher/airpush/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lorg/xml/sax/helpers/DefaultHandler;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/lang/StringBuffer;

.field private j:Lcom/iLoong/launcher/airpush/c;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/f;->g:Lorg/xml/sax/helpers/DefaultHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/f;->j:Lcom/iLoong/launcher/airpush/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->k:Ljava/lang/String;

    new-instance v0, Lcom/iLoong/launcher/airpush/p;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/p;-><init>(Lcom/iLoong/launcher/airpush/f;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/f;->g:Lorg/xml/sax/helpers/DefaultHandler;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/f;Lcom/iLoong/launcher/airpush/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/f;->j:Lcom/iLoong/launcher/airpush/c;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/f;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/f;->j:Lcom/iLoong/launcher/airpush/c;

    return-object v0
.end method


# virtual methods
.method public a([BI)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lorg/xml/sax/helpers/DefaultHandler;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/f;->g:Lorg/xml/sax/helpers/DefaultHandler;

    return-object v0
.end method
