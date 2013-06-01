.class public Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Lcom/iLoong/launcher/HotSeat3D/f;

.field private e:Lcom/iLoong/launcher/HotSeat3D/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->c:I

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->d:Lcom/iLoong/launcher/HotSeat3D/f;

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->e:Lcom/iLoong/launcher/HotSeat3D/j;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->d:Lcom/iLoong/launcher/HotSeat3D/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/f;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/HotSeat3D/f;-><init>(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->d:Lcom/iLoong/launcher/HotSeat3D/f;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->e:Lcom/iLoong/launcher/HotSeat3D/j;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/iLoong/launcher/HotSeat3D/j;-><init>(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->e:Lcom/iLoong/launcher/HotSeat3D/j;

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type = 1 and read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/HotSeat3D/f;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->d:Lcom/iLoong/launcher/HotSeat3D/f;

    return-object v0
.end method

.method public b()Lcom/iLoong/launcher/HotSeat3D/j;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->e:Lcom/iLoong/launcher/HotSeat3D/j;

    return-object v0
.end method
