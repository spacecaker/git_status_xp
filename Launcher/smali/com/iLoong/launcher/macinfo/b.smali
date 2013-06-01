.class public Lcom/iLoong/launcher/macinfo/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "wifi"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/h;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "os"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/j;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "telephony"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/e;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "network"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/c;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "generic"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/b;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/iLoong/launcher/macinfo/j;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iLoong/launcher/macinfo/e;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iLoong/launcher/macinfo/h;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iLoong/launcher/macinfo/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iLoong/launcher/b/e;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iLoong/launcher/macinfo/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/macinfo/i;->a(Ljava/lang/String;)Lcom/iLoong/launcher/macinfo/g;

    move-result-object v1

    :try_start_0
    const-string v2, "model"

    invoke-static {}, Lcom/iLoong/launcher/macinfo/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    const-string v2, "version_code"

    invoke-virtual {v1}, Lcom/iLoong/launcher/macinfo/g;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "version_name"

    invoke-virtual {v1}, Lcom/iLoong/launcher/macinfo/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "uuid"

    sget-object v2, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iLoong/launcher/macinfo/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "smsc_address_iccid"

    sget-object v2, Lcom/iLoong/launcher/macinfo/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iLoong/launcher/macinfo/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "config.ini"

    invoke-static {v1}, Lcom/iLoong/launcher/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "web_domain"

    const-string v3, "domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app_id"

    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "template_id"

    const-string v3, "template_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "channel_id"

    const-string v3, "channel_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "bind_install_assist"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/macinfo/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
