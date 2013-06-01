.class Lcom/iLoong/launcher/desktop/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/y;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/y;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/r;->a:Lcom/iLoong/launcher/desktop/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/r;->a:Lcom/iLoong/launcher/desktop/y;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/y;->a(Lcom/iLoong/launcher/desktop/y;)V

    return-void
.end method
