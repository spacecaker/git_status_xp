.class Lcom/iLoong/launcher/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/m;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/d;->a:Lcom/iLoong/launcher/app/m;

    iput-object p2, p0, Lcom/iLoong/launcher/app/d;->b:Lcom/iLoong/launcher/app/x;

    iput-object p3, p0, Lcom/iLoong/launcher/app/d;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/iLoong/launcher/app/d;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/app/d;->b:Lcom/iLoong/launcher/app/x;

    iget-object v1, p0, Lcom/iLoong/launcher/app/d;->a:Lcom/iLoong/launcher/app/m;

    invoke-static {v1}, Lcom/iLoong/launcher/app/m;->a(Lcom/iLoong/launcher/app/m;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/app/d;->b:Lcom/iLoong/launcher/app/x;

    iget-object v1, p0, Lcom/iLoong/launcher/app/d;->c:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/iLoong/launcher/app/d;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/iLoong/launcher/app/x;->a(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
