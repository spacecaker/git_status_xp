.class public Lcom/iLoong/launcher/airpush/AirPush;
.super Ljava/lang/Object;


# static fields
.field public static c:Lcom/iLoong/launcher/airpush/j;

.field public static f:Ljava/util/List;

.field public static g:Ljava/lang/String;

.field public static i:Ljava/util/List;

.field public static j:Ljava/util/Map;

.field public static k:Ljava/util/List;


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:I

.field private final E:I

.field private final F:J

.field private final G:J

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private final M:I

.field private final N:I

.field private final O:I

.field private P:I

.field private Q:J

.field private R:I

.field private S:Lcom/iLoong/launcher/airpush/a;

.field private T:Lcom/iLoong/launcher/airpush/l;

.field private U:Lcom/iLoong/launcher/airpush/o;

.field private V:Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

.field private W:Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

.field private X:Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

.field private Y:Ljava/util/List;

.field private Z:Landroid/content/Context;

.field public a:Ljava/lang/String;

.field private aa:Z

.field private ab:Z

.field private ac:Landroid/content/SharedPreferences;

.field private ad:Ljava/lang/Runnable;

.field public b:I

.field public d:I

.field public e:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public final n:I

.field private final o:Ljava/lang/String;

.field private final p:Z

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iLoong/launcher/airpush/j;

    invoke-direct {v0}, Lcom/iLoong/launcher/airpush/j;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    const-string v0, ""

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AirPush"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->o:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->p:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    const-string v0, "00"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->q:Ljava/lang/String;

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cooee/launcher/airpush/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cooee/launcher/airpush/ServerConfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->s:Ljava/lang/String;

    const-string v0, "airpush"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->t:Ljava/lang/String;

    const-string v0, "config_time_interval"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->u:Ljava/lang/String;

    const-string v0, "config_time_stamp"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->v:Ljava/lang/String;

    const-string v0, "airpush_time_stamp"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->w:Ljava/lang/String;

    const-string v0, "config_time"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->x:Ljava/lang/String;

    const-string v0, "server_urls"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->y:Ljava/lang/String;

    const-string v0, "next_check_config"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->z:Ljava/lang/String;

    const-string v0, "com.cooee.airpush.action.package_info_dialog"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->A:Ljava/lang/String;

    const-string v0, "com.cooee.airpush.action.launcher_dialog"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->B:Ljava/lang/String;

    const-string v0, "com.cooee.airpush.action.check_server_config"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->C:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->D:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->E:I

    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->F:J

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->G:J

    iput v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->H:I

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->I:I

    const-string v0, "http://yu01.coomoe.com/airv1/getlist.ashx"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->J:Ljava/lang/String;

    const-string v0, "http://ku01.coomoe.com/airv1/getApp.ashx"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->K:Ljava/lang/String;

    const-string v0, "http://iu01.coomoe.com/airv1/s.ashx"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    iput v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->M:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->N:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->O:I

    const v0, 0x240c8400

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->P:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->R:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->aa:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->m:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->n:I

    new-instance v0, Lcom/iLoong/launcher/airpush/w;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/w;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ad:Ljava/lang/Runnable;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    const-string v1, "launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ac:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ac:Landroid/content/SharedPreferences;

    const-string v1, "trigger_airpush"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->b()V

    iput-boolean v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/airpush/AirPush;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/airpush/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/airpush/AirPush;->b(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v4, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    const-string v5, "airpush"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "next_check_config"

    iget-wide v6, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cooee.airpush.action.check_server_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->aa:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/AirPush;->l()V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->P:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/airpush/AirPush;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->J:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/AirPush;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->aa:Z

    return-void
.end method

.method private a(Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/airpush/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/iLoong/launcher/airpush/t;-><init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/airpush_config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x100

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private b(J)J
    .locals 5

    const/16 v4, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "kk"

    add-long/2addr v0, p1

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AirPush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hour:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v4, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    if-ge v0, v4, :cond_1

    rsub-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr p1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/airpush/AirPush;J)V
    .locals 0

    iput-wide p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->K:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/airpush/AirPush;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->aa:Z

    return v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/AirPush;->m()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/iLoong/launcher/airpush/AirPush;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->P:I

    return v0
.end method

.method private g(Lcom/iLoong/launcher/airpush/m;)V
    .locals 4

    new-instance v0, Lcom/iLoong/launcher/airpush/k;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/k;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    const-string v1, "newbug"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLauncherState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    if-lez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/m;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/iLoong/launcher/airpush/AirPush;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    return-object v0
.end method

.method private h(Lcom/iLoong/launcher/airpush/m;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Lcom/iLoong/launcher/airpush/m;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/iLoong/launcher/airpush/m;->l:Ljava/lang/String;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p1, Lcom/iLoong/launcher/airpush/m;->i:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p1, Lcom/iLoong/launcher/airpush/m;->n:Ljava/lang/String;

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p1, Lcom/iLoong/launcher/airpush/m;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lcom/iLoong/launcher/airpush/AirPush;)J
    .locals 2

    iget-wide v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    return-wide v0
.end method

.method static synthetic j(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->K:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    const-string v1, "airpush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_time_interval"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iput v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->P:I

    :cond_0
    const-string v1, "next_check_config"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    const-string v1, "config_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    const-string v1, "server_urls"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    return-void
.end method

.method private l()V
    .locals 10

    const/4 v3, 0x0

    move v9, v3

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/iLoong/launcher/airpush/m;

    iget-object v0, v8, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    iget v1, v8, Lcom/iLoong/launcher/airpush/m;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "find"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "install:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/iLoong/launcher/airpush/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "find"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exist:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "newbug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exist id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, v8, Lcom/iLoong/launcher/airpush/m;->t:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/iLoong/launcher/airpush/m;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v8, Lcom/iLoong/launcher/airpush/m;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v8}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/m;)V

    :cond_4
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, v8, Lcom/iLoong/launcher/airpush/m;->y:Landroid/graphics/Bitmap;

    iget-object v2, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    iget-object v4, v8, Lcom/iLoong/launcher/airpush/m;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/iLoong/launcher/airpush/j;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, v8, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/n;->d()V

    goto/16 :goto_1
.end method

.method private m()Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/airpush_config.xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private n()V
    .locals 17

    const-string v1, "AirPush"

    const-string v2, "resume config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/iLoong/launcher/airpush/AirPush;->m()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v2, "AirPush"

    const-string v3, "start resume config"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/iLoong/launcher/airpush/f;

    invoke-direct {v15}, Lcom/iLoong/launcher/airpush/f;-><init>()V

    invoke-virtual {v15}, Lcom/iLoong/launcher/airpush/f;->a()Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/airpush/b;

    invoke-direct {v3, v1, v2}, Lcom/iLoong/launcher/airpush/b;-><init>(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v3}, Lcom/iLoong/launcher/airpush/b;->a()V

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/airpush/AirPush;->j()V

    const/4 v1, 0x0

    move v14, v1

    :goto_0
    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v14, v1, :cond_3

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v1, v3

    aget-object v1, v2, v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/AirPush;->K:Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v1, v3

    aget-object v1, v2, v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iLoong/launcher/airpush/m;

    iget-object v1, v9, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    iget v2, v9, Lcom/iLoong/launcher/airpush/m;->g:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    :cond_3
    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v4, v1, Lcom/iLoong/launcher/airpush/c;->b:Ljava/lang/String;

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget v9, v1, Lcom/iLoong/launcher/airpush/c;->h:I

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v6, v1, Lcom/iLoong/launcher/airpush/c;->a:Ljava/lang/String;

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v7, v1, Lcom/iLoong/launcher/airpush/c;->g:Ljava/lang/String;

    sget-object v16, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    new-instance v1, Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/airpush/c;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/c;->l:Landroid/graphics/Bitmap;

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/airpush/c;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/c;->m:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v10, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iLoong/launcher/airpush/c;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/c;->j:Ljava/lang/String;

    iget-object v11, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iLoong/launcher/airpush/c;

    iget-object v11, v11, Lcom/iLoong/launcher/airpush/c;->i:Ljava/lang/String;

    iget-object v12, v15, Lcom/iLoong/launcher/airpush/f;->f:Ljava/lang/String;

    iget-object v13, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iLoong/launcher/airpush/c;

    iget v13, v13, Lcom/iLoong/launcher/airpush/c;->c:I

    invoke-direct/range {v1 .. v13}, Lcom/iLoong/launcher/airpush/m;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/AirPush;->r:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/iLoong/launcher/airpush/m;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->y:Landroid/graphics/Bitmap;

    iget-object v3, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/iLoong/launcher/airpush/m;->a:Ljava/lang/String;

    iget-object v6, v9, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/iLoong/launcher/airpush/j;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    :cond_5
    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/iLoong/launcher/airpush/n;->f:Z

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/n;->b(Z)V

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/n;->c(Z)V

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/airpush/n;->d()V

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/iLoong/launcher/airpush/n;->j:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/m;)V

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, v9, Lcom/iLoong/launcher/airpush/m;->y:Landroid/graphics/Bitmap;

    iget-object v3, v9, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/iLoong/launcher/airpush/m;->a:Ljava/lang/String;

    iget-object v6, v9, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/iLoong/launcher/airpush/j;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/m;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/m;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    new-instance v0, Lcom/iLoong/launcher/airpush/a;

    invoke-direct {v0}, Lcom/iLoong/launcher/airpush/a;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/airpush/a;->a(Lcom/iLoong/launcher/airpush/AirPush;)V

    new-instance v0, Lcom/iLoong/launcher/airpush/l;

    invoke-direct {v0}, Lcom/iLoong/launcher/airpush/l;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->T:Lcom/iLoong/launcher/airpush/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    new-instance v0, Lcom/iLoong/launcher/airpush/o;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/o;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->U:Lcom/iLoong/launcher/airpush/o;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->U:Lcom/iLoong/launcher/airpush/o;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->V:Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cooee.airpush.action.check_server_config"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->V:Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->W:Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cooee.airpush.action.package_info_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->W:Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/AirPush$notificationClear;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->X:Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cooee.airpush.action.notification_clear"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->X:Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iput v2, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    move v1, v2

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    const-string v0, "airpushKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    const-string v0, "dialogkey"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "entry newintent: key::::"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v3

    :goto_1
    const-string v1, ""

    iget-object v4, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const-string v0, "dialogkey"

    const-string v1, "process"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->b()V

    iput-boolean v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ac:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trigger_airpush"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->i()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-boolean v0, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iput-boolean v3, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    const-string v4, "newdialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "resume n:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->b()V

    iput-boolean v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ac:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "trigger_airpush"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/m;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto/16 :goto_2
.end method

.method public declared-synchronized a(Lcom/iLoong/launcher/airpush/m;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "hello"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadPackage pacid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/airpush/a;->a(Lcom/iLoong/launcher/airpush/m;)V

    sget-object v0, Lcom/iLoong/launcher/airpush/a;->b:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/iLoong/launcher/airpush/u;

    invoke-direct {v1, p0, p1, v0}, Lcom/iLoong/launcher/airpush/u;-><init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/airpush/u;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/AirPush;->n()V

    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/AirPush;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iLoong/launcher/airpush/AirPush;->Q:J

    sub-long v2, v4, v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->a(J)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/iLoong/launcher/airpush/m;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "newbug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download finish +++:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/n;->e:Z

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/n;->j:Z

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/j;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/airpush/a;->a(Lcom/iLoong/launcher/airpush/m;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    sget-object v0, Lcom/iLoong/launcher/airpush/a;->b:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "feedback"

    const-string v2, "begin to parse stream"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->aa:Z

    new-instance v0, Lcom/iLoong/launcher/airpush/v;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/v;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/v;->start()V

    return-void
.end method

.method public declared-synchronized c(Lcom/iLoong/launcher/airpush/m;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "newbug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download finish +++:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/n;->e:Z

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/n;->j:Z

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/j;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/airpush/a;->a(Lcom/iLoong/launcher/airpush/m;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    sget-object v0, Lcom/iLoong/launcher/airpush/a;->b:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    iget-boolean v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->m:I

    iget v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->m:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/AirPush;->b()V

    iput-boolean v4, p0, Lcom/iLoong/launcher/airpush/AirPush;->l:Z

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->ac:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "trigger_airpush"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    if-eqz v1, :cond_1

    const-string v1, "newdialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resume size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-boolean v0, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iput-boolean v4, v0, Lcom/iLoong/launcher/airpush/k;->b:Z

    const-string v2, "newdialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "resume n:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/m;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d(Lcom/iLoong/launcher/airpush/m;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/airpush/AirPush;->h(Lcom/iLoong/launcher/airpush/m;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/iLoong/launcher/airpush/m;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    return-void
.end method

.method public declared-synchronized e(Lcom/iLoong/launcher/airpush/m;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->S:Lcom/iLoong/launcher/airpush/a;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/airpush/a;->a(Lcom/iLoong/launcher/airpush/m;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    sget-object v0, Lcom/iLoong/launcher/airpush/a;->b:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->L:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "feedback"

    const-string v2, "begin to parse stream"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    return-void
.end method

.method public f(Lcom/iLoong/launcher/airpush/m;)V
    .locals 5

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add list key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/iLoong/launcher/airpush/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/iLoong/launcher/airpush/m;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/iLoong/launcher/airpush/m;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p1, Lcom/iLoong/launcher/airpush/m;->z:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p1, Lcom/iLoong/launcher/airpush/m;->y:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/airpush/q;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/airpush/q;-><init>(Lcom/iLoong/launcher/airpush/AirPush;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ee

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ea

    new-instance v3, Lcom/iLoong/launcher/airpush/r;

    invoke-direct {v3, p0, p1}, Lcom/iLoong/launcher/airpush/r;-><init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00eb

    new-instance v3, Lcom/iLoong/launcher/airpush/s;

    invoke-direct {v3, p0, p1}, Lcom/iLoong/launcher/airpush/s;-><init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    iget-object v2, p1, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    return-void
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->b:I

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->ab:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->U:Lcom/iLoong/launcher/airpush/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->U:Lcom/iLoong/launcher/airpush/o;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->V:Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->V:Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->W:Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->W:Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->X:Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush;->X:Lcom/iLoong/launcher/airpush/AirPush$notificationClear;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public i()V
    .locals 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/AirPush;->a:Ljava/lang/String;

    const-string v0, "dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "list key: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/airpush/n;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/airpush/n;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/AirPush;->n()V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    move-object v1, v0

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/n;->b()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/airpush/n;->c(Z)V

    move v0, v2

    :goto_1
    sget-object v4, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_5

    :cond_3
    :goto_2
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    :cond_4
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/m;)V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "this dialog is already exist "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public j()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/j;->a()V

    :cond_0
    return-void
.end method
