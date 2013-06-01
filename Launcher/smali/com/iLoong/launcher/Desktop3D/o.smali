.class Lcom/iLoong/launcher/Desktop3D/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/o;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->v()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/o;->b:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->d(I)V

    return-void
.end method
