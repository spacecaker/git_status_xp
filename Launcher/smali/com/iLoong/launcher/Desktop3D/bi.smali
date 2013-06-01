.class Lcom/iLoong/launcher/Desktop3D/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;

.field private final synthetic b:Lcom/iLoong/launcher/d/b;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bi;->a:Lcom/iLoong/launcher/Desktop3D/e;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bi;->b:Lcom/iLoong/launcher/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bi;->b:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->f()V

    return-void
.end method
