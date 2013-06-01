.class Lcom/iLoong/launcher/desktop/ay;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongApplication;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ay;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ay;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ay;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Z)V

    return-void
.end method
