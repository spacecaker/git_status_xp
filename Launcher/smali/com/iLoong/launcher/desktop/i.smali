.class Lcom/iLoong/launcher/desktop/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/i;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    return-void
.end method
