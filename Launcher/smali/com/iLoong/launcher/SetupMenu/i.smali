.class Lcom/iLoong/launcher/SetupMenu/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Lcom/iLoong/launcher/SetupMenu/t;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/iLoong/launcher/SetupMenu/p;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/i;->d:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iLoong/launcher/SetupMenu/i;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/i;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/i;->b:Lcom/iLoong/launcher/SetupMenu/t;

    const-string v1, "config.ini"

    invoke-static {v1}, Lcom/iLoong/launcher/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p2, Lcom/iLoong/launcher/SetupMenu/t;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/iLoong/launcher/SetupMenu/t;->k:Ljava/lang/String;

    const-string v2, "server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "f36"

    :try_start_1
    const-string v2, "app_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    iget-object v2, p2, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/SetupMenu/p;->d(Ljava/lang/String;)I

    move-result v3

    const-string v2, "0"

    :try_start_2
    const-string v4, "channel_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/iLoong/launcher/SetupMenu/p;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "apkid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "channelid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/i;->c:Ljava/lang/String;

    :goto_3
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    :cond_0
    const-string v1, "http://androidsub2.cooee.com.cn"

    :try_start_3
    const-string v2, "domain"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :goto_4
    const-string v2, "androidsubnewabcabc12312"

    :try_start_4
    const-string v3, "serialno"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iLoong/launcher/SetupMenu/p;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "package_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serialno="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/i;->c:Ljava/lang/String;

    const-string v0, "http"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadGetClient get url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_5
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/i;)Lcom/iLoong/launcher/SetupMenu/p;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/i;->d:Lcom/iLoong/launcher/SetupMenu/p;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/i;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/s;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/i;->d:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/j;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/j;-><init>(Lcom/iLoong/launcher/SetupMenu/i;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
