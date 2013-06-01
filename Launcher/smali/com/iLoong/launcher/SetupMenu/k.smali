.class Lcom/iLoong/launcher/SetupMenu/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/List;

.field b:Lcom/iLoong/launcher/SetupMenu/t;

.field final synthetic c:Lcom/iLoong/launcher/SetupMenu/p;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 6

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/k;->c:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/k;->b:Lcom/iLoong/launcher/SetupMenu/t;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "type"

    iget-object v2, p2, Lcom/iLoong/launcher/SetupMenu/t;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "versioncode"

    iget-object v3, p2, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packname"

    iget-object v4, p2, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "customerid"

    iget-object v5, p2, Lcom/iLoong/launcher/SetupMenu/t;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/k;)Lcom/iLoong/launcher/SetupMenu/p;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/k;->c:Lcom/iLoong/launcher/SetupMenu/p;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/k;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/s;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/k;->c:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/y;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/y;-><init>(Lcom/iLoong/launcher/SetupMenu/k;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
