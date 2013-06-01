.class Lcom/iLoong/launcher/Desktop3D/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bu;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bu;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bu;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bu;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->b(Ljava/util/HashMap;)V

    const-string v0, "bind"

    const-string v1, "bindFolders done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
