.class public Lcom/iLoong/launcher/SetupMenu/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:Lcom/iLoong/launcher/SetupMenu/p;

.field private static final g:Ljava/lang/String;

.field private static k:I


# instance fields
.field f:Landroid/os/Handler;

.field private h:Ljava/util/Vector;

.field private i:Landroid/app/NotificationManager;

.field private j:Lcom/iLoong/launcher/b/g;

.field private l:Lcom/iLoong/launcher/SetupMenu/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->a:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->b:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->c:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->d:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->i:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->d()Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/LauncherModel;->a()Lcom/iLoong/launcher/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->j:Lcom/iLoong/launcher/b/g;

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/z;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/SetupMenu/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->l:Lcom/iLoong/launcher/SetupMenu/z;

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/f;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/SetupMenu/f;-><init>(Lcom/iLoong/launcher/SetupMenu/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->f:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/iLoong/launcher/SetupMenu/p;
    .locals 2

    const-class v1, Lcom/iLoong/launcher/SetupMenu/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/p;->e:Lcom/iLoong/launcher/SetupMenu/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/p;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/p;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/p;->e:Lcom/iLoong/launcher/SetupMenu/p;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/p;->e:Lcom/iLoong/launcher/SetupMenu/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/p;)Lcom/iLoong/launcher/b/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->j:Lcom/iLoong/launcher/b/g;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;I)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/p;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/p;->b(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V

    return-void
.end method

.method private a(Lcom/iLoong/launcher/SetupMenu/t;I)V
    .locals 5

    const v4, 0x7f08001e

    const v3, 0x7f08001d

    const/4 v2, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string v0, " 100%"

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->i:Landroid/app/NotificationManager;

    iget v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->i:Landroid/app/NotificationManager;

    iget v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->i:Landroid/app/NotificationManager;

    iget v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->i:Landroid/app/NotificationManager;

    iget v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/iLoong/launcher/SetupMenu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/iLoong/launcher/SetupMenu/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/t;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    sget v1, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    iput-object p2, v0, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    iput-object p5, v0, Lcom/iLoong/launcher/SetupMenu/t;->e:Ljava/lang/String;

    iput-object p6, v0, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    iput-object p7, v0, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    iput-object p4, v0, Lcom/iLoong/launcher/SetupMenu/t;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/p;->c(Lcom/iLoong/launcher/SetupMenu/t;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    const-string v1, "server"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/i;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/i;-><init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/k;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/k;-><init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/SetupMenu/p;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/p;->c(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 4

    const v3, 0x7f0c008c

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v0, "testDrag"

    const-string v1, " checkDownload xml null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V

    iget-boolean v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->g:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->d(Lcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->g:Z

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->a(ILcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :cond_2
    iget v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    if-ne v0, v2, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->a(ILcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->g:Z

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0c008d

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/iLoong/launcher/SetupMenu/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/t;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    sget v1, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    iput-object p2, v0, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    iput-object p4, v0, Lcom/iLoong/launcher/SetupMenu/t;->e:Ljava/lang/String;

    iput-object p5, v0, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    iput-object p6, v0, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/p;->c(Lcom/iLoong/launcher/SetupMenu/t;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/k;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/k;-><init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const-string v0, "config.ini"

    invoke-static {v0}, Lcom/iLoong/launcher/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "http://androidsub2.cooee.com.cn"

    :try_start_1
    const-string v2, "domain"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/openapi/LoginHandler.ashx"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 4

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const v0, 0x7f0c008c

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v3, "-1"

    :try_start_1
    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    if-nez v1, :cond_2

    :try_start_2
    const-string v1, "downurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->j:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-direct {p0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->d(Lcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v3

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_2
    if-ne v1, v2, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->a(ILcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0c008d

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private d(Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0c008e

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0c0073

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/q;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/p;->f:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/iLoong/launcher/SetupMenu/q;-><init>(Landroid/os/Handler;Lcom/iLoong/launcher/SetupMenu/t;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/q;->start()V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const-string v1, "http"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAPKid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v4, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAPKid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(ILcom/iLoong/launcher/SetupMenu/t;)V
    .locals 6

    iget-object v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    iget-object v1, p2, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    iget-object v5, p2, Lcom/iLoong/launcher/SetupMenu/t;->i:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/iLoong/launcher/SetupMenu/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "config.ini"

    invoke-static {v0}, Lcom/iLoong/launcher/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "f36"

    :try_start_1
    const-string v2, "app_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    const-string v2, "androidsubnewabcabc12312"

    :try_start_2
    const-string v5, "serialno"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    const-string v2, ""

    iget-object v5, p1, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/iLoong/launcher/SetupMenu/p;->d(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/iLoong/launcher/SetupMenu/p;->d:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "apkid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UIapkid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "serialno="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "responseToServe: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v3}, Lcom/iLoong/launcher/SetupMenu/s;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/aa;

    invoke-direct {v1, p0, p2}, Lcom/iLoong/launcher/SetupMenu/aa;-><init>(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V
    .locals 7

    const-string v4, "1"

    const-string v5, "0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/SetupMenu/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V
    .locals 8

    const-string v5, "1"

    const-string v6, "0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/iLoong/launcher/SetupMenu/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/t;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->a:I

    sget v1, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/iLoong/launcher/SetupMenu/p;->k:I

    iput v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->f:I

    iput-object p2, v0, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/iLoong/launcher/SetupMenu/t;->e:Ljava/lang/String;

    iput-object p5, v0, Lcom/iLoong/launcher/SetupMenu/t;->h:Ljava/lang/String;

    iput-object p4, v0, Lcom/iLoong/launcher/SetupMenu/t;->j:Ljava/lang/String;

    iput-object p6, v0, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/p;->c(Lcom/iLoong/launcher/SetupMenu/t;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/SetupMenu/p;->d(Lcom/iLoong/launcher/SetupMenu/t;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/iLoong/launcher/SetupMenu/z;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->l:Lcom/iLoong/launcher/SetupMenu/z;

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 3

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/t;)V

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->l:Lcom/iLoong/launcher/SetupMenu/d;

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/p;->l:Lcom/iLoong/launcher/SetupMenu/z;

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iLoong/launcher/SetupMenu/p;->g:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020010

    iget-object v4, p1, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030010

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f08001c

    iget-object v2, p1, Lcom/iLoong/launcher/SetupMenu/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f08001d

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/t;->m:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/SetupMenu/p;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "com.cooee.instAssist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.cooee.store"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "com.cooee.gameCenter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method
