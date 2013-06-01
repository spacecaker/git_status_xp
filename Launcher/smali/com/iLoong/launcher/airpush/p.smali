.class public Lcom/iLoong/launcher/airpush/p;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/f;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/airpush/f;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "url1"

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "newAirpush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " serverurl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "url3"

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "newAirpush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " completeAsk11:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "url2"

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "newAirpush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " downloadUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const-string v0, "appid"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "appname"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v0, "version"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/airpush/c;->c:I

    goto/16 :goto_1

    :cond_7
    const-string v0, "versionname"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->d:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "noticeTitle"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "noticeSubTitle"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v0, "briefIntro"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v0, "filesize"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/airpush/c;->h:I

    goto/16 :goto_1

    :cond_c
    const-string v0, "downloadurl"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "params"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "icon"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_f
    const-string v0, "preview"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "icon"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v1

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/airpush/c;->k:[B

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/c;->k:[B

    array-length v1, v1

    iput v1, v0, Lcom/iLoong/launcher/airpush/c;->n:I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v2

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/c;->k:[B

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v3

    iget v3, v3, Lcom/iLoong/launcher/airpush/c;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/airpush/f;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->l:Landroid/graphics/Bitmap;

    const-string v0, "ttag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iconlength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/airpush/c;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preview"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v1

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/airpush/c;->p:[B

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/c;->p:[B

    array-length v1, v1

    iput v1, v0, Lcom/iLoong/launcher/airpush/c;->o:I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v2

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/c;->p:[B

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v3

    iget v3, v3, Lcom/iLoong/launcher/airpush/c;->o:I

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/airpush/f;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/c;->m:Landroid/graphics/Bitmap;

    const-string v0, "ttag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prelength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/f;->b(Lcom/iLoong/launcher/airpush/f;)Lcom/iLoong/launcher/airpush/c;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/airpush/c;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, "config"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const-string v1, "timespan"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/f;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    const-string v1, "timestamp"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/f;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v0, p3}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/iLoong/launcher/airpush/c;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/airpush/c;-><init>(Lcom/iLoong/launcher/airpush/f;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/airpush/f;->a(Lcom/iLoong/launcher/airpush/f;Lcom/iLoong/launcher/airpush/c;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "icon"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "preview"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/p;->a:Lcom/iLoong/launcher/airpush/f;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/f;->i:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
