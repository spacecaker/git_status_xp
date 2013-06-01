.class Lcom/iLoong/launcher/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/z;->a:Lcom/iLoong/launcher/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string v1, "Going to start binding widgets soon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
