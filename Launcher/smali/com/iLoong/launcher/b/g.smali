.class public Lcom/iLoong/launcher/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Landroid/os/MessageQueue;

.field private c:Lcom/iLoong/launcher/b/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/b/g;->b:Landroid/os/MessageQueue;

    new-instance v0, Lcom/iLoong/launcher/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/b/f;-><init>(Lcom/iLoong/launcher/b/g;Lcom/iLoong/launcher/b/f;)V

    iput-object v0, p0, Lcom/iLoong/launcher/b/g;->c:Lcom/iLoong/launcher/b/f;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/b/g;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/iLoong/launcher/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->b:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/iLoong/launcher/b/g;->c:Lcom/iLoong/launcher/b/f;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->c:Lcom/iLoong/launcher/b/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/b/f;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v1, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/b/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/b/g;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/iLoong/launcher/b/d;

    invoke-direct {v0, p0, p1}, Lcom/iLoong/launcher/b/d;-><init>(Lcom/iLoong/launcher/b/g;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
