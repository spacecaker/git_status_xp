.class public Lcom/iLoong/launcher/airpush/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/app/NotificationManager;

.field private static m:I

.field private static t:I

.field private static u:I


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Landroid/os/Handler;

.field private C:Ljava/lang/Runnable;

.field public b:Landroid/app/Notification;

.field public c:I

.field public d:Landroid/widget/RemoteViews;

.field public e:Z

.field public f:Z

.field public g:Landroid/graphics/Bitmap;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/Runnable;

.field private l:I

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/app/PendingIntent;

.field private r:Landroid/content/Intent;

.field private s:Landroid/content/Intent;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/iLoong/launcher/airpush/n;->m:I

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/airpush/n;->a:Landroid/app/NotificationManager;

    sput v1, Lcom/iLoong/launcher/airpush/n;->t:I

    sput v1, Lcom/iLoong/launcher/airpush/n;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    iput-object v2, p0, Lcom/iLoong/launcher/airpush/n;->q:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/iLoong/launcher/airpush/n;->r:Landroid/content/Intent;

    iput v1, p0, Lcom/iLoong/launcher/airpush/n;->c:I

    iput-object v2, p0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->v:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->w:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->x:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/airpush/n;->f:Z

    iput-object v2, p0, Lcom/iLoong/launcher/airpush/n;->g:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/iLoong/launcher/airpush/n;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->y:Z

    const-string v0, "com.cooee.airpush.action.package_info_dialog"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->z:Ljava/lang/String;

    const-string v0, "anotherType"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->A:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/n;->j:Z

    new-instance v0, Lcom/iLoong/launcher/airpush/g;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/g;-><init>(Lcom/iLoong/launcher/airpush/n;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/iLoong/launcher/airpush/h;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/h;-><init>(Lcom/iLoong/launcher/airpush/n;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->C:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/n;->g:Landroid/graphics/Bitmap;

    const v0, 0x7f020020

    iput v0, p0, Lcom/iLoong/launcher/airpush/n;->l:I

    iput-object p6, p0, Lcom/iLoong/launcher/airpush/n;->p:Ljava/lang/String;

    iput-object p5, p0, Lcom/iLoong/launcher/airpush/n;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/airpush/n;->n:J

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/airpush/n;->h:I

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/n;->i:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/iLoong/launcher/airpush/n;->a:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cooee.airpush.action.notification_clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->s:Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->s:Landroid/content/Intent;

    const-string v1, "key"

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/iLoong/launcher/airpush/n;->l:I

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/n;->o:Ljava/lang/String;

    iget-wide v3, p0, Lcom/iLoong/launcher/airpush/n;->n:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->r:Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->r:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->r:Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "airPush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructor is called count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/airpush/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iLoong/launcher/airpush/i;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/airpush/i;-><init>(Lcom/iLoong/launcher/airpush/n;)V

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/n;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/n;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/n;->q:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/airpush/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/n;->w:Z

    return v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/airpush/n;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->r:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/iLoong/launcher/airpush/n;->u:I

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/airpush/n;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->s:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/airpush/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/iLoong/launcher/airpush/n;->u:I

    return v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/airpush/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/airpush/n;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->q:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/airpush/n;->c:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/airpush/n;->x:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/n;->x:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/airpush/n;->v:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/airpush/n;->v:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    if-ne v0, v1, :cond_0

    :cond_2
    iput-boolean p1, p0, Lcom/iLoong/launcher/airpush/n;->w:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/n;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/airpush/n;->d()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "myNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/n;->i:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/n;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
