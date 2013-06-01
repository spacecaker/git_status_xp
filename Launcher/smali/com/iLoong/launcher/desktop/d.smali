.class Lcom/iLoong/launcher/desktop/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/d;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/d;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/d;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/d;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    return-void
.end method
