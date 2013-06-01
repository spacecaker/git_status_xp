.class public Lcom/iLoong/launcher/Widget3D/CacheManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/Cache;
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/Cache;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/Widget3D/Cache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Widget3D/Cache;-><init>(I)V

    sget-object v1, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removeCache(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/Cache;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/Cache;->clear()V

    sget-object v0, Lcom/iLoong/launcher/Widget3D/CacheManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
