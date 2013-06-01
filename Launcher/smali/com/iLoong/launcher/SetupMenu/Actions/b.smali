.class Lcom/iLoong/launcher/SetupMenu/Actions/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/iLoong/launcher/SetupMenu/Actions/k;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/b;->b:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/Actions/b;)Lcom/iLoong/launcher/SetupMenu/Actions/k;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/b;->b:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/b;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/s;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/b;->b:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a(Lcom/iLoong/launcher/SetupMenu/Actions/k;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/af;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/af;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
