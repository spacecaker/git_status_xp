.class Lcom/iLoong/launcher/app/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/u;->a:Lcom/iLoong/launcher/app/am;

    iput-object p2, p0, Lcom/iLoong/launcher/app/u;->b:Lcom/iLoong/launcher/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/app/u;->a:Lcom/iLoong/launcher/app/am;

    iget-object v1, p0, Lcom/iLoong/launcher/app/u;->b:Lcom/iLoong/launcher/app/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/app/u;->a:Lcom/iLoong/launcher/app/am;

    invoke-static {v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/am;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/app/x;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
