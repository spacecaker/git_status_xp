.class Lcom/iLoong/launcher/desktop/q;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/q;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/q;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method
