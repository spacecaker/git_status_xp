.class Lcom/iLoong/launcher/desktop/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/at;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/at;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ai;->a:Lcom/iLoong/launcher/desktop/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ai;->a:Lcom/iLoong/launcher/desktop/at;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/at;->a(Lcom/iLoong/launcher/desktop/at;)V

    return-void
.end method
