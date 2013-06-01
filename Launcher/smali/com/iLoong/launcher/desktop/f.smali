.class Lcom/iLoong/launcher/desktop/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private final synthetic b:Lcom/iLoong/launcher/d/a;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/f;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput-object p2, p0, Lcom/iLoong/launcher/desktop/f;->b:Lcom/iLoong/launcher/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/f;->b:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/d;->a()V

    return-void
.end method
