.class Lcom/iLoong/launcher/SetupMenu/Actions/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/af;->a:Lcom/iLoong/launcher/SetupMenu/Actions/b;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/af;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/af;->a:Lcom/iLoong/launcher/SetupMenu/Actions/b;

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/b;->a(Lcom/iLoong/launcher/SetupMenu/Actions/b;)Lcom/iLoong/launcher/SetupMenu/Actions/k;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/af;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V

    return-void
.end method
