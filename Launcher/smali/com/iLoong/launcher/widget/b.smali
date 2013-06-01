.class Lcom/iLoong/launcher/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/widget/WidgetHostView;

.field private b:I


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/widget/WidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->a(Lcom/iLoong/launcher/widget/WidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/widget/b;->b:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/widget/b;->b:I

    iget-object v1, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->a(Lcom/iLoong/launcher/widget/WidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->b(Lcom/iLoong/launcher/widget/WidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/b;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->a(Lcom/iLoong/launcher/widget/WidgetHostView;Z)V

    :cond_0
    return-void
.end method
