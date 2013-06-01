.class Lcom/iLoong/launcher/Desktop3D/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bt;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bt;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/bt;->c:I

    iput p4, p0, Lcom/iLoong/launcher/Desktop3D/bt;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "bindItems:"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bt;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bt;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bt;->c:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bt;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/g;->c(Ljava/util/ArrayList;II)V

    return-void
.end method
