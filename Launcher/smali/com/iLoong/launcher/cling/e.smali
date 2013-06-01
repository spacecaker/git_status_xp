.class Lcom/iLoong/launcher/cling/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/cling/i;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/cling/i;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/e;->a:Lcom/iLoong/launcher/cling/i;

    iput-object p2, p0, Lcom/iLoong/launcher/cling/e;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/iLoong/launcher/cling/e;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/e;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/e;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
