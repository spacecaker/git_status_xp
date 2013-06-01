.class Lcom/iLoong/launcher/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;II)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/t;->a:Lcom/iLoong/launcher/app/am;

    iput-object p2, p0, Lcom/iLoong/launcher/app/t;->b:Lcom/iLoong/launcher/app/x;

    iput p3, p0, Lcom/iLoong/launcher/app/t;->c:I

    iput p4, p0, Lcom/iLoong/launcher/app/t;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/app/t;->a:Lcom/iLoong/launcher/app/am;

    iget-object v1, p0, Lcom/iLoong/launcher/app/t;->b:Lcom/iLoong/launcher/app/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/app/t;->a:Lcom/iLoong/launcher/app/am;

    invoke-static {v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/am;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/app/t;->c:I

    iget v3, p0, Lcom/iLoong/launcher/app/t;->c:I

    iget v4, p0, Lcom/iLoong/launcher/app/t;->d:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/iLoong/launcher/app/x;->a(Ljava/util/ArrayList;II)V

    iget-object v1, p0, Lcom/iLoong/launcher/app/t;->a:Lcom/iLoong/launcher/app/am;

    invoke-static {v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/am;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/app/t;->c:I

    iget v3, p0, Lcom/iLoong/launcher/app/t;->c:I

    iget v4, p0, Lcom/iLoong/launcher/app/t;->d:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/iLoong/launcher/app/x;->b(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method
