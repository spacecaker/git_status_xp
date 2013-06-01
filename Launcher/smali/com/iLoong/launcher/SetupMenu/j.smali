.class Lcom/iLoong/launcher/SetupMenu/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/j;->a:Lcom/iLoong/launcher/SetupMenu/i;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/j;->a:Lcom/iLoong/launcher/SetupMenu/i;

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/i;->a(Lcom/iLoong/launcher/SetupMenu/i;)Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/j;->a:Lcom/iLoong/launcher/SetupMenu/i;

    iget-object v2, v2, Lcom/iLoong/launcher/SetupMenu/i;->b:Lcom/iLoong/launcher/SetupMenu/t;

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/p;->b(Lcom/iLoong/launcher/SetupMenu/p;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/t;)V

    return-void
.end method
