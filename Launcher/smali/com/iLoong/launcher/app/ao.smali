.class Lcom/iLoong/launcher/app/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/LauncherModel;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/ao;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/app/ao;->a:Lcom/iLoong/launcher/app/LauncherModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;Z)V

    new-instance v0, Lcom/iLoong/launcher/app/am;

    iget-object v1, p0, Lcom/iLoong/launcher/app/ao;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/iLoong/launcher/app/am;-><init>(Lcom/iLoong/launcher/app/LauncherModel;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/am;->c()V

    return-void
.end method
