.class Lcom/iLoong/launcher/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/m;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/g;->a:Lcom/iLoong/launcher/app/m;

    iput-object p2, p0, Lcom/iLoong/launcher/app/g;->b:Lcom/iLoong/launcher/app/x;

    iput-object p3, p0, Lcom/iLoong/launcher/app/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/app/g;->b:Lcom/iLoong/launcher/app/x;

    iget-object v1, p0, Lcom/iLoong/launcher/app/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/app/x;->a(Ljava/lang/String;)V

    return-void
.end method
