.class Lcom/iLoong/launcher/desktop/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/an;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/an;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/j;->a:Lcom/iLoong/launcher/desktop/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/j;->a:Lcom/iLoong/launcher/desktop/an;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/an;->b(Lcom/iLoong/launcher/desktop/an;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/j;->a:Lcom/iLoong/launcher/desktop/an;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/an;->a(Lcom/iLoong/launcher/desktop/an;)V

    return-void
.end method
