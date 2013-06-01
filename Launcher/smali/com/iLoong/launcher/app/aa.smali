.class public Lcom/iLoong/launcher/app/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/app/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/aa;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->k()V

    return-void
.end method
