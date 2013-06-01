.class Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;->click(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
