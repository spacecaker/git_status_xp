.class Lcom/iLoong/launcher/desktop/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/a;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/w;->a:Lcom/iLoong/launcher/desktop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/w;->a:Lcom/iLoong/launcher/desktop/a;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/a;->b(Lcom/iLoong/launcher/desktop/a;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void
.end method
